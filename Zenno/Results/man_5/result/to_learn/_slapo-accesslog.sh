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
 
 
 
 slapo-accesslog (5) >>  slapo-accesslog  (5)   ( Русские man: Форматы файлов ) 


   
 НАЗВАНИЕ 

slapo-accesslog - наложение slapd ведения журнала доступа.
   
 ОБЗОР 

/usr/local/etc/openldap/slapd.conf
   
 ОПИСАНИЕ 

Наложение ведения журнала доступа может быть использовано для сбора информации о всех обращениях
к заданной базе данных в другой базе данных. Это позволяет изучать действия, производимые с
заданной базой данных, с помощью обычных LDAP-запросов, вместо просмотра простых локальных
текстовых log-файлов. С помощью параметров конфигурации можно настроить подмножества типов операций
для помещения в журнал, а также автоматическое удаление старых записей из базы данных журнала.
Записи журнала строятся на объектных классах и атрибутах из набора схемы данных audit (смотрите ниже),
чтобы их можно было просматривать в читабельном варианте как в виде LDIF, так и в неоформленном виде.
   
 КОНФИГУРАЦИЯ 

Приводимые параметры
 slapd.conf 

применяются к наложению ведения журнала доступа. Они должны указываться после директивы
 overlay .

 
 logdb <suffix> 

 
Указывает суффикс базы данных, которая будет использоваться для хранения записей журнала. Определение
указываемой базы данных должно также присутствовать в конфигурации. Настройки контроля доступа базы
данных журнала должны предотвращать общий доступ к ней. Корневую запись (суффикс) базы данных
журнала наложение создаст автоматически. Записи журнала будут создаваться как непосредственные
дочерние записи по отношению к корневой записи.
 logops <operations> 

 
Указывает, сведения об операциях какого типа заносить в журнал. Корректные типы операций: abandon,
add, bind, compare, delete, extended, modify, modrdn, search и unbind.
Также имеются псевдонимы для общепринятых наборов операций:
 
 
 writes 

 
add, delete, modify, modrdn
 reads 

 
compare, search
 session 

 
abandon, bind, unbind
 all 

 
все операции
 
 

 logbase <operations> <baseDN> 

 
Указывает набор операций, сведения о которых будут помещаться в журнал, если эти операции выполняются
над записями из определённого поддерева базы данных. Типы операций те же, что и для директивы
 logops ,

в качестве разделителя для них используется символ вертикальной черты '|'.
 logold <filter> 

 
Указывает фильтр для поиска совпадений среди записей, над которыми выполняются операции
Delete или Modify. Если запись соответствует фильтру, старое содержимое записи помещается
в журнал вместе с текущим запросом.
 logoldattr <attr> ... 

 
Указывает список атрибутов, старое содержимое которых будет всегда помещаться в журнал при запросах
Modify и ModRDN. Обычно в журнал помещается только содержимое тех атрибутов, которые были реально
изменены; по умолчанию для запросов ModRDN старые атрибуты в журнал не помещаются.
 logpurge <age> <interval> 

 
Указывает максимальный возраст записей журнала, которые будут храниться в базе данных, а также
как часто будет выполняться сканирование базы данных для поиска устаревших записей. Оба аргумента
 age 

и
 interval 

указываются как период времени в днях, часах, минутах и секундах. Формат промежутка времени:
[ddd+]hh:mm[:ss], где часы и минуты являются обязательными полями, а дни и секунды - опциональными.
Все числовые поля, за  исключением поля дней, которое может состоять из произвольного количества цифр,
но не больше пяти, должны состоять ровно из двух цифр. Например,
 
 

 
 logpurge 2+00:00 1+00:00 
 
 


говорит о том, что база данных журнала должна будет сканироваться в поисках устаревших записей
каждый день, при этом записи старше двух дней будут удалены. Если механизм манипуляции данными
базы данных журнала поддерживает упорядоченное индексирование атрибутов с синтаксисом generalizedTime,
определение индекса eq для атрибута
 reqStart 

существенно повысит производительность операции удаления.
 

 logsuccess TRUE | FALSE 

 
