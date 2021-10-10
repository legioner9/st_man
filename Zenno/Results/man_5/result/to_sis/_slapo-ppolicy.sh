#!/bin/bash

#. "$HOME/.bashrc"

filename="$HOME/"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#---------------------------------------
:<<end_of_comments


 
 
 
 
 
Профиль:  Аноним  ( вход  |  регистрация ) 

 
 
 
 
 
 

 
 
 
 
  НОВОСТИ  ( + )
 
   КОНТЕНТ 
 
   WIKI 
 
    MAN'ы 
 
    ФОРУМ 
 
 Поиск  ( теги )
 
 
 

 

           
 
 

 
 
 
 
 
 
 
 [  новости  / +++  |  форум  |  wiki  |  теги 
|  
] 
 
 
 
 


 
 
 
 
 
 
 
 
 
 

 Интерактивная система просмотра системных руководств (man-ов) 
  
 
 
 

 
   Тема Набор Категория   
 

  
 Solaris man
 FreeBSD man
 Разные man
 Русские man
 Linux man
 POSIX man
 
 
	   All
	   1
	   2
	   3
	   4
	   5
	   6
	   7
	   8
	   9
 

 
 
  [ Cписок руководств  |  Печать ] 
 
 
 
 slapo-ppolicy (5) >>  slapo-ppolicy  (5)   ( Русские man: Форматы файлов ) 
   
 НАЗВАНИЕ 

slapo-ppolicy - наложение slapd политики паролей.
   
 ОБЗОР 

/usr/local/etc/openldap/slapd.conf
   
 ОПИСАНИЕ 

 

Наложение
 ppolicy 

представляет собой реализацию самых последних предложений IETF в области
политики паролей для LDAP. Когда наложение применяется к базе данных какого-либо
механизма манипуляции данными, оно перехватывает, декодирует и применяет
специфические элементы управления политики паролей ко всем аспектам использования
этой базы данных, изменениям, вносимым в поля паролей пользователя и т.п.

Наложение предоставляет различные механизмы управления паролями. Среди них
установка срока действия паролей, как минимального, так и максимального,
контроль повторного использования и дублирования паролей, блокировка учётной записи,
обязательное переназначение пароля, контроль допустимого содержимого паролей и даже
управление отсрочкой блокировки. С разными группами пользователей могут быть связаны
разные политики паролей, ограничений на количество создаваемых политик паролей не накладывается.

Имейте ввиду, что некоторые из этих политик не имеют силы, когда операция по работе с паролем
пользователя выполняется от имени идентификационной сущности
 rootdn ;

на все операции, выполняемые от имени любой другой идентификационной сущности,
могут накладываться ограничения, например, контроль доступа. Для этого наложения требуется,
чтобы в целевой базе данных было настроено rootdn.

Обратите внимание, что предложения IETF в области политики паролей для LDAP имеют смысл при работе
с парольным атрибутом, имеющим одно значение, а атрибут userPassword позволяет хранить несколько
значений. Реализация наложения ppolicy, несмотря на спецификацию атрибута userPassword,
позволяет задавать ему только одно значение.
 
   
 КОНФИГУРАЦИЯ 

Приводимые параметры
 slapd.conf 

применяются к наложению ppolicy. Они должны указываться после директивы
 overlay .

 
 ppolicy_default <policyDN> 

 
Указывает DN записи с объектным классом pwdPolicy, которая будет использоваться, когда для конкретной
пользовательской записи не задана специфичная политика. Когда для записи нет специфичной политики
и не задана политика по умолчанию, никакой политики применяться не будет.
 ppolicy_forward_updates 

 
Указывает, что изменения состояния политики (такие, как фиксация неудачных попыток подключения,
блокировки и т.п.), произошедшие в результате выполнения операций Bind на потребителе репликации,
должны быть перенаправлены на главный сервер вместо того, чтобы записываться напрямую в локальную
базу данных потребителя. Такая настройка применима только на потребителе репликации, для её работы
также требуется установка директивы
 updateref 

и настройка наложения
 chain .

 ppolicy_hash_cleartext 

 
