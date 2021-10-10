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
 
 
 
 slapo-rwm (5) >>  slapo-rwm  (5)   ( Русские man: Форматы файлов ) 


   
 НАЗВАНИЕ 

slapo-rwm - наложение slapd перезаписи/отображения.
   
 ОБЗОР 

/usr/local/etc/openldap/slapd.conf
   
 ОПИСАНИЕ 

Наложение
 slapd (8)

 rwm 

выполняет перезапись DN и данных, а также отображение объектных классов и типов атрибутов.
В основном оно предназначено для обеспечения виртуального представления существующих данных,
как удалённых, когда оно работает совместно с механизмом прокси, описанным в
 slapd-ldap (5),

так и локальных, когда оно работает совместно с механизмом трансляции, описанным в
 slapd-relay (5).

 

Это наложение является экспериментальным.
   
 ОТОБРАЖЕНИЕ 

Важной особенностью наложения
 rwm 

является функция отображения объектных классов и типов атрибутов из локального набора (или его
подмножества) во внешний набор и обратно. Такое отображение выполняется средствами директивы
 rwm-map .

 
 rwm-map {attribute | objectclass} [<local name> | *] {<foreign name> | *} 

 
Отображает типы атрибутов и объектные классы внешнего сервера в различные значения на локальном
сервере slapd. Это может потребоваться, если некоторые атрибуты не входят в схему данных локального
slapd, или если имена некоторых атрибутов отличаются, но их предназначение совпадает, или в других целях.
Если в качестве локального или внешнего имени указано `*', это имя сохраняется неизменным. Если локальное
имя пропущено, внешнее имя удаляется. Имена, неотображаемые явно, сохраняются неизменными, если и
локальное, и внешнее имя задано в `*', и удаляются, если локальное имя пропущено, а внешнее имя
задано в `*'.
 
 

Локальные
 объектные классы 

и
 типы атрибутов 

должны быть определены в локальной схеме данных; определять внешние объектные классы и типы атрибутов
в локальной схеме данных не требуется, но пользователям не возбраняется явно определить те из них,
которые они собираются отображать. В целом, при отображении удалённого сервера средствами back-ldap
( slapd-ldap (5)) или back-meta ( slapd-meta (5)), определения объектных классов и типов
атрибутов можно довольно просто получить путём запроса подзаписи  subschemaSubentry  удалённого
сервера; при отображении локальной базы данных проблем с элементами схемы данных возникать не должно.
Однако, имейте ввиду, что решение о том, переопределять или нет типы атрибутов с
 синтаксисом distinguishedName ,

требует знаний относительно синтаксисов типов атрибутов. Подробнее смотрите в разделе ПЕРЕЗАПИСЬ.
 

Обратите внимание, что при отображении локальных атрибутов, значениями которых являются DN, в удалённые,
сначала происходит перезапись DN, а затем отображение типов атрибутов, а при отображении удалённых
атрибутов в локальные сначала происходит отображение типов атрибутов, а затем перезапись DN. Поэтому
важно, чтобы локальный тип атрибута был соответствующим образом определён с использованием синтаксиса
distinguishedName. Также обратите внимание, что существуют связанные с DN синтаксисы (например,
составные типы с частью, значением которой является DN), такие как nameAndOptionalUID, значения
которых в настоящее время перезаписи не подвергаются.
 

Если отображаемый внешний тип атрибута не определён на локальном сервере, то после процесса отображения
может потребоваться нормализовать значение этого атрибута. Если такие значения останутся в
ненормализованном состоянии, это может привести к неверным результатам, когда наложение
 rwm 

используется вместе с другими наложениями, например с
 pcache .

Такая нормализация включается с помощью директивы
 rwm-normalize-mapped-attrs .

 
 rwm-normalize-mapped-attrs {yes|no} 

 
Если в качестве значения директивы указано "yes", наложение
 rwm 

будет пытаться нормализовать значения отображаемых атрибутов, типы которых неизвестны локальному
серверу. Значение по умолчанию - "no".
 rwm-drop-unrequested-attrs {yes|no} 

 
Если в качестве значения директивы указано "yes", наложение
 rwm 

будет отбрасывать атрибуты, которые не запрашивались явно в операции поиска. Если указано "no", наложение
 rwm 

будет оставлять все атрибуты на месте, и их дальнейшая обработка может быть выполнена другими модулями.
В любом случае, незапрошенные атрибуты будут исключены из результатов поиска механизмом frontend
при кодировании пакета записей ответа операции поиска. Значение по умолчанию - "yes".
 
   
 ПРЕОБРАЗОВАНИЕ СУФФИКСА 

Основной функцией наложения
 rwm 

является возможность преобразования суффикса (suffix massaging) между виртуальным и реальным
контекстом именования с помощью директивы
 rwm-suffixmassage .

Во взаимодействии с механизмами прокси
 slapd-ldap (5)

и
 slapd-meta (5),

либо с механизмом трансляции
 slapd-relay (5),

это позволяет создавать виртуальные представления баз данных. Отличительной особенностью этого
наложения является то, что, при его настройке до определения какой-либо базы данных, оно может
модифицировать DN запросов
 перед 

выбором базы данных. По этой причине правила, перезаписывающие пустое DN ("") или DN подзаписи
subschemaSubentry (обычно "cn=subschema"), будут предотвращать чтение клиентом записи root DSE
или схемы данных DSA.
 
 rwm-suffixmassage [<virtual naming context>] <real naming context> 

 
Сокращенное выражение для реализации перезаписи контекста именования; конечная часть DN преобразуется
из виртуального контекста именования в реальный в контекстах перезаписи bindDN, searchDN,
searchFilterAttrDN, compareDN, compareAttrDN, addDN, addAttrDN, modifyDN, modifyAttrDN, modrDN,
newSuperiorDN, deleteDN, exopPasswdDN, и обратно из реального в виртуальный контекст именования в
контекстах перезаписи searchEntryDN, searchAttrDN и matchedDN. По умолчанию преобразования не
осуществляются для контекстов перезаписи searchFilter, referralAttrDN и referralDN. Если виртуальный
контекст именования  <virtual naming context>  не указан, используется первый суффикс базы данных,
к которой применяется наложение; это требует, чтобы директива
 rwm-suffixmassage 

была определена  после  директивы
 suffix 

базы данных. Директива
 rwm-suffixmassage 

автоматически задаёт
 rwm-rewriteEngine 

в
 ON .

 
 

Подробнее смотрите в разделе ПЕРЕЗАПИСЬ.
   
 ПЕРЕЗАПИСЬ 

Строка преобразуется в соответствии с набором правил, называемых `контекстом перезаписи' (`rewrite
context'). Эти правила основаны на POSIX (''расширенных'') регулярных выражениях с совпадением подстрок;
специфические механизмы, подробно описанные далее, позволяют выполнять общую подстановку переменных
и разрешение подстрок с помощью карт.
Алгоритмы нахождения совпадения с шаблоном и подстановки можно изменять с помощью набора флагов.
 

 
 <rewrite context> ::= <rewrite rule> [...]
