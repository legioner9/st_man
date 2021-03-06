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
 
 
 
 slapd.access (5) >>  slapd.access  (5)   ( Русские man: Форматы файлов ) 


   
 НАЗВАНИЕ 

slapd.access - конфигурация доступа для slapd, автономного демона LDAP
   
 СИНТАКСИС 

/usr/local/etc/openldap/slapd.conf
   
 ОПИСАНИЕ 

Файл
 slapd.conf (5)

содержит конфигурационную информацию для демона
 slapd (8).

Этот конфигурационный файл также используется инструментами SLAPD:
 slapacl (8),

 slapadd (8),

 slapauth (8),

 slapcat (8),

 slapdn (8),

 slapindex (8)

и
 slaptest (8).

 

Файл
 slapd.conf 

состоит из набора глобальных параметров конфигурации, применяемых к
 slapd 

в целом (в том числе ко всем механизмам манипуляции данными), за которыми следует ноль или более определений
баз данных какого-либо механизма манипуляции данными. В этих определениях содержится информация,
специфичная для конкретной базы данных конкретного механизма манипуляции данными.
 

Общий формат
 slapd.conf :

 

     # комментарий - данные параметры применяются к каждой базе данных
    <глобальные параметры конфигурации>
    # определение и параметры конфигурации первой базы данных
    database    <первый тип механизма манипуляции данными>
    <параметры конфигурации, специфичные для механизма первого типа>
    # последующие определения и параметры конфигурации баз данных
    ...
 

 

Как раздел глобальных настроек, так и каждый из разделов баз данных механизмов манипуляции
данными могут содержать информацию по контролю доступа.
Директивы контроля доступа из раздела, специфичного для базы данных какого-либо механизма манипуляции данными,
используются для записей, относящихся к этой базе в соответствии с контекстом их именования.
В случае, когда для какой-либо базы данных не определено директив контроля доступа, либо те,
которые определены, являются неприменимыми, используются директивы из раздела глобальных настроек.
 

Если отсутствуют какие-либо настройки контроля доступа, политика по умолчанию разрешает
кому бы то ни было (всем) читать что угодно, а вносить изменения разрешено только rootdn
(то есть, "access to * by * read").
 

При обработке списков доступа директивы из глобального списка добавляются в конец списка каждой базы данных.
Если полученный в результате список не пуст, то к нему неявно добавляется директива
 access to * by * none .

Если же применимых к механизму манипуляции данными директив доступа не оказалось,
то по умолчанию используется доступ на чтение.
 

 Предупреждение: rootdn всегда может читать и записывать ВСЁ! 

 

Для записей, не входящих в базу данных какого-либо механизма манипуляции данными (таких как root DSE),
используются глобальные директивы.
 

Аргументы, которые необходимо заменить актуальным текстом, показаны в угловых скобках <>.
   
 ДИРЕКТИВА ACCESS 

Структура директивы контроля доступа:
 
 access to <what> [ by <who> [ <access> ] [ <control> ] ]+ 

 
Предоставляется доступ (указанный как 
 <access> )

к набору записей и/или атрибутов (указанных как
 <what> )

одному или более запрашивающих доступ (указанных как 
 <who> ).

 
 
 

Список директив access оценивается в порядке их определения в  slapd.conf .
При совпадении условия
 <what> 

с элементом данных, доступ к которому в текущий момент оценивается, проверяется список условий
 <who> 

этой директивы. При совпадении условия
 <who> 

с характеристиками того, кто хочет получить доступ, оцениваются условия
 <access> 

и
 <control> 

этой директивы. Контроль доступа прекращается при первом совпадении условий
 <what> 

и
 <who> ,

если иное не задано условием
 <control> .

Каждый список условий
 <who> 

неявно завершается условием
 

         by * none stop
 

 

в результате чего контроль доступа прекращается без предоставления привилегий доступа.
Каждый список условий
 <what> 

неявно завершается условием
 

         access to *
                by * none
 

 

в результате чего привилегии на доступ ко всем остальным не указанным явно элементам данных не предоставляются.
   
 ПОЛЕ <WHAT> 

Поле
 <what> 

определяет объект, к которому применяется директива контроля доступа. Оно может иметь следующие формы:
 

         dn[.<dnstyle>]=<dnpattern>
        filter=<ldapfilter>
        attrs=<attrlist>[ val[/matchingRule][.<attrstyle>]=<attrval>]
 

 