Указывает, что пароли в виде открытого текста, присутствующие в запросах Add и Modify, перед сохранением
в базу данных должны быть захэшированы. Это нарушает информационную модель X.500/LDAP, но может быть
необходимо для работы с LDAP-клиентами, которые не используют для управления паролями расширенную операцию
модификации пароля Password Modify. Рекомендуется, чтобы при использовании этого параметра всем пользователям
каталога был запрещён доступ на выполнение сравнения, поиска и чтения парольных атрибутов.
 ppolicy_use_lockout 

 
При попытке выполнить подсоединение (Bind) от имени заблокированной записи,
клиент всегда будет получать ответ LDAP
 InvalidCredentials .

По умолчанию, когда с запросом Bind был предоставлен элемент управления Password Policy, в ответ
будет включён элемент управления Password Policy, в котором не будет задан специальный код ошибки.
Этот параметр изменяет элемент управления Password Policy ответа так, чтобы он включал код ошибки
 AccountLocked .

Имейте ввиду, что отправка кода ответа
 AccountLocked 

предоставляет злоумышленнику полезную информацию; в системах, для которых безопасность критически важна,
не следует включать этот параметр.
 
 
   
 ОБЪЕКТНЫЙ КЛАСС 

Наложение
 ppolicy 

зависит от объектного класса
 pwdPolicy .

Определение этого объектного класса:
 

 
(  1.3.6.1.4.1.42.2.27.8.2.1
     NAME 'pwdPolicy'
     AUXILIARY
     SUP top
     MUST ( pwdAttribute )
     MAY (
         pwdMinAge $ pwdMaxAge $ pwdInHistory $
         pwdCheckQuality $ pwdMinLength $
         pwdExpireWarning $ pwdGraceAuthnLimit $
         pwdLockout $ pwdLockoutDuration $
         pwdMaxFailure $ pwdFailureCountInterval $
         pwdMustChange $ pwdAllowUserChange $
         pwdSafeModify $ pwdMaxRecordedFailure ) )
 

 
В данной реализации также предоставляется дополнительный объектный класс
 pwdPolicyChecker ,

используемый для проверки качества паролей (смотрите ниже):
 

 
(  1.3.6.1.4.1.4754.2.99.1
     NAME 'pwdPolicyChecker'
     AUXILIARY
     SUP top
     MAY ( pwdCheckModule ) )
 


У каждой учётной записи, которая должна попадать под управление той или иной политики паролей,
должен быть атрибут
 pwdPolicySubentry ,

содержащий DN корректной записи с объектным классом
 pwdPolicy ,

либо она может просто использовать политику паролей, настроенную как политика по умолчанию.
Таким способом различные пользователи могут попадать под управление разных политик.
 
   
 АТРИБУТЫ ОБЪЕКТНОГО КЛАССА 


В этом разделе разъясняется значение и порядок применения атрибутов объектного класса
 pwdPolicy .


 
 pwdAttribute 


Значением этого атрибута является имя атрибута, к которому применяется политика паролей.
Например, политика паролей может применяться к атрибуту
 userPassword .


Примечание: в данной реализации единственным значением, приемлемым для
 pwdAttribute ,

является
  userPassword . 

 

 
(  1.3.6.1.4.1.42.2.27.8.1.1
    NAME 'pwdAttribute'
    EQUALITY objectIdentifierMatch
    SYNTAX 1.3.6.1.4.1.1466.115.121.1.38 )
 

 
 pwdMinAge 


Значением этого атрибута является количество секунд, которое должно пройти между разрешёнными
модификациями пароля. При отсутствии этого атрибута подразумевается, что минимальный срок
действия пароля составляет ноль секунд, то есть пароли могут модифицироваться когда угодно
и сколь угодно часто.
 

 
(  1.3.6.1.4.1.42.2.27.8.1.2
    NAME 'pwdMinAge'
    EQUALITY integerMatch
    SYNTAX 1.3.6.1.4.1.1466.115.121.1.27
    SINGLE-VALUE )
 

 
 pwdMaxAge 