Если этот параметр установлен в TRUE, то записи журнала будут генерироваться только для успешно
выполненных запросов, то есть запросов, в ответ на которые был возвращён результирующий код 0
(LDAP_SUCCESS). Если этот параметр установлен в FALSE, то записи журнала будут генерироваться
для всех запросов, независимо от того, были ли они выполнены успешно, или нет.
Значение по умолчанию - FALSE.
 
 
   
 ПРИМЕРЫ 

 

         database bdb
        suffix dc=example,dc=com
        ...
        overlay accesslog
        logdb cn=log
        logops writes reads
        logbase search|compare ou=testing,dc=example,dc=com
        logold (objectclass=person)

        database bdb
        suffix cn=log
        ...
        index reqStart eq
        access to *
          by dn.base="cn=admin,dc=example,dc=com" read
 

 
   
 НАБОР СХЕМЫ ДАННЫХ 

Наложение
 accesslog 

использует описанный далее набор схемы данных "audit", разработанный специально для баз данных
 accesslog ,

и не предназначенный для использования где-либо ещё. Также следует отметить, что работа над этим набором схемы
 ещё не окончена ,

так что в него ещё могут быть внесены изменения. Данный набор схемы загружается автоматически наложением
 accesslog .

 
Набор включает несколько объектных классов и связанных с ними типов атрибутов, описанных ниже.
 
Основной объектный класс -
 auditObject ,

от которого наследуются два дополнительных объектных класса
 auditReadObject 

и
 auditWriteObject .

От этих классов далее наследуются объектные классы для каждого типа операций LDAP. Такая иерархия
объектных классов разработана для обеспечения гибкого и эффективного поиска по журналу как
по конкретным типам операций, так и по более обобщённой классификации. Определение объектного класса
 auditObject :

 

 
(  1.3.6.1.4.1.4203.666.11.5.2.1
     NAME 'auditObject'
     DESC 'OpenLDAP request auditing'
     SUP top STRUCTURAL
     MUST ( reqStart $ reqType $ reqSession )
     MAY ( reqDN $ reqAuthzID $ reqControls $ reqRespControls $
         reqEnd $ reqResult $ reqMessage $ reqReferral ) )
 


Имейте ввиду, что все OID, используемые в наборе схемы данных журналирования, в настоящий момент
принадлежат ветке OpenLDAP Experimental. Ожидается, что в будущем они будут перемещены в ветку Standard.
 
Обзор типов атрибутов:
 reqStart 

и
 reqEnd 

предназначены для хранения времени начала и конца операции, соответственно.
Они используют синтаксис generalizedTime. Атрибут
 reqStart 

также используется для формирования RDN каждой записи журнала.
 
Атрибут
 reqType 

- это простая строка, содержащая тип операции, сведения о которой сохраняются в журнал, например
 add ,

 delete ,

 search 

и т.д. Для расширенных операций тип также включает OID расширенной операции, например
 extended(1.1.1.1) .

 
Атрибут
 reqSession 

- это идентификатор, форма которого зависит от реализации, общий для всех операций в рамках одной
сессии LDAP. В настоящее время это внутренний идентификатор соединения slapd,
сохраняющийся в виде десятичного числа.
 
Атрибут
 reqDN 

- это уникальное имя distinguishedName целевой записи операции. Например, для запроса Bind это
Bind DN, для запроса Add это DN добавляемой записи, для запроса Search это DN базы поиска.
 
Атрибут
 reqAuthzID 

- это уникальное имя distinguishedName пользователя, выполняющего операцию. Обычно это имя, которое
связывается с сессией в её начале посредством выполнения запроса Bind (если он выполнялся),
однако оно может быть изменено при различных условиях.
 
В атрибутах
 reqControls 

и
 reqRespControls 

содержатся любые элементы управления, посылаемые клиентом при запросе и возвращаемые сервером в
ответе, соответственно. Значения атрибутов представляют собой неинтерпретируемую строку октетов.
 
Атрибут
 reqResult 

- это цифровой результирующий код LDAP для выполненной операции, который отражает либо её успешное
завершение, либо код конкретной ошибки LDAP. Код ошибки может сопровождаться текстовым сообщением,
которое помещается в атрибут
 reqMessage .

 