где
 

         <dnstyle>={{exact|base(object)}|regex
                |one(level)|sub(tree)|children}
        <attrlist>={<attr>|[{!|@}]<objectClass>}[,<attrlist>]
        <attrstyle>={{exact|base(object)}|regex
                |one(level)|sub(tree)|children}
 

 

Выражение
 dn=<dnpattern> 

отбирает записи на основании их контекста именования.
 <dnpattern>  -

это строковое представление DN записи.
Шаблон
 * 

соответствует всем записям, он неявно подразумевается, если никакая из форм 
 dn 

не предоставлена.
 

Указание 
 <dnstyle>  

необязательно; тем не менее, рекомендуется указывать его во избежание неоднозначностей.
Значение по умолчанию -
 base  

(синоним
 baseObject ),

или
 exact  

(псевдоним для 
 base ),

указывает на запись, DN которой совпадает с
 <dnpattern> ;

 one 

(синоним
 onelevel )

указывает на все записи, непосредственно на один уровень ниже
 <dnpattern> ;

 sub 

(синоним
 subtree )

указывает на все записи поддерева, начиная с
 <dnpattern> ;

 children 

указывает на все записи ниже (нижестоящие по отношению к) 
 <dnpattern> .

 

Если в качестве квалификатора
 <dnstyle> 

указан
 regex ,

то 
 <dnpattern> 

рассматривается как шаблон POSIX (''расширенного'') регулярного выражения,
как описано в
 regex (7)

и/или
 re_format (7),

соответствующего нормализованному строковому представлению DN записи.
Форма шаблона regex не поддерживает UTF-8 (пока).
 

Выражение
 filter=<ldapfilter> 

отбирает записи на основании корректного LDAP-фильтра, как описано в RFC 4515.
Если никакая из форм
 filter 

не предоставлена, неявно подразумевается фильтр
 (objectClass=*) .

 

Выражение
 attrs=<attrlist> 

отбирает атрибуты, к которым применяется данное правило контроля доступа.
Это разделённый запятыми список типов атрибутов, плюс специальные имена
 entry 

(указывающее на доступ к самой записи) и
 children 

(указывающее на доступ к потомкам этой записи).
В этом списке также могут быть указаны имена объектных классов,
тогда правило доступа будет распространяться на все атрибуты,
которые требуются или разрешены этими объектными классами.
В настоящее время имена в списке 
 <attrlist> ,

перед которыми указан знак
 @ ,

прямо интерпретируются как имена объектных классов. Имена, перед которыми указан знак
 ! ,

также интерпретируются как объектные классы, но в этом случае правило доступа будет распространяться на атрибуты,
которые не требуются или не разрешены этими объектными классами.
Если никакая из форм
 attrs 

не предоставлена, неявно подразумевается
 attrs=@extensibleObject ,

то есть охватываются все атрибуты.
 

Использование формы
 attrs=<attr> val[/matchingRule][.<attrstyle>]=<attrval> 

определяет доступ к конкретному значению одного атрибута.
В этом случае может быть задан только один тип атрибута.
 <attrstyle> 

 exact 

(по умолчанию) использует для выполнения сравнения со значением правило соответствия equality атрибута,
если не указано иное (и совместимое с атрибутом) правило соответствия. Если в качестве
 <attrstyle> 

указан
 regex ,

предоставленное значение используется как шаблон POSIX (''расширенного'') регулярного выражения.
Если атрибут имеет синтаксис DN, то
 <attrstyle> 

может быть одним из
 base ,

 onelevel ,

 subtree 

или
 children ,

что означает совпадение как при поиске с диапазонами base, onelevel, subtree или children, соответственно.
 

Выражения dn, filter и attrs являются аддитивными; они могут использоваться последовательно
для отбора объектов, к которым применяется данное правило доступа,
на основании контекста именования, значения и типа атрибута одновременно.
На подсовпадения, получившиеся в результате совпадения с шаблоном регулярного выражения
 regex ,

можно сослаться в поле
 <who> 

с помощью синтаксиса
 ${v<n>} ,

где
 <n>  -

это номер подсовпадения. Синтаксис по умолчанию
 $<n> 

в действительности является псевдонимом для
 ${d<n>} ,

который соответствует подсовпадению из части
 dnpattern 

поля
 <what> .

   
 ПОЛЕ <WHO> 

Поле
 <who> 

указывает того, к кому применяется данное правило доступа.
В директиве контроля доступа может присутствовать несколько выражений
 <who> ,