Значением этого атрибута является количество секунд, после которого модифицированный пароль будет
считаться устаревшим. При отсутствии этого атрибута или когда его значением является 0,
подразумевается, что срок действия пароля не ограничен.
 

 
(  1.3.6.1.4.1.42.2.27.8.1.3
    NAME 'pwdMaxAge'
    EQUALITY integerMatch
    SYNTAX 1.3.6.1.4.1.1466.115.121.1.27
    SINGLE-VALUE )
 

 
 pwdInHistory 


Этот атрибут используется для указания максимального количества паролей,
которые будут храниться в качестве значений атрибута
 pwdHistory 

записи пользователя. При отсутствии атрибута
 pwdInHistory 

или когда его значением является ноль (0), подразумевается,
что бывшие в употреблении пароли не будут сохраняться в атрибуте
 pwdHistory ,

и их можно будет использовать повторно. Проверка истории паролей не осуществляется,
если операция модификации пароля пользователя выполняется от имени
 rootdn ,

пароль в этом случае также сохраняется в истории.
 

 
(  1.3.6.1.4.1.42.2.27.8.1.4
    NAME 'pwdInHistory'
    EQUALITY integerMatch
    SYNTAX 1.3.6.1.4.1.1466.115.121.1.27
    SINGLE-VALUE )
 

 
 pwdCheckQuality 


Этот атрибут указывает, будет ли при модификации или добавлении пароля осуществляться проверка его
синтаксиса, и то, каким образом она будет осуществляться. При отсутствии этого атрибута или когда
его значением является ноль (0), проверка синтаксиса выполняться не будет. Если его значением
является 1, сервер будет пытаться проверить синтаксис пароля, и, если не сможет выполнить проверку
(пароль захэширован на стороне клиента или по какой-либо другой причине), этот пароль будет принят.
Если значением атрибута является 2, сервер будет пытаться проверить синтаксис пароля, и,
если не сможет выполнить проверку, он отклонит пароль и вернёт ошибку.
 

 
(  1.3.6.1.4.1.42.2.27.8.1.5
    NAME 'pwdCheckQuality'
    EQUALITY integerMatch
    SYNTAX 1.3.6.1.4.1.1466.115.121.1.27
    SINGLE-VALUE )
 

 
 pwdMinLength 


Если проверка синтаксиса пароля включена (смотрите описание атрибута
 pwdCheckQuality 

выше), в значении этого атрибута указывается минимальное количество символов, из которых может
состоять пароль. При отсутствии этого атрибута, ограничений на минимальную длину пароля не накладывается.
Если серверу указано проверять длину пароля и он не может это сделать (пароль захэширован на стороне
клиента или по какой-либо другой причине), то, в зависимости от значения атрибута
 pwdCheckQuality ,

он либо примет пароль без проверки (если значение
 pwdCheckQuality 

- 0 или 1), либо отклонит его (если значение
 pwdCheckQuality 

- 2).
 

 
(  1.3.6.1.4.1.42.2.27.8.1.6
    NAME 'pwdMinLength'
    EQUALITY integerMatch
    SYNTAX 1.3.6.1.4.1.1466.115.121.1.27
    SINGLE-VALUE )
 

 
 pwdExpireWarning 


Значением этого атрибута является максимальное количество секунд, которое остаётся до момента
истечения срока действия пароля. Если до окончания срока действия пароля остаётся указанное
количество секунд или меньше, пользователю, проходящему аутентификацию при подсоединении к каталогу,
будет возвращено предупреждающее сообщение об истечении срока действия пароля. При отсутствии этого
атрибута или когда его значением является ноль (0), предупреждающие сообщения отправляться не будут.
 

 
(  1.3.6.1.4.1.42.2.27.8.1.7
    NAME 'pwdExpireWarning'
    EQUALITY integerMatch
    SYNTAX 1.3.6.1.4.1.1466.115.121.1.27
    SINGLE-VALUE )
 

 
 pwdGraceAuthnLimit 


Значением этого атрибута является количество раз, которое пользователь может произвести аутентификацию
с использованием пароля, срок действия которого истёк. При отсутствии этого атрибута или когда его
значением является ноль (0), пользователям с просроченными паролями будет запрещено производить
аутентификацию при подсоединении к каталогу.
 

 
(  1.3.6.1.4.1.42.2.27.8.1.8
    NAME 'pwdGraceAuthnLimit'
    EQUALITY integerMatch
    SYNTAX 1.3.6.1.4.1.1466.115.121.1.27
    SINGLE-VALUE )
 

 
 pwdLockout 