<rewrite rule> ::= <pattern> <action> [<flags>]
 

 

 

Лежащая в основе идея заключалась в создании для сервера slapd легковесного модуля перезаписи
(изначально предназначавшегося для механизма манипуляции данными LDAP).
 

   
 Процесс работы 

Во входной строке производится поиск совпадений с набором правил перезаписи
 rewriteRules .

Правила состоят из
 шаблона поиска совпадения с регулярным выражением ,

 шаблона подстановки 

и комбинации выполняемых действий, описываемых набором
 опциональных флагов .

В случае нахождения совпадения, преобразование строки выполняется в соответствии с шаблоном подстановки,
который позволяет использовать подстроки, совпавшие во входной строке. Если определены какие-либо
действия, они выполняются в самом конце. Каждое правило выполняется рекурсивно, если такое поведение
не переопределено специфичными флагами действий; подробнее смотрите в подразделе "Флаги действий".
Лимит по умолчанию на уровень вложенности рекурсии задаётся и может быть переопределён директивой
 rwm-rewriteMaxPasses ;

подробно это описано в подразделе "Дополнительные директивы конфигурации". В шаблонах подстановки
разрешено выполнение разрешения подстрок с помощью так называемых карт. Карта - это некоторый объект,
отображающий шаблон подстановки в какое-то значение.
Флаги делятся на "Флаги управления поиском совпадений с шаблоном" и "Флаги действий"; первые управляют
поведением поиска совпадения с  шаблоном регулярного выражения, вторые - действиями, выполняемыми
после проведения подстановки.
   
 Флаги управления поиском совпадений с шаблоном 

 
 `C' 

 
соблюдать регистр символов при сравнении строки с шаблоном (по умолчанию регистр символов игнорируется).
 `R' 

 