задающих разные привилегии доступа к одному и тому же ресурсу для разных претендентов на получение доступа.
Выражение
 <who> 

может иметь следующие формы:
 

         *
        anonymous
        users
        self[.<selfstyle>]

        dn[.<dnstyle>[,<modifier>]]=<DN>
        dnattr=<attrname>

        realanonymous
        realusers
        realself[.<selfstyle>]

        realdn[.<dnstyle>[,<modifier>]]=<DN>
        realdnattr=<attrname>

        group[/<objectclass>[/<attrname>]]
                [.<groupstyle>]=<group>
        peername[.<peernamestyle>]=<peername>
        sockname[.<style>]=<sockname>
        domain[.<domainstyle>[,<modifier>]]=<domain>
        sockurl[.<style>]=<sockurl>
        set[.<setstyle>]=<pattern>

        ssf=<n>
        transport_ssf=<n>
        tls_ssf=<n>
        sasl_ssf=<n>

        dynacl/<name>[/<options>][.<dynstyle>][=<pattern>]
 

 

где
 

         <style>={exact|regex|expand}
        <selfstyle>={level{<n>}}
        <dnstyle>={{exact|base(object)}|regex
                |one(level)|sub(tree)|children|level{<n>}}
        <groupstyle>={exact|expand}
        <peernamestyle>={<style>|ip|ipv6|path}
        <domainstyle>={exact|regex|sub(tree)}
        <setstyle>={exact|expand}
        <modifier>={expand}
        <name>=aci              <pattern>=<attrname>]
 

 

Эти формы могут задаваться в комбинации.
 

 

 

Шаблон
 * 

указывает на всех.
 

Ключевые слова с префиксом
 real 

обрабатываются также, как и соответствующие им ключевые слова без префикса;
проверке подвергаются  аутентификационное  и  авторизационное  DN, соответственно.
 

Ключевое слово
 anonymous 

означает, что доступ предоставляется не прошедшим проверку подлинности клиентам;
в основном оно используется для того, чтобы доступ к ресурсам аутентифкации (например, атрибуту
 userPassword )

предоставлялся лишь клиентам, не прошедшим проверку подлинности, в целях её прохождения ими.
 

Ключевое слово
 users 

означает, что доступ предоставляется клиентам, прошедшим проверку подлинности.
 

Ключевое слово
 self 

означает, что доступ к записи разрешается самой этой записи
(то есть, запись, к которой осуществляется доступ, и запись,
от имени которой запрашивается доступ, должны совпадать).
При этом разрешается использовать стиль 
 level{<n>} ,

где индекс  <n>  указывает, какой предок DN должен быть использован в совпадениях.
Положительное значение индекса говорит о том, что должен рассматриваться <n>-й предок DN пользователя;
отрицательное значение индекса говорит о том, что должен рассматриваться <n>-й предок DN целевой записи.
Например, условие " by self.level{1} ... " сработает, когда к объекту " dc=example,dc=com "
осуществляется доступ пользователем " cn=User,dc=example,dc=com ".
Условие " by self.level{ -1} ... " сработает, когда тот же пользователь осуществляет доступ
к объекту " ou=Address Book,cn=User,dc=example,dc=com ".
 

Выражение
 dn=<DN> 

означает, что доступ предоставляется соответствующему DN. В необязательном квалификаторе стиля
 dnstyle 

разрешено использовать те же варианты, что и в форме dn поля
 <what> .

Кроме того, в стиле
 regex 

можно воспользоваться заменой подстрок подсовпадениями из условия dn.regex поля
 <what> 

путём использования формы
 $<digit> ,

где
 digit 

может быть от 0 до 9 (0 соответствует строке целиком), либо формы
 ${<digit>+} ,

для подсовпадений, номер которых превышает 9.
Может быть выполнена замена подстроки значением атрибута с помощью формы
 ${v<digit>+} .

Так как символ доллара используется для указания замены подстроки, символ доллара,
использующийся для указания совпадения с концом строки,
должен быть экранирован вторым символом доллара, например:
 

     access to dn.regex="^(.+,)?uid=([^,]+),dc=[^,]+,dc=com$"
        by dn.regex="^uid=$2,dc=[^,]+,dc=com$$" write
 

 

В квалификаторе стиля разрешено использование необязательного модификатора
 modifier .

В настоящее время единственным разрешённым вариантом модификатора является
 expand ,

указание которого приводит к тому, что замена подстрок подсовпадениями происходит даже если
 dnstyle 

не является
 regex .