В этом атрибуте указывается действие, которое следует предпринять серверу, когда пользователь выполнил
определённое количество неудачных попыток аутентификации при подсоединении к каталогу. Когда
 pwdLockout 

включен (имеет значение "TRUE"), пользователю будет запрещено пытаться пройти аутентификацию после того,
как он произвёл заданное количество неудачных попыток подсоединения подряд. Максимальное количество
неудачных попыток подсоединения, которые разрешено выполнить подряд, указывается в атрибуте
 pwdMaxFailure .

При отсутствии атрибута
 pwdLockout 

или когда его значением является "FALSE", разрешено выполнять аутентификацию независимо от того,
сколько неудачных попыток подсоединения подряд уже было сделано.
 

 
(  1.3.6.1.4.1.42.2.27.8.1.9
    NAME 'pwdLockout'
    EQUALITY booleanMatch
    SYNTAX 1.3.6.1.4.1.1466.115.121.1.7
    SINGLE-VALUE )
 

 
 pwdLockoutDuration 


Значением этого атрибута является количество секунд, во время которых пароль нельзя будет
использовать для аутентификации пользователя при подсоединении к каталогу после того, как было
предпринято слишком много попыток неудачного подсоединения подряд (смотрите описания атрибутов
 pwdLockout 

и
 pwdMaxFailure ).

При отсутствии атрибута
 pwdLockoutDuration 

или когда его значением является ноль (0), пароль нельзя будет снова использовать для
аутентификации пользователя, пока блокировка не будет сброшена администратором.
 

 
(  1.3.6.1.4.1.42.2.27.8.1.10
    NAME 'pwdLockoutDuration'
    EQUALITY integerMatch
    SYNTAX 1.3.6.1.4.1.1466.115.121.1.27
    SINGLE-VALUE )
 

 
 pwdMaxFailure 


Значением этого атрибута является количество выполненных подряд неудачных попыток подсоединения
к каталогу, после которого пароль нельзя будет использовать для аутентификации пользователя.
При отсутствии атрибута
 pwdMaxFailure 

или когда его значением является ноль (0), пользователю будет разрешено продолжать попытки
аутентификации независимо от того, как много неудачных попыток подсоединения подряд уже было
предпринято от имени DN этого пользователя (смотрите также описание атрибутов
 pwdLockout 

и
 pwdLockoutDuration ).

 

 
(  1.3.6.1.4.1.42.2.27.8.1.11
    NAME 'pwdMaxFailure'
    EQUALITY integerMatch
    SYNTAX 1.3.6.1.4.1.1466.115.121.1.27
    SINGLE-VALUE )
 

 
 pwdMaxRecordedFailure 


Значением этого атрибута является максимальное количество неудачных попыток подсоединения, сведения
о которых будут храниться в записи пользователя. При отсутствии атрибута
 pwdMaxRecordedFailure 

или когда его значением является ноль (0), в качестве значения по умолчанию будет использоваться
значение атрибута
 pwdMaxFailure .

Если и оно равно нулю, значением по умолчанию будет 5.
 

 
(  1.3.6.1.4.1.42.2.27.8.1.16
    NAME 'pwdMaxRecordedFailure'
    EQUALITY integerMatch
    SYNTAX 1.3.6.1.4.1.1466.115.121.1.27
    SINGLE-VALUE )
 

 
 pwdFailureCountInterval 


Значением этого атрибута является количество секунд, после которого сведения о предыдущих
выполненных подряд неудачных попытках подсоединения удаляются из счётчика неудачных попыток, даже
если не было выполнено ни одной удачной попытки аутентификации. При отсутствии атрибута
 pwdFailureCountInterval 

или когда его значением является ноль (0), счётчик неудачных попыток будет сброшен только
после выполнения удачной аутентификации.
 

 
(  1.3.6.1.4.1.42.2.27.8.1.12
    NAME 'pwdFailureCountInterval'
    EQUALITY integerMatch
    SYNTAX 1.3.6.1.4.1.1466.115.121.1.27
    SINGLE-VALUE )
 

 
 pwdMustChange 