Атрибут
 reqReferral 

содержит любые отсылки, которые были возвращены с результатом запроса.
 
В объектных классах, специфичных для операций, определяются дополнительные атрибуты,
в которых помещаются параметры, связанные с конкретной операцией:
 
 

 
(  1.3.6.1.4.1.4203.666.11.5.2.4
     NAME 'auditAbandon'
     DESC 'Abandon operation'
     SUP auditObject STRUCTURAL
     MUST reqId )
 


Для операции
 Abandon 

атрибут
 reqId 

содержит идентификатор сообщения того запроса, от выполнения которого требовалось отказаться.
 
 

 
(  1.3.6.1.4.1.4203.666.11.5.2.5
     NAME 'auditAdd'
     DESC 'Add operation'
     SUP auditWriteObject STRUCTURAL
     MUST reqMod )
 


Объектный класс операции
 Add 

наследуется от класса
 auditWriteObject .

Классы операций Add и Modify очень похожи. В атрибут
 reqMod 

помещаются все атрибуты оригинальной добавляемой записи (в случае операции Modify - все атрибуты,
модификация которых была произведена). Формат значений атрибута
 reqMod :

 

 
 attribute:<+|-|=|#> [ value] 
 
 



Здесь знак '+' указывает на добавление значения (add), знак '-' - на удаление (delete),
знак '=' - на замену (replace), а знак '#' - на инкремент (increment).
Для операции Add все значения в атрибуте reqMod будут иметь знак '+'.

 

 
(  1.3.6.1.4.1.4203.666.11.5.2.6
     NAME 'auditBind'
     DESC 'Bind operation'
     SUP auditObject STRUCTURAL
     MUST ( reqVersion $ reqMethod ) )
 


Объектный класс операции
 Bind 

включает атрибут
 reqVersion ,

в котором содержится версия протокола LDAP, указанная в запросе Bind, а также атрибут
 reqMethod ,

в котором содержится метод Bind, используемый в запросе Bind. В качестве метода может быть строка
 SIMPLE 

для подсоединений LDAP Simple Bind, либо
 SASL(<mech>) 

для подсоединений SASL Bind. Обратите внимание, что если данное наложение настроено не на
глобальном уровне, в журнал попадут только подсоединения Simple Bind, в которых используются
DN из текущей базы данных.
 
 

 
(  1.3.6.1.4.1.4203.666.11.5.2.7
     NAME 'auditCompare'
     DESC 'Compare operation'
     SUP auditObject STRUCTURAL
     MUST reqAssertion )
 


Для операции
 Compare 

атрибут
 reqAssertion 

содержит утверждение значения атрибута (Attribute Value Assertion), используемое в запросе Compare.
 
 

 
(  1.3.6.1.4.1.4203.666.11.5.2.8
     NAME 'auditDelete'
     DESC 'Delete operation'
     SUP auditWriteObject STRUCTURAL
     MAY reqOld )
 


Для операции
 Delete 

не требуется дополнительных параметров. Однако, опциональный атрибут
 reqOld 

может использоваться для сохранения содержимого записи перед её удалением. Формат значений атрибута
 reqOld :

 

 
 attribute: value 
 
 


Атрибут
 reqOld 

присутствует, только если удаляемая запись соответствует фильтру в параметре конфигурации
 logold .

 
 

 
(  1.3.6.1.4.1.4203.666.11.5.2.9
     NAME 'auditModify'
     DESC 'Modify operation'
     SUP auditWriteObject STRUCTURAL
     MAY reqOld MUST reqMod )
 


Запись операции
 Modify 

содержит описание произведённых модификаций в атрибуте
 reqMod ,

формат значений которого уже описан ранее в пояснениях к объектному классу операции Add. Опционально
в этой записи может сохраняться предыдущее содержимое модифицированных атрибутов в атрибуте
 reqOld ,

формат значений которого уже описан выше в пояснениях к объектному классу операции Delete. Атрибут
 reqOld 

присутствует, только если модифицируемая запись соответствует фильтру в параметре конфигурации
 logold .

 
 

 