Имейте ввиду, что dnstyle
 regex  

в приведённом выше примере целесообразно использовать, только если в условии
 <by> 

требуется применение регулярного выражения; в противном случае,
если в этом же примере значение второго (справа) вхождения
 dc= 

в DN фиксировано, может быть использована форма:
 

     access to dn.regex="^(.+,)?uid=([^,]+),dc=example,dc=com$"
        by dn.exact,expand="uid=$2,dc=example,dc=com" write
 

 

Если же это вхождение должно соответствовать значению в условии
 <what> ,

то может быть использована форма:
 

     access to dn.regex="^(.+,)?uid=([^,]+),dc=([^,]+),dc=com$"
        by dn.exact,expand="uid=$2,dc=$3,dc=com" write
 

 

Отличные от regex формы условия
 <what> 

могут также предоставлять подсовпадения. Формы
 base(object) ,

 sub(tree) ,

 one(level) ,

 children 

предоставляют подсовпадение
 $0 ,

совпадающее со строкой целиком.
Также формы
 sub(tree) ,

 one(level) ,

 children 

предоставляют подсовпадение
 $1 ,

совпадающее с самой правой частью DN, как определено в условии
 <what> .

Это может пригодиться, например, для предоставления доступа всем предкам пользователя:
 

     access to dn.subtree="dc=com"
        by dn.subtree,expand="$1" read
 

 

Здесь доступ разрешён только к записям, которые представлены в DN условия
 <by> .

 

Форма 
 level{<n>}  -

это расширение и обобщение формы
 onelevel ,

совпадающая со всеми DN, <n>-м предком которых является указанный шаблон.
Так,  level{1}  - это эквивалент  onelevel , 
а  level{0}  - эквивалент  base .
 

Совершенно бессмысленно предоставлять любые привилегии доступа DN, полностью совпадающему с 
 rootdn 

базы данных, к которой применяется этот ACL, поскольку ему неявно
предоставлены права на запись во всём дереве этой базы данных.
По сути, контроль доступа для
 rootdn 

обходится, чтобы решить пресловутую проблему курицы и яйца.
 

Выражение
 dnattr=<attrname> 

означает, что доступ предоставляется тем запрашивающим, чей DN перечислен в записи,
к которой осуществляется доступ, в качестве значения атрибута
 <attrname> .

 

Выражение
 group=<group> 

означает, что доступ предоставляется тем запрашивающим,
чей DN перечислен в групповой записи, DN которой задан в
 <group> .

Необязательные параметры
 <objectclass> 

и
 <attrname> 

определяют объектный класс групповой записи и тип атрибута членства в ней.
Значения по умолчанию -
 groupOfNames 

и
 member ,

соответственно.
Опциональный квалификатор стиля
 <style> 

может быть
 expand ,

тогда
 <group> 

будет расширен как строка замены с подстановками (но не как регулярное выражение) согласно
 regex (7)

и/или
 re_format (7),

и
 exact ,

тогда будет использовано точное совпадение. Если стилем выражения DN в условии
 <what> 

является regex, становятся доступны подсовпадения согласно
 regex (7)

и/или
 re_format (7);

при других стилях предоставляются ограниченные подсовпадения, как было рассмотрено выше
при обсуждении формы DN условия
 <by> .

 

Для статических групп указанный тип атрибута должен иметь синтаксис
 DistinguishedName 

или
 NameAndOptionalUID .

Для динамических групп тип атрибута должен быть подтипом от
 labeledURI .

В динамических группах будут оцениваться только LDAP URI формы
 ldap:/// <base>??<scope>?<filter> 

с поиском только по локальному серверу.
 

Выражения
 peername=<peername> ,

 sockname=<sockname> ,

 domain=<domain> 

и
 sockurl=<sockurl> 

означают, что при принятии решения о предоставлении доступа шаблон
 pattern 

сравнивается с IP-адресом хоста, с которого происходит подключение, (в форме 
 IP=<ip>:<port> 

для IPv4 или
 IP=[<ipv6>]:<port> 

для IPv6), либо с именем файла именованного канала при подключении через именованный канал (в форме
 PATH=<path> )

для
 peername ;

с именем файла именованного канала для
 sockname ;

с именем хоста, с которого происходит подключение, для
 domain ;

и с используемым при подключении URL для
 sockurl .

При сравнении с шаблоном применяются те же правила
 style ,

которые были описаны для варианта
 group ,

плюс стиль
 regex ,

подразумевающий подстановку подсовпадений
 expand 