использовать ''основные'' регулярные выражения POSIX (по умолчанию используются ''расширенные'').
 `M{n}' 

 
разрешить не более чем
 n 

рекурсивных проходов для конкретного правила; этот флаг не отменяет максимального общего количества
проходов, таким образом он может только ужесточить ограничение для конкретного правила.
 
   
 Флаги действий 

 
 `:' 

 
применить правило только один раз (по умолчанию применяется рекурсивно).
 `@' 

 
прекратить применять правила в случае совпадения; текущее правило всё ещё будет применяться рекурсивно;
для того чтобы применить текущее правило только один раз, а затем прекратить, используйте этот флаг
в комбинации с флагом `:'.
 `#' 

 
прекратить текущую операцию, если было найдено совпадение с правилом, и выдать ошибку
`unwilling to perform'.
 `G{n}' 

 
перейти на
 n 

правил назад и продолжить (опасайтесь зацикливания!).
Имейте ввиду, что `G{1}' подразумевается в каждом правиле.
 `I' 

 
игнорировать ошибки в правиле; это означает, что в случае возникновения ошибки, например, возникшей в ходе применения карты,
эта ошибка интерпретируется как отсутствие совпадения. Ошибка `unwilling to perform' не переопределяется.
 `U{n}' 

 
использовать
 n 

в качестве кода возврата, если было найдено совпадение с правилом; этот флаг не отменяет рекурсивного
выполнения правила, поэтому, если требуется, чтобы правило выполнялось только один раз, этот флаг должен
использоваться в комбинации с флагом  `:', например,
 `:U{32}' 

возвратит значение `32' (то есть noSuchObject) после ровно одного выполнения правила, если было найдено
совпадение с шаблоном. Следовательно, поведение этого флага эквивалентно флагу `@',
но при этом возвращается код
 n ;

другими словами, `@' эквивалентен `U{0}'.
Разрешаются положительные коды возврата, отражающие соответствующие коды ошибок LDAP, указанные в
 draft-ietf-ldapbis-protocol .
 
 

Порядок указания флагов может иметь значение. Например, `IG{2}' означает игнорировать ошибки и переходить
на две строки вперёд как в случае нахождения совпадения, так и в случае ошибки, тогда как `G{2}I' означает
игнорировать ошибки, но осуществлять переход на две строки вперёд только в случае нахождения совпадения.
 

При необходимости будут добавлены дополнительные флаги (главным образом, флаги действий).
   
 Шаблоны поиска совпадений 

Смотрите
 regex (7)

и/или
 re_format (7).

   
 Синтаксис шаблонов подстановки 

Всё, что начинается с `$', требует подстановки;
 

единственное очевидное исключение - это `$$', которое преобразуется в единичный знак `$';
 

основная конструкция подстановки - `$<d>', где `<d>' это цифра; 0 означает строку целиком, а 1-9 -
это подсовпадения, как описано в
 regex (7)

и/или
 re_format (7).

 