В этом атрибуте указывается, должны или нет пользователи менять свои пароли при первом подсоединении
к каталогу после того, как пароль был установлен или переназначен администратором. Если атрибут
 pwdMustChange 

имеет значение "TRUE", пользователи должны будут изменить свои пароли. При отсутствии атрибута
 pwdMustChange 

или когда его значением является "FALSE", от пользователей не требуется изменять свои пароли.
 

 
(  1.3.6.1.4.1.42.2.27.8.1.13
   NAME 'pwdMustChange'
   EQUALITY booleanMatch
   SYNTAX 1.3.6.1.4.1.1466.115.121.1.7
   SINGLE-VALUE )
 

 
 pwdAllowUserChange 


В этом атрибуте указывается, разрешено или нет пользователям менять свои собственные пароли.
При отсутствии атрибута
 pwdAllowUserChange 

или когда его значением является "TRUE", пользователям разрешено менять свои пароли. Если атрибут
установлен в "FALSE", пользователям не разрешено менять свои пароли.
 

Примечание: подразумевается, что когда атрибут
 pwdAllowUserChange 

установлен в "TRUE", пользователи всё-таки могут изменять пароли других пользователей (если это
позволяет контроль доступа). Данное ограничение распространяется только на собственный пароль
пользователя. Также следует отметить, что атрибут
 pwdAllowUserChange 

был определён в спецификации политики паролей в основном для того, чтобы обеспечить возможность
грубого контроля доступа к парольному атрибуту для систем, где не реализована воможность тонкого
контроля доступа. Поскольку в OpenLDAP имеется развитая подсистема контроля доступа, использовать
этот атрибут не рекомендуется, лучше применять ACL (смотрите
 slapd.access (5)).

 

 
(  1.3.6.1.4.1.42.2.27.8.1.14
    NAME 'pwdAllowUserChange'
    EQUALITY booleanMatch
    SYNTAX 1.3.6.1.4.1.1466.115.121.1.7
    SINGLE-VALUE )
 

 
 pwdSafeModify 


В этом атрибуте указывается, требуется или нет при смене пароля пользователем посылать существующий
пароль вместе с новым паролем. Если атрибут
 pwdSafeModify 

имеет значение "TRUE", существующий пароль должен быть отправлен вместе с новым паролем. При отсутствии
этого атрибута, или когда его значением является "FALSE", посылать существующий пароль не требуется.
 

 
(  1.3.6.1.4.1.42.2.27.8.1.15
    NAME 'pwdSafeModify'
    EQUALITY booleanMatch
    SYNTAX 1.3.6.1.4.1.1466.115.121.1.7
    SINGLE-VALUE )
 

 
 pwdCheckModule 


В этом атрибуте указывается имя определённого пользователем подгружаемого модуля, в котором должна
содержаться функция check_password(). Эта функция будет вызываться после успешного прохождения
всех встроенных проверок качества пароля, которые производятся, когда атрибут
 pwdCheckQuality 

установлен в 1 или 2. Вызов функции будет происходить в соответствии со следующим прототипом функции:
 
int
 check_password 

(char *pPasswd, char **ppErrStr, Entry *pEntry);
 

Параметр
 pPasswd 

содержит пароль пользователя в виде открытого текста, параметр
 ppErrStr 

содержит двойной указатель, позволяющий функции возвращать пригодное для чтения человеком сообщение
о любой обнаруженной в ходе проверки ошибке. Необязательный параметр
 pEntry ,

если он не NULL, содержит указатель на запись каталога, пароль которой проверяется. Если строка (строки)
 ppErrStr 

представляет собой NULL, то
 funcName 

не должна пытаться использовать её (их). Если вызываемая функция возвращает значение LDAP_SUCCESS,
значит пароль прошёл проверку, любое другое значение говорит о том, что пароль является неприемлемым.
В последнем случае сервер вернёт клиенту ошибку, кроме того, для возвращения пригодного для чтения
человеком текстового разъяснения этой ошибки может быть использована строка
 ppErrStr .