и сравнение соответствующих параметров подключения с регулярным выражением.
Стиль
 exact 

условия
 <peername> 

(по умолчанию) подразумевает точное совпадение с клиентским
 IP ,

включая префикс
 IP= 

и окончание
 :<port> ,

либо с именем файла клиентского именованного канала
 path ,

включая префикс
 PATH= 

при подключении через именованный канал.
При использовании специального стиля
 ip 

шаблон интерпретируется как
 <peername>=<ip>[%<mask>][{<n>}] ,

где
 <ip> 

и 
 <mask>  -

точечно-цифровое представление IP-адреса и маски подсети, а
 <n> ,

заключённое в фигурные скобки, - опциональное указание номера порта.
То же касается и адресов IPv6 при использовании специального стиля
 ipv6 .

При проверке привилегий доступа, извлекается IP-составляющая выражения
 peername ,

отбрасываются префикс
 IP= 

и часть
 :<port> ,

и полученное сравнивается с частью
 <ip> 

шаблона после применения маски
 <mask> :

 ((peername & <mask>) == <ip>) .
Например,
 peername.ip=127.0.0.1 

и
 peername.ipv6=::1 

позволяют устанавливать соединение только с локального хоста,
 peername.ip=192.168.1.0%255.255.255.0  

позволяет устанавливать соединение с любого IP-адреса сети класса C 192.168.1, а
 peername.ip=192.168.1.16%255.255.255.240{9009} 

позволяет устанавливать соединение с любого IP-адреса в диапазоне 192.168.1.[16-31]
той же сети и только при использовании порта 9009.
В случае соединения через именованный канал, при использовании специального стиля
 path 

из 
 peername 

отбрасывается префикс
 PATH= 

и полученное значение сравнивается на точное совпадение с заданным шаблоном.
В условии
 <domain> 

также разрешён стиль
 subtree ,

в этом случае доступ предоставляется при точном совпадении полностью квалифицированного имени с шаблоном
 domain ,

либо при точном совпадении конечной части этого имени (после
 точки )

с шаблоном
 domain .

Разрешено использование стиля
 expand ,

при котором подразумевается точное совпадение как в стиле
 exact 

с возможностью подстановки подсовпадений; в данном случае более правильным решением считается использование
 expand  

в качестве модификатора стиля.
Для примера,
 domain.subtree=example.com 

будет совпадать с  www.example.com , но не с  www.anotherexample.com .
Доменное имя
 domain 

хоста, с которого происходит подключение, определяется путём выполнения обратного поиска DNS.
Поскольку результаты данного вида поиска довольно легко подменить, использование выражения
 domain 

настоятельно не рекомендуется. По умолчанию, обратный поиск отключен.
В необязательном квалификаторе
 domainstyle 

условия
 <domain> 

разрешено использовать опциональный модификатор
 modifier ;

единственное на сегодняшний день поддерживаемое значение модификатора -
 expand ,

указание которого приводит к тому, что замена подстрок подсовпадениями происходит, даже если
 domainstyle 

не является
 regex ,

аналогично тому, как это происходит в условии
 <dn> .

 

Применение выражения
 set=<pattern> 

пока недокументировано.
 

Выражение
 dynacl/<name>[/<options>][.<dynstyle>][=<pattern>] 

означает, что проверка доступа возлагается на определённый администратором метод, указываемый в поле
 <name> ,

который может быть зарегистрирован во время выполнения с помощью директивы
 moduleload .

Поля
 <options> ,

 <dynstyle> 

и
 <pattern> 

являются опциональными и непосредственно передаются зарегистрированной процедуре разбора.
Динамические ACL dynacl являются экспериментальными; они должны быть явно включены во время компиляции.
 

Выражение
 dynacl/aci[=<attrname>] 

означает, что контроль доступа определяется значениями атрибутов
 attrname 

самой записи.
Необязательный параметр
 <attrname> 

указывает, в атрибутах какого типа содержится ACI-информация в записи.
По умолчанию используется операционный атрибут
 OpenLDAPaci .

ACIs являются экспериментальными; они должны быть явно включены во время компиляции.
 

Выражения
 ssf=<n> ,

 transport_ssf=<n> ,

 tls_ssf=<n> 

и
 sasl_ssf=<n> 

задают минимально необходимый фактор силы безопасности (Security Strength Factor, ssf),
требуемый для предоставления доступа. Значением должно быть положительное целое число.
   
 ПОЛЕ <ACCESS> 