если за `$' следует `{', это означает выполнение расширенной подстановки. Шаблон такой подстановки:
 

 
`$' `{' [ <operator> ] <name> `(' <substitution> `)' `}'
 

 

где <name> должно быть именем карты в правильном формате, то есть
 

 
 <name> ::= [a-z][a-z0-9]* (регистр символов не имеет значения)
<operator> ::= `>' `|' `&' `&&' `*' `**' `$'
 

 

 

а <substitution> должно быть шаблоном подстановки в правильном формате, без ограничений на уровень вложенности.
 

Операторы:
 
 > 

 
вызов подконтекста; <name> должно быть правильным, заранее определённым именем контекста перезаписи
 | 

 
вызов внешней команды; <name> должно указывать на правильное, заранее определённое имя команды
(ЕЩЁ НЕ РЕАЛИЗОВАНО)
 & 

 
присвоение значения переменной; <name> определяет переменную в структуре выполняемой операции, которая может быть разыменована позже; оператор
 & 

присваивает значение переменной в рамках текущего контекста перезаписи; оператор
 && 

присваивает значение переменной в рамках всей сессии, то есть её значение может быть использовано позднее другими контекстами перезаписи
 * 

 
разыменование переменной; <name> должно указывать на переменную, которая определена и ей присвоено значение для выполняемой операции; оператор
 * 

разыменовывает переменную в рамках текущего контекста перезаписи; оператор
 ** 

разыменовывает переменную в рамках всей сессии, то есть значение этой переменной доступно всем контекстам перезаписи
 $ 

 
разыменование параметра; <name> должно указывать на существующий параметр; идея заключается в том,
чтобы сделать доступными механизму перезаписи некоторые задаваемые системой параметры времени исполнения,
такие как имя хоста клиента, DN подсоединения (если оно есть), параметры-константы, инициализируемые во
время конфигурации, и так далее; в настоящий момент механизмами
 back-ldap 

и
 back-meta 

не задаются никакие параметры, но в конфигурационном файле с помощью директивы
 rewriteParam 

можно определить параметры-константы.
 
 

Экранирование в строковых шаблонах подстановки осуществляется с помощью символа `$', который используется
вместо символа `\', поскольку `\' уже экранируется низкоуровневыми процедурами разбора slapd; как
следствие, при экранировании регулярных выражений требуется использовать два символа `\', например,
выражение ` .*\.foo\.bar ' должно записываться как ` .*\\.foo\\.bar '.



   
 Контексты перезаписи 

Контекст перезаписи - это набор правил, которые применяются последовательно. Основная идея состоит в том,
чтобы иметь приложение, инициализирующее механизм перезаписи (что-то вроде mod_rewrite в Apache), с
набором контекстов перезаписи; когда возникает потребность в преобразовании строки, вызывается соответствующий
контекст перезаписи с входной строкой, а на выходе (если не возникло ошибок) получается новая перезаписанная строка.
 

Все основные операции сервера ассоциированы с контекстами перезаписи; они подразделяются на две основные
группы: перезапись строк в сообщениях клиент -> сервер и в сообщениях сервер -> клиент.
 

клиент -> сервер:
 

 
 (default)            если определено правило и не указано
                     никакого конкретного контекста
bindDN               bind
searchDN             search
searchFilter         search
searchFilterAttrDN   search
compareDN            compare
compareAttrDN        compare AVA
addDN                add
addAttrDN            add AVA (за исключением DN-части отсылок)
modifyDN             modify
modifyAttrDN         modify AVA (за исключением DN-части отсылок)
referralAttrDN       add/modify часть DN отсылок
                     (по умолчанию пустая строка)
renameDN             modrdn (старое DN)
newSuperiorDN        modrdn (новое родительское DN, если есть)
newRDN               modrdn (новое относительное DN)
deleteDN             delete
exopPasswdDN         DN расширенной операции password modify
 

 

 

сервер -> клиент:
 

 
 searchEntryDN        search (только если определён; нет значения по
                     умолчанию; выполняется над DN найденных записей)
searchAttrDN         search AVA (только если определён; по умолчанию
                     соответствует searchEntryDN; выполняется над
                     атрибутами синтаксиса DN результатов поиска)
matchedDN            все операции (только если применение возможно;
                     по умолчанию соответствует searchEntryDN)
referralDN           все операции (только если применение возможно;
                     по умолчанию пустая строка)
 

 

 

   
 Основные директивы конфигурации 

Все директивы перезаписи/отображения начинаются с префикса
 rwm- ;

для обратной совместимости с исторически встроенными в
 slapd-ldap (5)

и
 slapd-meta (5)

возможностями перезаписи/отображения этот префикс может не указываться, но поступать так
настоятельно не рекомендуется.
 
 rwm-rewriteEngine { on | off } 

 
Если эта директива задана в `on', настроенные процедуры перезаписи будут выполняться; если директива
задана в `off', перезапись выполняться не будет (простой способ остановить перезапись без
необходимости внесения слишком больших изменений в конфигурационный файл).
 rwm-rewriteContext <context name> [ alias <aliased context name> ] 

 