Область памяти под строку сообщения об ошибке должна быть выделена динамически,
поскольку slapd очистит её, вызвав free().
 

 
(  1.3.6.1.4.1.4754.1.99.1
    NAME 'pwdCheckModule'
    EQUALITY caseExactIA5Match
    SYNTAX 1.3.6.1.4.1.1466.115.121.1.26
    SINGLE-VALUE )
 


Примечание: определённый пользователем подгружаемый модуль, имя которого указано в атрибуте
 pwdCheckModule ,

должен находиться в том месте, где
 slapd 

ищет свои стандартные исполняемые модули (переменная PATH).

Примечание:
 pwdCheckModule 

- нестандартное расширение предложений по политикам паролей LDAP.
 
   
 ОПЕРАЦИОННЫЕ АТРИБУТЫ 


Операционные атрибуты, используемые модулем
 ppolicy ,

задаются в записи пользователя. Большинство из этих атрибутов не предназначено для изменения
напрямую пользователями; в них помещается информация, позволяющая отследить действия пользователя.
Описание этих атрибутов приводится здесь для того, чтобы администраторы и пользователи понимали,
как работает модуль
 ppolicy .

 

Обратите внимание, что в текущих предложениях IETF по политике паролей не определено, какое
поведение ожидается от этих операционных атрибутов в условиях репликации. В общем случае, попытки
аутентификации, выполняемые на подчинённом сервере, влияют только на копии таких операционных
атрибутов, находящиеся в базе данных этого подчинённого сервера, и не влияют на какие-либо
операционные атрибуты записи пользователя на главном сервере. Изменения операционных атрибутов,
происходящие вследствие попыток аутентификации на главном сервере, обычно будут реплицироваться на
подчинённые серверы (и перезаписывать при этом любые изменения, произошедшие на подчинённых
серверах). Такое поведение не гарантируется и подлежит изменению при появлении формальной спецификации.
 
 userPassword 


Атрибут
 userPassword ,

строго говоря, не является составной частью модуля
 ppolicy .

Однако этот атрибут отслеживается и контролируется этим модулем. Определение этого атрибута можно
найти в стандартном наборе схемы данных OpenLDAP.
 
 pwdPolicySubentry 


Этот атрибут указывает на запись с объектным классом
 pwdPolicy ,

которая будет определять политику паролей для данного конкретного пользователя каталога. Если атрибут
 pwdPolicySubentry 

существует, его значением должно быть DN корректной записи с объектным классом
 pwdPolicy .

Если этого атрибута нет в записи пользователя, модуль
 ppolicy 

будет применять для пользователя, ассоциированного с DN аутентификации, политику паролей по умолчанию.
Если политики паролей по умолчанию не существует, никаких правил политики паролей применяться не будет.
 

 
(  1.3.6.1.4.1.42.2.27.8.1.23
    NAME 'pwdPolicySubentry'
    DESC 'Запись pwdPolicy, применяемая для этого
        объекта'
    EQUALITY distinguishedNameMatch
    SYNTAX 1.3.6.1.4.1.1466.115.121.1.12
    SINGLE-VALUE
    NO-USER-MODIFICATION
    USAGE directoryOperation)
 

 
 pwdChangedTime 


В этом атрибуте указывается время последнего изменения пароля данной записи. Это значение
используется политикой устаревания пароля для определения того, что время жизни пароля превысило
допустимо возможное и этот пароль нельзя использовать для аутентификации. Если атрибута
 pwdChangedTime 

нет в записи пользователя, пароль этого пользователя не будет устаревать.
 

 
(  1.3.6.1.4.1.42.2.27.8.1.16
    NAME 'pwdChangedTime'
    DESC 'Время последнего изменения пароля'
    SYNTAX 1.3.6.1.4.1.1466.115.121.1.24
    EQUALITY generalizedTimeMatch
    ORDERING generalizedTimeOrderingMatch
    SINGLE-VALUE
    NO-USER-MODIFICATION
    USAGE directoryOperation)
 

 
 pwdAccountLockedTime 


Значением этого атрибута является время, когда учётная запись пользователя была заблокирована.
Если учётная запись была заблокирована, её пароль нельзя больше использовать для аутентификации
пользователя при подсоединении к каталогу. Если значением атрибута
 pwdAccountLockedTime 