Необязательное поле
 <access> ::= [[real]self]{<level>|<priv>} 

определяет уровень доступа или специфические привилегии доступа, предоставляемые тому, кто указан в поле
 who .

Компоненты поля
 <access> 

определяются следующим образом:
 

         <level> ::= none|disclose|auth|compare|search|read|{write|add|delete}|manage
        <priv> ::= {=|+|- }{0|d|x|c|s|r|{w|a|z}|m}+
 

 

Модификатор
 self 

позволяет специальные операции, вроде получения некоторого уровня доступа или привилегии,
только в случае, когда в этой операции участвует имя пользователя, запрашивающего доступ.
Подразумевается, что пользователь, запрашивающий доступ, прошёл авторизацию.
Модификатор
 realself 

указывает на аутентификационное DN, в отличие от авторизационного DN модификатора
 self .

В качестве примера можно привести уровень доступа
 selfwrite 

к атрибуту членства в группе, позволяющий кому-либо добавлять/удалять своё собственное DN
в списке членов группы, но не дающий права воздействовать на других членов.
 

Модель доступа
 level  

основывается на инкрементной интерпретации привилегий доступа. Возможные уровни:
 none ,

 disclose ,

 auth ,

 compare ,

 search ,

 read ,

 write 

и
 manage .

Каждый уровень доступа подразумевает права всех предыдущих, а на уровне
 manage 

предоставляется полный доступ, в том числе административный. Уровень 
 write 

на самом деле представляет собой комбинацию уровней
 add 

и
 delete ,

которые, соответственно, ограничивают привилегии записи до добавления и удаления
объектов, указанных в поле
 <what> .

 
 

Уровень доступа
 none  

запрещает любой доступ, в том числе вывод информации об ошибках при возникновении таковых.
 

Уровень доступа
 disclose 

позволяет выводить информацию об ошибках при возникновении таковых.
 

Уровень доступа
 auth 

означает, что запрашивающему разрешается доступ к отдельному атрибуту
для выполнения операций аутентификации/авторизации (например,
 bind ),

остальной доступ запрещается. Это полезно для предоставления неаутентифицированным
клиентам минимально возможного уровня доступа к критическим ресурсам, таким как пароли.
 

Модель доступа
 priv 

основывается на явном задании привилегий доступа для каждого условия.
Знак
 = 

сбрасывает заданные ранее привилегии доступа; следовательно,
итоговые привилегии соответствуют тем, которые заданы только в этом условии.
Знаки
 + 

и
 - 

добавляют/удаляют привилегии доступа к уже существующим.
Привилегии могут быть:
 m 

для manage (управление),
 w 

для write (запись),
 a 

для add (добавление),
 z 

для delete (удаление),
 r 

для read (чтение),
 s  

для search (поиск),
 c  

для compare (сравнение),
 x 

для authentication (аутентификация) и
 d 

для disclose (вывод информации об ошибках).
В одном выражении можно указывать несколько из этих привилегий.
 0 

указывает, что никаких привилегий не предоставляется.
Это значение может быть использовано только само по себе (например, +0).
Имейте ввиду, что
 +az  -

это эквивалент
 +w .

 

Если никакого уровня или привилегий доступа не указано, значение по умолчанию - 
 +0 .

   
 ПОЛЕ <CONTROL> 

Необязательное поле
 <control> 

управляет ходом применения правил доступа. Оно может принимать формы:
 

         stop
        continue
        break
 

 

где
 stop 

(значение по умолчанию), означает, что в случае нахождения совпадения контроль доступа завершается.
Две других формы используются для продолжения обработки условий доступа. Форма
 continue 

позволяет перейти к рассмотрению других условий
 <who> 

в том же условии
 <access> ,

в результате чего может иметь место инкрементное изменение привилегий. Форма 
 break 

позволяет перейти к обработке других условий
 <access> ,

совпадающих с аналогичными целевыми объектами.
Рассмотрим пример (глупый):
 

         access to dn.subtree="dc=example,dc=com" attrs=cn
                by * =cs break

        access to dn.subtree="ou=People,dc=example,dc=com"
                by * +r
 

 

В этом примере всем даются привилегии на поиск и сравнение в пределах дерева
"dc=example,dc=com", а во втором правиле также разрешается чтение в пределах поддерева
"ou=People". Второй (ещё более глупый) пример:
 

         access to dn.subtree="dc=example,dc=com" attrs=cn
                by * =cs continue
                by users +r
 

 