<context name> - это имя, идентифицирующее контекст, то есть имя, которое будет использоваться
приложением для того, чтобы обратиться к набору правил, содержащемуся в этом контексте. Кроме того,
это имя используется при перезаписи строк для ссылки на подконтексты. Один контекст может быть
псевдонимом другого. В этом случае контекст-псевдоним не содержит правил, и в результате любого
обращения к нему происходит доступ к тому контексту, псевдонимом которого он является.
 rwm-rewriteRule <regex match pattern> <substitution pattern> [ <flags> ] 

 
Определяет, как будет перезаписана строка, если было найдено совпадение с шаблоном.
Примеры приведены ниже.
 
   
 Дополнительные директивы конфигурации 

 
 rwm-rewriteMap <map type> <map name> [ <map attrs> ] 

 
Позволяет определить карту, которая трансформирует перезапись подстроки во что-то иное. Ссылка на карту
происходит внутри шаблона подстановки правила.
 rwm-rewriteParam <param name> <param value> 

 
Задаёт значение с глобальной областью видимости, на которое можно сослаться командой `${$paramName}'.
 rwm-rewriteMaxPasses <number of passes> [<number of passes per rule>] 

 
Задаётся максимальное общее количество проходов перезаписи, которое может быть выполнено в рамках одной
операции перезаписи (во избежание зацикливания). Безопасное значение по умолчанию - 100; имейте ввиду,
что достижение этого предела всё ещё интерпретируется как успешное выполнение операции; рекурсивный
вызов правил просто прерывается. Это ограничение применяется к операции перезаписи в целом, а не только
к одному правилу. Дополнительно может быть установлено ограничение на выполнение одного правила. Данное общее
ограничение переопределяется путём задания специфичных ограничений для конкретных правил с помощью флага `M{n}.
 
 
   
 КАРТЫ 

В настоящее время существует всего несколько встроенных типов карт, но есть возможность регистрировать
дополнительные типы карт во время выполнения.
 
Поддерживаемые карты:
 
 LDAP <URI> [bindwhen=<when>] [version=<version>] [binddn=<DN>] [credentials=<cred>] 

 
Расширение значения с использованием карты
 LDAP 

производится путём выполнения простого поиска LDAP. Конфигурация этой карты базируется на обязательном URI, часть
 attrs 

которого должна содержать ровно один атрибут (используйте
 entryDN 

для извлечения DN записи). Если используется атрибут с несколькими значениями, учитывается только первое из них.
 
Параметр
 bindwhen 

определяет, когда устанавливается соединение. Он может принимать значения
 now ,

 later 

и
 everytime ,

указывающее, соответственно, что соединение должно быть создано при запуске, когда оно потребуется,
или в любое время, когда оно используется. В первых двух случаях соединение кэшируется, а в последнем
всё время устанавливается новое соединение. Это значение по умолчанию.
 
Параметры
 binddn 

и
 credentials 

представляют собой DN и пароль, используемые для выполнения простого подсоединения с аутентификацией
перед выполнением операции поиска; если они не заданы, используется анонимное соединение.
 
Параметр
 version 

указывает, какую версию протокола следует использовать. Значением может быть 2 или 3. По умолчанию - 3.
 
 slapd <URI> 

 
Расширение значения с использованием карты
 slapd 

производится путём выполнения внутреннего поиска LDAP. Конфигурация этой карты базируется на обязательном URI,
который должен начинаться с
 ldap:/// 

(то есть это должен быть URI со схемой LDAP и без указания хоста). Как и в карте LDAP, часть
 attrs 

должна содержать ровно один атрибут, и если используется атрибут с несколькими значениями,
учитывается только первое из них.
 
 
   
 ПРИМЕРЫ НАСТРОЙКИ ПЕРЕЗАПИСИ 

 # Для отключения перезаписи задайте значение `off'
rwm-rewriteEngine on