является 000001010000Z, учётная запись пользователя считается заблокированной на неопределённое
время, разблокировать её может только администратор. Имейте ввиду, что блокировка учётных записей
работает, только если атрибут политики паролей
 pwdLockout 

установлен в "TRUE".
 

 
(  1.3.6.1.4.1.42.2.27.8.1.17
    NAME 'pwdAccountLockedTime'
    DESC 'Время блокировки учётной записи пользователя'
    SYNTAX 1.3.6.1.4.1.1466.115.121.1.24
    EQUALITY generalizedTimeMatch
    ORDERING generalizedTimeOrderingMatch
    SINGLE-VALUE
    NO-USER-MODIFICATION
    USAGE directoryOperation)
 

 
 pwdFailureTime 


Значениями этого атрибута являются отметки времени каждой последовательной неудачной попытки
аутентификации, произведённой от имени DN этой записи каталога (то есть, учётной записи). Если
количество таких отметок времени превышает допустимое количество попыток неудачной аутентификации
(смотрите описание атрибута
 pwdMaxFailure 

политики паролей) и атрибут
 pwdLockout 

политики паролей установлен в "TRUE", учётная запись может быть заблокирована (смотрите описание атрибута
 pwdLockout 

политики паролей). Если количество отметок времени превышает разрешённое в атрибутах
 pwdMaxFailure 

или
 pwdMaxRecordedFailure ,

избыточные отметки могут быть удалены. При совершении успешной аутентификации от имени DN этой
записи каталога (то есть этой учётной записи), атрибуты
 pwdFailureTime 

будут удалены из записи.
 

 
(  1.3.6.1.4.1.42.2.27.8.1.19
    NAME 'pwdFailureTime'
    DESC 'Отметки времени последних последовательных
        неудачных попыток аутентификации'
    SYNTAX 1.3.6.1.4.1.1466.115.121.1.24
    EQUALITY generalizedTimeMatch
    ORDERING generalizedTimeOrderingMatch
    NO-USER-MODIFICATION
    USAGE directoryOperation )
 

 
 pwdHistory 


В этом атрибуте сохраняется история ранее использованных паролей этого DN (то есть этой учётной записи).
Значения этого атрибута представляют собой строку в следующем формате:
 
 
 
pwdHistory=
 
time "#" syntaxOID "#" length "#" data
 

 
time=
 
время в формате с синтаксисом GeneralizedTime, как определено в разделе 3.3.13 RFC4517.
 

 

syntaxOID = numericoid
 
строковое представление точечно-цифрового OID, который определяет синтаксис, используемый для хранения
пароля. Формат numericoid описан в разделе 1.4 RFC4512.
 

 
length = NumericString
 
Количество октетов в поле data. Синтаксис NumericString описан в разделе 3.3.23 RFC4517.
 

 
data =
 
Двоичное представление пароля в формате, указанном в поле syntaxOID.
 

 
 

 
Такой формат позволяет серверу хранить и пересылать историю ранее использованных паролей.
Для того, чтобы можно было корректно проводить сравнение со значениями этого атрибута,
время в поле time указывается в формате GMT.
 

 
(  1.3.6.1.4.1.42.2.27.8.1.20
    NAME 'pwdHistory'
    DESC 'История паролей пользователя'
    SYNTAX 1.3.6.1.4.1.1466.115.121.1.40
    EQUALITY octetStringMatch
    NO-USER-MODIFICATION
    USAGE directoryOperation)
 

 
 pwdGraceUseTime 


Значения этого атрибута составляют список отметок времени выполнения подсоединения к каталогу после
того, как срок действия пароля записи истёк. Эти подсоединения после истечения срока действия пароля
носят название " отложенная блокировка ". Если количество дополнительных подсоединений превысило
допустимое количество таких подсоединений (смотрите описание атрибута
 pwdGraceLoginLimit 

политики паролей), то учётную запись с этим DN больше нельзя будет использовать для аутентификации
до тех пор, пока администратор не поменяет значение атрибута
 userPassword 