В этом примере  всем даются привилегии на поиск и сравнение, а пользователям,
прошедшим проверку подлинности, дополнительно предоставляются привилегии на чтение.
 

Одним из полезных применений может быть простое предоставление привилегий на запись пользователю
 updatedn ,

отличному от
 rootdn .

В этом случае, поскольку
 updatedn 

требуется доступ на запись ко всем (или почти всем) данным,
в качестве первого правила доступа можно использовать
 

         access to *
                by dn.exact="cn=The Update DN,dc=example,dc=com" write
                by * break
 

 

Как следствие, если операция выполняется не от имени 
 updatedn ,

контроль доступа сразу переходит к рассмотрению последующих правил.
 
   
 ТРЕБОВАНИЯ ОПЕРАЦИЙ 

Операциям требуются различные привилегии доступа к различным частям
и совокупностям записей. Приводимое ниже краткое изложение применимо к
базам данных первичных механизмов манипуляции данными, таких как BDB и HDB.
Требования баз данных других механизмов могут отличаться (и часто отличаются).
 
 

Операция
 add 

требует привилегий
 add (=a) 

на псевдоатрибут
 entry 

добавляемой записи и привилегий
 add (=a) 

на псевдоатрибут
 children 

родительской по отношению к ней записи.
При добавлении записи-суффикса базы данных требуется доступ
 add 

на псевдоатрибут
 children 

пустого DN (""). Также, если на уровне базы данных была настроена проверка
ACL добавления контента (смотрите man-страницы
 slapd.conf (5)

или
 slapd-config (5)),

на все добавляемые атрибуты требуются привилегии
 add (=a) . 

 
 

Операция
 bind ,

при хранении данных аутентификации в каталоге, требует привилегий
 auth (=x) 

на атрибут, в котором хранятся эти данные (обычно
 userPassword ).

 
 

Операция
 compare 

требует привилегий
 compare (=c) 

на атрибут, который будет сравниваться.
 
 

Операция
 delete 

требует привилегий
 delete (=z) 

на псевдоатрибут
 entry  

удаляемой записи, и привилегий
 delete (=z) 

на псевдоатрибут
 children 

родительской по отношению к ней записи.
 
 

Операция
 modify 

требует привилегий
 write (=w) 

на модифицируемый атрибут.
Точнее, для добавления новых значений требуются привилегии 
 add (=a) , 

для удаления существующих значений требуются привилегии
 delete (=z) , 

а для замены существующих значений требуются одновременно привилегии
 delete 

и
 add (=az) ,

либо
 write (=w) .

 
 

Операция
 modrdn 

требует привилегий
 write (=w) 

на псевдоатрибут
 entry 

той записи, у которой модифицируется относительный DN, привилегий
 delete (=z) 

на псевдоатрибут
 children 

старой родительской по отношению к ней записи, привилегий
 add (=a) 

на псевдоатрибут
 children 

новой родительской по отношению к ней записи, и привилегий
 add (=a) 

на атрибуты, присутствующие в новом относительном DN.
Если
 deleteoldrdn 

установлен в 1, то также требуются привилегии
 delete (=z) 

на атрибуты, присутствующие в старом относительном DN.
 
 

Операция
 search 

требует привилегий
 search (=s) 

на псевдоатрибут
 entry 

записи-основы поиска searchBase (ПРИМЕЧАНИЕ: это было введено в OpenLDAP версии 2.4).
Далее, для каждой записи требуются привилегии
 search (=s) 

на атрибуты, которые указаны в поисковом фильтре.
Наконец, записи, отобранные в результате поиска, проверяются на наличие привилегий
 read (=r) 

на псевдоатрибут
 entry 

(для доступа на чтение к самой записи)
и доступа
 read (=r) 

к каждому значению каждого запрашиваемого атрибута.
Кроме того, для каждого объекта
 referral ,

используемого при генерации отсылок-продолжений, операция поиска требует доступа
 read (=r) 

на псевдоатрибут
 entry 

(для доступа на чтение к самому объекту referral),
а также доступа
 read (=r) 

к атрибуту, в котором содержится информация об отсылке
(обычно атрибут
 ref ).

 
 

Некоторые внутренние операции и некоторые элементы управления
 controls 

требуют специфических привилегий доступа.
Отображение
 authzID 

и элемент управления
 proxyAuthz 

требуют привилегий
 auth (=x) 

на все атрибуты, присутствующие в поисковом фильтре URI карт регулярных выражений (правая часть директив
 authz-regexp ).