# Правила, реализуемые директивой "suffixmassage"
rwm-rewriteEngine on
# весь поток данных от клиента к серверу, в части, касающейся DN
rwm-rewriteContext default
rwm-rewriteRule "(.+,)?<virtualnamingcontext>$" "$1<realnamingcontext>" ":"
# пустое правило для фильтров
rwm-rewriteContext searchFilter
# весь поток данных от сервера к клиенту
rwm-rewriteContext searchEntryDN
rwm-rewriteRule "(.+,)?<realnamingcontext>$" "$1<virtualnamingcontext>" ":"
rwm-rewriteContext searchAttrDN alias searchEntryDN
rwm-rewriteContext matchedDN alias searchEntryDN
# разные пустые правила
rwm-rewriteContext referralAttrDN
rwm-rewriteContext referralDN

# Всё, определённое здесь, относится к контексту `default'.
# Данное правило меняет контекст именования всего, что отправляется для
# `dc=home,dc=net' на `dc=OpenLDAP, dc=org'

rwm-rewriteRule "(.+,)?dc=home,[ ]?dc=net$"
            "$1dc=OpenLDAP, dc=org"  ":"

# поскольку общепринятые/нормализованные DN не включают пробелов
# после разделителей rdn, например, `,', достаточно такого правила:

rwm-rewriteRule "(.+,)?dc=home,dc=net$"
            "$1dc=OpenLDAP,dc=org"  ":"

# Начинается новый контекст (заканчивается ввод предыдущего).
# Это правило добавляет пробелы между частями DN, если их нет.
rwm-rewriteContext  addBlanks
rwm-rewriteRule     "(.*),([^ ].*)" "$1, $2"

# А это убирает пробелы
rwm-rewriteContext  eatBlanks
rwm-rewriteRule     "(.*), (.*)" "$1,$2"

# Здесь управление переходит обратно к контексту перезаписи по
# умолчанию; правила добавляются в конец списка уже существующих.
# Всё, что попадает сюда, перенаправляется в правило `addBlanks'
rwm-rewriteContext  default
rwm-rewriteRule     ".*" "${>addBlanks($0)}" ":"

# Перезапись базы поискового запроса в соответствии с правилами
# `default'.
rwm-rewriteContext  searchDN alias default

# Результаты поиска с DN OpenLDAP перезаписываются обратно в
# контекст именования `dc=home,dc=net' с поглощением пробелов.
rwm-rewriteContext  searchEntryDN
rwm-rewriteRule     "(.*[^ ],)?[ ]?dc=OpenLDAP,[ ]?dc=org$"
                "${>eatBlanks($1)}dc=home,dc=net"    ":"

# Подсоединение с предоставлением адреса электронной почты
# вместо полного DN: для начала нам необходима ldap-карта,
# переводящая атрибуты в DN (аргумент, используемый при вызове
# карты добавляется к URI и выступает в качестве фильтра)
rwm-rewriteMap ldap attr2dn " ldap://host/dc=my,dc=org?dn?sub "

# Затем нам нужно выявить DN, представляющий собой только адрес
# электронной почты, например, `mail= someone@example.com ';
# обратите внимание, что согласно этому правилу в случае нахождения
# совпадения перезапись останавливается; в случае возникновения
# ошибки, она будет проигнорирована. Если мы, кроме того,
# отображаем виртуальный контекст именования в реальный, нам также
# необходимо настроить перезапись обычных DN, поскольку правила
# контекста перезаписи bindDN переопределяют правила, настроенные
# по умолчанию.
rwm-rewriteContext bindDN
rwm-rewriteRule "^mail=[^,]+@[^,]+$" "${attr2dn($0)}" ":@I"

# Следующий пример довольно сложный. В нём поисковый фильтр преобразуется
# в случае, когда тот, кто выполняет поиск, имеет административные
# привилегии. Во-первых, мы должны отслеживать DN подсоединения
# входящих запросов и сохранять их в переменной `binddn', которая
# будет доступна в рамках всей сессии, а также оставлять их на месте
# для того, чтобы можно было осуществлять обычные подключения:
rwm-rewriteContext  bindDN
rwm-rewriteRule     ".+" "${&&binddn($0)}$0" ":"