этой записи каталога.
 

 
(  1.3.6.1.4.1.42.2.27.8.1.21
    NAME 'pwdGraceUseTime'
    DESC 'Отметки времени выполнения подсоеденений
        после истечения срока действия пароля'
    SYNTAX 1.3.6.1.4.1.1466.115.121.1.24
    EQUALITY generalizedTimeMatch
    NO-USER-MODIFICATION
    USAGE directoryOperation)
 

 
 pwdReset 


Этот атрибут указывает на то, была или нет блокировка пароля пользователя сброшена администратором
и должен ли пользователь поменять его при совершении первой аутентификации для подсоединения
к каталогу от имени этого DN. Если атрибут
 pwdReset 

имеет значение "TRUE", то блокировка пароля была сброшена и пользователь должен сменить пароль при
первой аутентификации. При отсутствии этого атрибута, либо если он установлен в "FALSE",
от пользователя не требуется менять свой пароль после сброса блокировки администратором.
 

 
(  1.3.6.1.4.1.42.2.27.8.1.22
    NAME 'pwdReset'
    DESC 'Индикатор того, что блокировка пароля
        была сброшена'
    EQUALITY booleanMatch
    SYNTAX 1.3.6.1.4.1.1466.115.121.1.7
    SINGLE-VALUE
    USAGE directoryOperation)
 

 
   
 ПРИМЕРЫ 

 

 
 database bdb
suffix dc=example,dc=com
...
overlay ppolicy
ppolicy_default "cn=Standard,ou=Policies,dc=example,dc=com"
 

 

 
   
 СМОТРИТЕ ТАКЖЕ 

 ldap (3),

 slapd.conf (5),

 slapd-config (5),

 slapd-chain (5).

 

"Руководство администратора OpenLDAP" ( http://www.OpenLDAP.org/doc/admin/,   http://pro-ldap.ru/tr/admin24/). 
 

Предложения IETF по политике паролей LDAP документированы в черновом документе
"draft-behera-ldap-password-policy-09.txt", авторы P. Behera, L. Poitou и J. Sermersheim.
 
   
 ВОЗМОЖНЫЕ НЕТОЧНОСТИ 

Спецификация политики паролей LDAP пока не является утверждённым стандартом и всё ещё находится
в развитии. Пока работы над спецификацией не будут завершены, код данного модуля может меняться.
 
   
 ПРИЗНАНИЕ ЗАСЛУГ 


Данный модуль написан в 2004 году. Автор - Howard Chu из Symas Corporation,
значительный вклад внесли также Neil Dunbar и Kartik Subbarao из Hewlett-Packard.

Материалы данной man-страницы во многом беззастенчиво позаимствованы из спецификации, на которой
основан модуль политики паролей. Это предложения IETF по политике паролей LDAP, написанные в 2005
году P. Behera, L. Poitou и J. Sermersheim, и документированные в черновом документе
"draft-behera-ldap-password-policy-09.txt".



 Программное обеспечение OpenLDAP 

разработано и поддерживается проектом OpenLDAP < http://www.openldap.org/ >.
 Программное обеспечение OpenLDAP 

является производным от релиза 3.3 LDAP Мичиганского Университета.

 

 
   Index 
 
 НАЗВАНИЕ 
 ОБЗОР 
 ОПИСАНИЕ 
 КОНФИГУРАЦИЯ 
 ОБЪЕКТНЫЙ КЛАСС 
 АТРИБУТЫ ОБЪЕКТНОГО КЛАССА 
 ОПЕРАЦИОННЫЕ АТРИБУТЫ 
 ПРИМЕРЫ 
 СМОТРИТЕ ТАКЖЕ 
 ВОЗМОЖНЫЕ НЕТОЧНОСТИ 
 ПРИЗНАНИЕ ЗАСЛУГ 
 
 
 
 
 
 Поиск по тексту MAN-ов:  
 
 
 
 
 
 
 
 
 
 
 


 
 


 
 
 
 
 
Спонсоры:
 
 
 
 
 
 
 
 
Хостинг:
 

 

 


 
 
 
 Закладки на сайте 
 Проследить за страницей 
 
 
Created 1996-2021 by  Maxim Chirkov 
 Добавить ,  Поддержать ,  Вебмастеру 
 
 
 
 


 
 
 






end_of_comments
#---------------------------------------

unset filename