Также требуются привилегии
 auth (=x) 

на атрибут
 authzTo 

авторизационной идентификационной сущности и/или атрибут
 authzFrom 

авторизованной идентификационной сущности. Вообще, при выполнении внутреннего поиска
в целях аутентификации или авторизации, специфичные для поиска привилегии
(смотрите приведённые выше требования доступа для операции search) ослабляются до
 auth .

 
 

Контроль доступа к записям в процессе поиска проверяется интерфейсом приёма запросов frontend,
поэтому полностью соблюдается всеми механизмами манипуляции данными; для всех остальных операций
и для фазы обнаружения записей операции поиска search полные семантики ACL поддерживаются
только первичными механизмами манипуляции данными, то есть
 back-bdb (5)

и
 back-hdb (5).

 
Некоторые другие механизмы манипуляции данными, такие как
 back-sql (5),

могут полностью поддерживать описанные семантики; другие могут поддерживать только часть из них,
или даже вести себя иначе в некоторых аспектах. Подробнее об этом можно узнать в
man-страницах, специфичных для конкретного механизма манипуляции данными.
 
   
 ПРЕДОСТЕРЕЖЕНИЯ 

Настоятельно рекомендуется явно использовать наиболее подходящий стиль
 <dnstyle> 

в условиях
 <what> 

и
 <who> 

во избежание возможных неверных спецификаций правил доступа, а также в целях улучшения производительности
(не следует без необходимости использовать поиск соответствия с регулярным выражением regex,
когда достаточно определения точного совпадения exact).
 

Администратор может создать правило
 

         access to dn.regex="dc=example,dc=com"
                by ...
 

 

ожидая, что оно будет соответствовать всем записям в поддереве "dc=example,dc=com".
Однако, на самом деле это правило соответствует любому DN,
содержащему где бы то ни было подстроку "dc=example,dc=com". То есть, данное правило верно и для
"uid=joe,dc=example,dc=com", и для "dc=example,dc=com,uid=joe".
 

Чтобы соответствовать желаемому поддереву, это правило должно быть составлено более точно:
 

         access to dn.regex="^(.+,)?dc=example,dc=com$"
                by ...
 

 

По соображениям производительности лучше будет использовать стиль subtree:
 

         access to dn.subtree="dc=example,dc=com"
                by ...
 

 

При составлении правил с подсовпадениями более правильно будет не использовать без необходимости
 <dnstyle> 

 regex .

Например, чтобы разрешить доступ к поддереву пользователя, совпадение с которым
определяется в условии
 <what> ,

этому же пользователю, можно составить правило:
 

         access to dn.regex="^(.+,)?uid=([^,]+),dc=example,dc=com$"
                by dn.regex="^uid=$2,dc=example,dc=com$$" write
                by ...
 

 

Однако, поскольку в условии
 <by> 

требуется всего лишь подстановка подстроки, более эффективным решением будет:
 

         access to dn.regex="^(.+,)?uid=([^,]+),dc=example,dc=com$"
                by dn.exact,expand="uid=$2,dc=example,dc=com" write
                by ...
 

 

По сути, если
 <dnstyle> regex 

подразумевает подстановку подстрок, то 
 exact 

(и другие связанные с DN значения
 <dnstyle> )

- нет, поэтому подстановка должна быть запрошена явно.
 

   
 ФАЙЛЫ 

 
 /usr/local/etc/openldap/slapd.conf 
конфигурационный файл slapd по умолчанию
 
   
 СМОТРИТЕ ТАКЖЕ 

 slapd (8),

 slapd-* (5),

 slapacl (8),

 regex (7),

 re_format (7)

 

"Руководство администратора OpenLDAP" ( http://www.OpenLDAP.org/doc/admin/,   http://pro-ldap.ru/tr/admin24/). 
   
 ПРИЗНАНИЕ ЗАСЛУГ 



 Программное обеспечение OpenLDAP 

разработано и поддерживается проектом OpenLDAP < http://www.openldap.org/ >.
 Программное обеспечение OpenLDAP 

является производным от релиза 3.3 LDAP Мичиганского Университета.

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ДИРЕКТИВА ACCESS 
 ПОЛЕ <WHAT> 
 ПОЛЕ <WHO> 
 ПОЛЕ <ACCESS> 
 ПОЛЕ <CONTROL> 
 ТРЕБОВАНИЯ ОПЕРАЦИЙ 
 ПРЕДОСТЕРЕЖЕНИЯ 
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