# Поисковый фильтр, содержащий `uid=', перезаписывается, только
# если подсоединение осуществлялось от имени соответствующего DN.
# Чтобы сделать это, в первом правиле происходит подстановка DN
# подключения, а фильтр разбивается на префикс (переменная prefix),
# значение AVA `uid=<arg>' (переменная arg) и суффикс (переменная
# suffix). Тег `<>' добавляется в конец DN. Если DN указывает на
# запись в поддереве `ou=admin', фильтр перезаписывается: условие
# `uid=<arg>' соединяется с условием `cn=<arg>' через логическое ИЛИ;
# в противном случае всё остаётся как есть. Это может понадобиться,
# например, чтобы позволить модулю apache auth_ldap-1.4 аутентифицировать
# пользователей, логины которых могут быть либо в атрибуте `uid',
# либо в атрибуте `cn', но только если запрос поступает, например,
# от пользователя `cn=Web auth,ou=admin,dc=home,dc=net'.
rwm-rewriteContext searchFilter
rwm-rewriteRule "(.*\\()uid=([a-z0-9_]+)(\\).*)"
  "${**binddn}<>${&prefix($1)}${&arg($2)}${&suffix($3)}"
  ":I"
rwm-rewriteRule "^[^,]+,ou=admin,dc=home,dc=net$"
  "${*prefix}|(uid=${*arg})(cn=${*arg})${*suffix}" ":@I"
rwm-rewriteRule ".*<>$" "${*prefix}uid=${*arg}${*suffix}" ":"

# В этом примере показано, как исключить нежелательные значения атрибутов,
# значениями которых являются DN, из результатов поиска. В первом правиле
# ищутся DN, оканчивающиеся на "ou=People,dc=example,dc=com"; в случае
# нахождения совпадения, перезапись успешно завершается. Второе правило
# совпадает со всем остальным, и приводит к тому, что значение будет отвергнуто.
rwm-rewriteContext searchEntryDN
rwm-rewriteRule ".+,ou=People,dc=example,dc=com$" "$0" ":@"
rwm-rewriteRule ".*" "" "#"
 

   
 ПРИМЕРЫ ОТОБРАЖЕНИЯ 

Следующие директивы отображают объектный класс `groupOfNames' в объектный класс `groupOfUniqueNames',
и тип атрибута `member' в тип атрибута `uniqueMember':
 

 
 map objectclass groupOfNames groupOfUniqueNames
map attribute uniqueMember member
 

 

 

В этом примере настраивается представление ограниченного набора атрибутов с удалённого сервера:
 

 
 map attribute cn *
map attribute sn *
map attribute manager *
map attribute description *
map attribute *
 

 

 

Атрибуты cn, sn, manager и description отображаются сами в себя, а любые другие атрибуты "удаляются"
из объекта перед его отправкой клиенту (или посылкой обратно на LDAP-сервер). Очевидно,
это упрощённый пример, но его можно использовать как отправную точку.
   
 ФАЙЛЫ 

 
 /usr/local/etc/openldap/slapd.conf 
конфигурационный файл slapd по умолчанию
 
   
 СМОТРИТЕ ТАКЖЕ 

 slapd.conf (5),

 slapd-config (5),

 slapd-ldap (5),

 slapd-meta (5),

 slapd-relay (5),

 slapd (8),

 regex (7),

 re_format (7).

   
 АВТОРЫ 

Pierangelo Masarati; основано на функциях перезаписи/отображения модуля back-ldap, написанного
Howard Chu, Pierangelo Masarati.
 

 
   Index 
 
 НАЗВАНИЕ 
 ОБЗОР 
 ОПИСАНИЕ 
 ОТОБРАЖЕНИЕ 
 ПРЕОБРАЗОВАНИЕ СУФФИКСА 
 ПЕРЕЗАПИСЬ 
 Процесс работы 
 Флаги управления поиском совпадений с шаблоном 
 Флаги действий 
 Шаблоны поиска совпадений 
 Синтаксис шаблонов подстановки 
 Контексты перезаписи 
 Основные директивы конфигурации 
 Дополнительные директивы конфигурации 
 КАРТЫ 
 ПРИМЕРЫ НАСТРОЙКИ ПЕРЕЗАПИСИ 
 ПРИМЕРЫ ОТОБРАЖЕНИЯ 
 ФАЙЛЫ 
 СМОТРИТЕ ТАКЖЕ 
 АВТОРЫ 
 
 
 
 
 
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