(  1.3.6.1.4.1.4203.666.11.5.2.10
     NAME 'auditModRDN'
     DESC 'ModRDN operation'
     SUP auditWriteObject STRUCTURAL
     MUST ( reqNewRDN $ reqDeleteOldRDN )
     MAY ( reqNewSuperior $ reqOld ) )
 


Объектный класс операции
 ModRDN 

использует атрибут
 reqNewRDN 

для сохранения нового RDN запроса. Атрибут
 reqDeleteOldRDN 

- это логическое значение (синтаксис Boolean); если оно установлено в
 TRUE ,

старое RDN было удалено из записи, а если в
 FALSE ,

старое RDN было сохранено. В атрибуте
 reqNewSuperior 

сохраняется DN новой родительской записи, если таковая была указана в запросе. Атрибут
 reqOld 

присутствует, только если модифицируемая запись соответствует фильтру в параметре конфигурации
 logold 

и содержит атрибуты из списка в параметре конфигурации
 logoldattr .

 
 

 
(  1.3.6.1.4.1.4203.666.11.5.2.11
     NAME 'auditSearch'
     DESC 'Search operation'
     SUP auditReadObject STRUCTURAL
     MUST ( reqScope $ reqDerefAliases $ reqAttrsOnly )
     MAY ( reqFilter $ reqAttr $ reqEntries $ reqSizeLimit $
           reqTimeLimit ) )
 


Объектный класс операции
 Search 

использует атрибут
 reqScope 

для хранения диапазона оригинального поискового запроса и использует значения,
определённые для формата LDAP URL, например,
 base ,

 one ,

 sub 

или
 subord .

Атрибут
 reqDerefAliases 

принимает одно из значений
 never ,

 finding ,

 searching 

или
 always ,

означающих, каким образом во время поиска будут обрабатываться псевдонимы. Атрибут
 reqAttrsOnly 

- это логическое значение (синтаксис Boolean); если оно установлено в
 TRUE ,

запрашивались только имена атрибутов, а если в
 FALSE ,

атрибуты запрашивались вместе с их значениями. Атрибут
 reqFilter 

содержит фильтр, использовавшийся в поисковом запросе. В атрибуте
 reqAttr 

перечисляются запрашиваемые атрибуты, если таковые указывались при запросе. Атрибут
 reqEntries 

- целое число, означающее количество записей, которые были возвращены на данный поисковый запрос.
Атрибуты
 reqSizeLimit 

и
 reqTimeLimit 

показывают, какие ограничения были запрошены клиентом для данной операции поиска.
 
 

 
(  1.3.6.1.4.1.4203.666.11.5.2.12
     NAME 'auditExtended'
     DESC 'Extended operation'
     SUP auditObject STRUCTURAL
     MAY reqData )
 


Объектный класс операции
 Extended 

представляет расширенную операцию LDAP. Как было сказано выше, в атрибут
 reqType 

родительского класса включается актуальный OID операции. Если с запросом предоставлялась какая-либо
дополнительная информация, она будет помещена в атрибут
 reqData 

как неинтерпретируемая строка октетов.
 
   
 ПРИМЕЧАНИЯ 

Журнал доступа, реализуемый данным наложением, может использоваться для различных других задач,
например, в качестве журнала изменений (ChangeLog) для механизма репликации,
а также для ведения журналов в целях безопасности или аудита.
 
   
 ФАЙЛЫ 

 
 /usr/local/etc/openldap/slapd.conf 
конфигурационный файл slapd по умолчанию.
 
   
 СМОТРИТЕ ТАКЖЕ 

 slapd.conf (5),

 slapd-config (5).

 
   
 ПРИЗНАНИЕ ЗАСЛУГ 


Данный модуль написан в 2005 году. Автор - Howard Chu из Symas Corporation.
 
 

 
   Index 
 
 НАЗВАНИЕ 
 ОБЗОР 
 ОПИСАНИЕ 
 КОНФИГУРАЦИЯ 
 ПРИМЕРЫ 
 НАБОР СХЕМЫ ДАННЫХ 
 ПРИМЕЧАНИЯ 
 ФАЙЛЫ 
 СМОТРИТЕ ТАКЖЕ 
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