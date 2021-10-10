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
 
 
 
 slapd-sql (5) >>  slapd-sql  (5)   ( Русские man: Форматы файлов ) 

   
 НАЗВАНИЕ 

slapd-sql - механизм манипуляции данными для slapd SQL
   
 СИНТАКСИС 

/usr/local/etc/openldap/slapd.conf
   
 ОПИСАНИЕ 

Основное назначение данного механизма манипуляции данными
 slapd (8) -

ПРЕДСТАВИТЬ информацию, хранящуюся в некоторой реляционной СУБД, в виде поддерева LDAP без
какого-либо дополнительного программирования (не будем рассматривать в качестве программирования
инструкции SQL и (возможно) хранимые процедуры).
 

Например, у вас (некоего поставщика  услуг  Интернет) в реляционной СУБД имеется информация
об учётных записях пользователей, и вы хотите использовать современные решения, ожидающие, что такая
информация будет доступна через LDAP (для аутентификации пользователей, поиска адресов электронной
почты и т.п.). Либо вы хотите синхронизировать или распространять информацию между различными
сайтами/приложениями, использующими реляционные СУБД и/или LDAP. Или что-то ещё...
 

Этот механизм НЕ проектировался как механизм манипуляции данными общего назначения, использующий
реляционную СУБД вместо BerkeleyDB (которую использует стандартный механизм BDB), хотя с некоторыми
ограничениями он может использоваться в таком качестве. Дополнительную информацию по этому поводу
можно найти по адресу
 http://www.openldap.org/faq/index.cgi?file=378 

(OpenLDAP FAQ-O-Matic/General LDAP FAQ/Directories vs. conventional databases).
 

Идея (подробно раскрываемая ниже) заключается в использовании некоторых метаданных для трансляции
запросов LDAP в SQL-запросы, при этом реляционная схема данных остаётся без изменений и старые
приложения могут продолжать использовать её без каких-либо модификаций. Это позволяет SQL-приложениям
и LDAP-приложениям взаимодействовать без репликации и обмениваться данными по мере необходимости.
 

Механизм SQL спроектирован так, чтобы его можно было настроить на взаимодействие с практически любой
реляционной схемой данных без необходимости внесения изменений в исходный код (с помощью упомянутых
выше метаданных). Кроме того, он использует ODBC для соединения с реляционными СУБД, имеет богатые
возможности настройки под SQL-диалекты различных СУБД, то есть он может быть использован для интеграции
и обмена данными с различными СУБД, операционными системами, хостами и т.п., другими словами,
для работы в высоко гетерогенном окружении.
 

Этот механизм манипуляции данными является  экспериментальным .
   
 КОНФИГУРАЦИЯ 

Приведённые ниже директивы
 slapd.conf 

применяются к базам данных механизма манипуляции данными SQL. Они должны следовать за строкой
"database sql" и находиться до последующих строк "backend" или "database". Другие относящиеся к базам
данных директивы описаны в man-странице
 slapd.conf (5).

   
 КОНФИГУРАЦИЯ ИСТОЧНИКА ДАННЫХ 

 
 
 dbname <имя источника данных> 

 
Имя источника данных ODBC, который нужно использовать.
 
 

 dbhost <имя хоста> 

 

 dbpasswd <пароль> 

 

 dbuser <имя пользователя> 

 
Обычно три этих директивы не требуются, поскольку задаваемая в них информация берётся из источника
данных, указанного в директиве
 dbname .

Они позволяют переопределить настройки из источника данных. Кроме того, некоторые драйверы реляционных
СУБД могут потребовать явной передачи имени пользователя/пароля, даже если те указаны в источнике
данных (Примечание: директива
 dbhost 

в настоящий момент игнорируется).
 

   
 КОНФИГУРАЦИЯ ДИАПАЗОНА ПОИСКА 

В данных директивах указываются шаблоны SQL-запросов, используемые для разных диапазонов LDAP-поиска.
 
 
 subtree_cond <выражение SQL> 

 
Задаёт шаблон условий WHERE, используемый для формирования условия поиска по поддереву каталога
(dn="(.+,)?<dn>$"). Для разных диалектов SQL может быть различным (смотрите примеры).
По умолчанию этот шаблон строится на основании сведений о том, как нормализуются значения DN
(например,  "<upper_func>(ldap_entries.dn) LIKE CONCAT('%',?)" );
подробнее об этом в описании директив  upper_func ,  upper_needs_cast ,
 concat_pattern  и  strcast_func  в разделе "КОНФИГУРАЦИЯ ХЕЛПЕРА".
 
 children_cond <выражение SQL> 

 
Задаёт шаблон условий WHERE, используемый для формирования условия поиска дочерних записей каталога
(dn=".+,<dn>$"). Для разных диалектов SQL может быть различным (смотрите примеры).
По умолчанию этот шаблон строится на основании сведений о том, как нормализуются значения DN
(например,  "<upper_func>(ldap_entries.dn) LIKE CONCAT('%,',?)" );
подробнее об этом в описании директив  upper_func ,  upper_needs_cast ,
 concat_pattern  и  strcast_func  в разделе "КОНФИГУРАЦИЯ ХЕЛПЕРА".
 
 use_subtree_shortcut { YES | no } 

 
Не использовать условие поиска по поддереву каталога, если база поиска (searchBase) представляет
собой суффикс базы данных и диапазон поиска - subtree; вместо этого выбирать все записи.
 

 
   
 НАСТРОЙКА ВЫРАЖЕНИЙ 

В данных директивах указываются шаблоны SQL-запросов для загрузки схемы сопоставления метаданных,
добавления и удаления записей в таблице ldap_entries, и т.д. У всех этих директив, а также у директивы
subtree_cond должны быть заданные значения по умолчанию. Текущие значения по умолчанию можно посмотреть
в исходных кодах, либо в журнальной информации, выводимой, когда slapd запущен с уровнем журналирования
"-d 5" или выше. Обратите внимание, что номера параметров и их порядок не должны меняться.
 
 
 oc_query <выражение SQL> 

 
Запрос, используемый для сбора данных отображения объектных классов (objectClass) из таблицы
 ldap_oc_mappings . Подробнее об этом смотрите в разделе "ИСПОЛЬЗУЕМЫЕ МЕТАДАННЫЕ". По умолчанию:
 "SELECT id, name, keytbl, keycol, create_proc, delete_proc, expect_return FROM ldap_oc_mappings" .
 
 at_query <выражение SQL> 

 
Запрос, используемый для сбора данных отображения типов атрибутов (attributeType) из таблицы
 ldap_attr_mappings . Подробнее об этом смотрите в разделе "ИСПОЛЬЗУЕМЫЕ МЕТАДАННЫЕ". По умолчанию:
 "SELECT name, sel_expr, from_tbls, join_where, add_proc, delete_proc,
param_order, expect_return FROM ldap_attr_mappings WHERE oc_map_id=?" .
 
 id_query <выражение SQL> 

 
Запрос, используемый для отображения DN в запись из таблицы  ldap_entries . Подробнее об этом
смотрите в разделе "ИСПОЛЬЗУЕМЫЕ МЕТАДАННЫЕ". По умолчанию:
 "SELECT id,keyval,oc_map_id,dn FROM ldap_entries WHERE <DN match expr>" ,
где  <DN match expr>  составляется на основании знаний о том, как должны быть нормализованы
значения DN (например,  "dn=?" , если отсутствуют средства для перевода строк в верхний регистр;
обычно используется  "<upper_func>(dn)=?" ). Более подробную информацию можно найти в описании
директив  upper_func ,  upper_needs_cast ,  concat_pattern  и  strcast_func 
в разделе "КОНФИГУРАЦИЯ ХЕЛПЕРА".
 
 insentry_stmt <выражение SQL> 

 
Выражение, используемое для занесения новой записи в таблицу  ldap_entries .
Подробнее об этом смотрите в разделе "ИСПОЛЬЗУЕМЫЕ МЕТАДАННЫЕ". По умолчанию:
 "INSERT INTO ldap_entries (dn, oc_map_id, parent, keyval) VALUES (?, ?, ?, ?)" .
 
 delentry_stmt <выражение SQL> 

 
Выражение, используемое для удаления существующей записи из таблицы  ldap_entries .
Подробнее об этом смотрите в разделе "ИСПОЛЬЗУЕМЫЕ МЕТАДАННЫЕ". По умолчанию:
 "DELETE FROM ldap_entries WHERE id=?" .
 
 delobjclasses_stmt <выражение SQL> 

 
Выражение, используемое для удаления идентификатора существующей записи из таблицы  ldap_objclasses .
Подробнее об этом смотрите в разделе "ИСПОЛЬЗУЕМЫЕ МЕТАДАННЫЕ". По умолчанию:
 "DELETE FROM ldap_entry_objclasses WHERE entry_id=?" .
 

 
   
 КОНФИГУРАЦИЯ ХЕЛПЕРА 

Данные выражения используются для изменения присущего этому механизму манипуляции данными поведения
по умолчанию в зависимости от особенностей диалекта конкретной реляционной СУБД. В начале данного
раздела представлены параметры, относящиеся к нормализации строк и DN при построении фильтров.
Нормализация в LDAP не сводится к приведению всего и вся к верхнему или нижнему регистру; однако, в
качестве разумного компромисса для СУБД, чувствительных к регистру символов, механизм sql можно
настроить так, чтобы строки и DN приводились к верхнему регистру с помощью директивы  upper_func .
В некоторых СУБД при использовании функций с произвольными типами данных, например, строковыми
константами, требуется выполнить приведение типов, которое задействуется директивой  upper_needs_cast .
При необходимости может быть также предоставлена функция приведения типов (директива  strcast_func ).
Наконец, может понадобиться пользовательский шаблон конкатенации строк; он может быть предоставлен
директивой  concat_pattern .
 
 
 upper_func <имя функции SQL> 

 
Указывает имя функции, преобразующей заданное значение в верхний регистр. Такое преобразование
используется при выполнении сравнения без учёта регистра символов, если СУБД чувствительна к регистру
символов. Для разных SQL-диалектов эта функция может различаться (например,  UCASE ,  UPPER 
или что-то ещё; смотрите примеры). По умолчанию никакой функции не используется, то есть строки не
приводятся к верхнему регистру, поэтому поиск совпадения может выполняться с учётом регистра символов.
 
 upper_needs_cast { NO | yes } 

 
Если функция
 upper_func 

требует явного приведения типов при её применении к символьным строкам, задайте данную директиву в
 yes .

Используется приведение типов в форме  CAST (<arg> AS VARCHAR(<max DN length>)) , где
 <max DN length> 

- встроенное в back-sql значение; смотрите макрос
 BACKSQL_MAX_DN_LEN 

(в настоящее время - 255; обратите внимание, что встроенный лимит slapd (в макросе
 SLAP_LDAPDN_MAXLEN )

установлен в 8192). Эта директива является  экспериментальной  и может быть изменена в будущих версиях.
 
 strcast_func <имя функции SQL> 

 
Указывает имя функции, преобразующей заданное значение в строку для обеспечения надлежащего упорядочения.
Это используется в выражениях "SELECT DISTINCT" в строго типизированных СУБД без широкой поддержки
неявного приведения типов (таких как PostgreSQL), при указании символьной строки.
Эта директива является  экспериментальной  и может быть изменена в будущих версиях.
 
 concat_pattern <шаблон> 

 
В данной директиве задаётся
 шаблон ,

который используется для конкатенации строк. В этом
 шаблоне 

ДОЛЖНЫ содержаться два вопросительных знака '?', которые будут заменены на две строки, которые
требуется соединить. Значение по умолчанию -
 CONCAT(?,?) ;

форма, считающаяся достаточно универсальной (IBM db2, PostgreSQL) -
 ?||? ,

но при работе с символьными строками может потребоваться явное приведение типов:
 CAST(?||? AS VARCHAR(<length>)). 

В некоторых СУБД (IBM db2, MSSQL) хорошо работает форма
 ?+? . 

Тщательно изучите документацию по вашей СУБД, либо примеры, относящиеся к ней, для определения
поддерживаемых шаблонов.
Эта директива является  экспериментальной  и может быть изменена в будущих версиях.
 
 aliasing_keyword <строка> 

 
Определяет ключевое слово для указания псевдонима. Некоторые СУБД используют ключевое слово " AS "
(значение по умолчанию для данной директивы), другие не используют никаких ключевых слов.
 
 aliasing_quote <строка> 

 
Определяет символ, которым ограничиваются псевдонимы. Некоторые СУБД не требуют использования
каких-либо символов (значение по умолчанию для данной директивы), в других может потребоваться
использование одинарных или двойных кавычек.
 
 has_ldapinfo_dn_ru { NO | yes } 

 
Явное уведомление механизма манипуляции данными о наличии столбца dn_ru (DN в обратной форме в
верхнем регистре символов) в таблице  ldap_entries . Переопределяет автоматическую проверку
(требуется, например, для PostgreSQL/unixODBC).
Эта директива является  экспериментальной  и может быть изменена в будущих версиях.
 
 fail_if_no_mapping { NO | yes } 

 
Если эта директива установлена в
 yes ,

то операции записи  атрибута  принудительно завершаются неудачей, если нет подходящего отображения
между атрибутами LDAP и данными SQL. По умолчанию, те изменения, для которых невозможно определить
отображение, игнорируются. Данная директива никак не влияет на отображение объектных классов. Например, если
 структурный объектный класс (structuralObjectClass) 

записи не может быть отображён в SQL путём поиска его имени в таблице ldap_oc_mappings, операция
 add 

завершится неудачей независимо от установленного значения директивы
 fail_if_no_mapping .

Подробнее смотрите в разделе "ИСПОЛЬЗУЕМЫЕ МЕТАДАННЫЕ".
Эта директива является  экспериментальной  и может быть изменена в будущих версиях.
 
 allow_orphans { NO | yes } 

 
Если эта директива установлена в
 yes ,

то появляется возможность добавлять записи-сироты (то есть записи, у которых в базе данных нет
родительских записей). Использовать данную опцию следует с осторожностью, возможно, в сочетании с некими
специальными настройками на стороне СУБД, позволяющими динамически создавать недостающие родительские записи.
 
 baseObject [ <имя_файла> ] 

 
Указывает базе данных создавать запись baseObject в оперативной памяти и использовать её, вместо того,
чтобы осуществлять поиск этой записи в СУБД. Если был задан аргумент
 <имя_файла> 

(опциональный), данная запись считывается из указанного файла в формате
 LDIF (5);

в противном случае на основании содержимого RDN объекта  baseObject  создаётся запись с объектным
классом  extensibleObject . На практике, данная возможность может оказаться полезной, если информация
 ldap_entries  хранится в представлении (view), а не в таблице, и СУБД не поддерживает
 объединения (union) 

в представлениях, а значит данное представление может определять только одно правило вычисления структуры
записи для одного объектного класса. Данный вопрос обсуждается далее в разделе "ИСПОЛЬЗУЕМЫЕ МЕТАДАННЫЕ".
Эта директива является  экспериментальной  и может быть изменена в будущих версиях.
 
 create_needs_select { NO | yes } 

 
Указывает базе данных, требуется ли в случае создания записи в таблице  ldap_entries  последующее
выполнение запроса SELECT для сбора автоматически назначенных идентификаторов, либо они будут возвращены
хранимой процедурой.
 
 
 

 fetch_attrs <список_атрибутов> 

 

 fetch_all_attrs { NO | yes } 

 
Первая директива позволяет задать список атрибутов, которые при выполнении какой-либо операции должны
в любом случае быть извлечены в дополнение к тем, которые были запрошены самой операцией,
поскольку они необходимы для правильного использования механизма манипуляции данными. Например, здесь
следует перечислить все атрибуты, используемые в ACL. Вторая директива - это сокращённое указание того,
что при любой операции требуется извлекать все атрибуты. Обратите внимание, что динамически генерируемые
атрибуты, такие как  hasSubordinates ,  entryDN  и другие атрибуты, наличие которых зависит от
реализации, в этом случае  НЕ  генерируются для обеспечения согласованности с остальными
механизмами манипуляции данными slapd. В будущих версиях это может быть изменено.
 

 
 
 check_schema { YES | no } 

 
Указывает механизму манипуляции данными проверять соблюдение записью после модификации ограничений,
накладываемых схемой данных каталога, а также соблюдение цепочки наследования структурного объектного
класса при построении записи. По умолчанию директива установлена в
 yes .

 
 sqllayer <name> [...] 

 
Загружает слой с именем  <name>  в стек хелперов, которые используются для отображения DN из
представления LDAP в SQL-представление и обратно. Последующие аргументы передаются в процедуру
конфигурации слоя. Данная возможность является  сугубо экспериментальной , её следует использовать
с большой осторожностью. API слоёв до сих пор не стабилизировано, и потому не опубликовано.
 
 autocommit { NO | yes } 

 
Активизирует автоматическую фиксацию изменений; по умолчанию отключена.
 
 
   
 ИСПОЛЬЗУЕМЫЕ МЕТАДАННЫЕ 

 

Почти всё, о чём говорится далее, проиллюстрировано на примерах в директории
 servers/slapd/back-sql/rdbms_depend/ 

дерева исходных кодов OpenLDAP. В этой же директории находятся скрипты генерации баз данных примеров
для СУБД Oracle, MS SQL Server, mySQL и других (в том числе PostgreSQL и IBM db2).
 

Первое, что необходимо продумать, - это набор объектных классов LDAP, с помощью которых может быть
представлена информация из вашей реляционной СУБД.
 

Самый простой путь - это создать объектный класс для каждой сущности, которая была в вашей
ER-диаграмме, когда вы проектировали вашу реляционную схему. Любая реляционная схема, независимо от
того, насколько она нормализована, проектировалась уже после того, как была разработана некоторая
модель домена вашего приложения (например, учётные записи, сервисы и т.п. в модели поставщика услуг
Интернет), и используется с учётом сущностей этой модели, а не только таблиц нормализованной схемы.
Это означает, что для каждого атрибута каждого экземпляра такой сущности существует эффективный
SQL-запрос для получения его значения.
 

Кроме того, вы, возможно, хотите, чтобы ваши объектные классы соответствовали каким-то объектным
классам из стандартных схем данных, таким, например, как InetOrgPerson и ему подобные.
 

Так или иначе, уже на этапе обдумывания объектных классов необходимо определить способ трансляции
запросов операций LDAP в SQL-запрос (или серию SQL-запросов). Давайте займёмся операцией поиска SEARCH.
 

Пример: Предположим, что мы храним информацию о людях, работающих в нашей организации, в двух таблицах:
 

   PERSONS              PHONES
  ----------           -------------
  id integer           id integer
  first_name varchar   pers_id integer ссылается на persons(id)
  last_name varchar    phone
  middle_name varchar
  ...
 

 

(в таблице PHONES хранятся номера телефонов, ассоциируемые с людьми). У человека может быть несколько
номеров телефонов, тогда в таблице PHONES будет содержаться несколько записей с соответствующим
pers_id, или вообще не быть номеров телефонов (и записей в таблице PHONES с таким pers_id).
Объектный класс LDAP для представления такой информации может выглядеть так:
 

   person
  -------
  MUST cn
  MAY telephoneNumber $ firstName $ lastName
  ...
 

 

Для получения всех значений атрибутов cn человека с заданным ID, мы строим запрос:
 

   SELECT CONCAT(persons.first_name,' ',persons.last_name)
      AS cn FROM persons WHERE persons.id=?
 

 

Для получения значений атрибута telephoneNumber мы можем использовать:
 

   SELECT phones.phone AS telephoneNumber FROM persons,phones
      WHERE persons.id=phones.pers_id AND persons.id=?
 

 

Если мы хотим обслуживать LDAP-запросы с фильтрами типа (telephoneNumber=123*), мы можем построить
что-то вроде:
 

   SELECT ... FROM persons,phones
      WHERE persons.id=phones.pers_id
          AND persons.id=?
          AND phones.phone like '%1%2%3%'
 

 

(обратите внимание, что в шаблоне для поиска совпадения с telephoneNumber присутствует несколько
символов подстановки для учёта возможных вспомогательных символов, таких как пробелы, тире и т.п.;
это зависит от проекта, поскольку синтаксис атрибута telephoneNumber определяется отдельно).
Итак, если у нас есть сведения о том, какие таблицы содержат значения для каждого атрибута, как
объединять эти таблицы и как представить эти значения, мы можем попытаться автоматически генерировать
подобные выражения и транслировать поисковые фильтры в SQL-условия WHERE.
 

Для хранения таких сведений мы добавляем три новые таблицы в нашу схему базы данных и заносим в них
данные (смотрите примеры):
 

   ldap_oc_mappings (для упрощения примера некоторые столбцы не указаны)
  ---------------
  id=1
  name="person"
  keytbl="persons"
  keycol="id"
 

 

В этой таблице определяется отображение между объектным классом (имя которого находится в столбце "name")
и таблицей, содержащей первичный ключ для соответствующих записей. Так, в нашем примере информация об
объекте, описывающем человека, которую мы пытаемся представить в виде объектного класса "person",
располагается в двух таблицах (persons и phones), и идентифицируется содержимым столбца persons.id
(которое мы называем первичным ключом для этого объекта). В столбцах таблицы ldap_oc_mappings keytbl
и keycol будут храниться, соответственно, "persons" (имя таблицы) и "id" (имя столбца).
 

   ldap_attr_mappings (для упрощения примера некоторые столбцы не указаны)
  -----------
  id=1
  oc_map_id=1
  name="cn"
  sel_expr="CONCAT(persons.first_name,' ',persons.last_name)"
  from_tbls="persons"
  join_where=NULL
  ************
  id=<n>
  oc_map_id=1
  name="telephoneNumber"
  sel_expr="phones.phone"
  from_tbls="persons,phones"
  join_where="phones.pers_id=persons.id"
 

 

В этой таблице определяется отображение между атрибутами LDAP и SQL-запросами для загрузки значений
этих атрибутов. Обратите внимание, что в отличие от схемы данных LDAP здесь отсутствуют
 типы атрибутов ,

то есть значения атрибута "cn" для объектного класса "person" могут находиться в таблицах,
отличающихся от таблиц, где хранятся значения атрибута "cn" для каких-либо других объектных классов.
Таким образом, отображения атрибутов зависят от отображений объектных классов (в схеме данных LDAP
типы атрибутов не зависят от объектных классов). Поэтому у нас имеется столбец oc_map_id со ссылкой
на идентификатор из таблицы ldap_oc_mappings.
 

Мы делим SQL-запрос, загружающий данные для заданного атрибута, на три фрагмента. Первый указывается
в столбце sel_expr. Это выражение, которое помещается между ключевыми словами SELECT и FROM SQL-запроса,
и определяет ЧТО следует загружать. Во втором фрагменте (from_tbls) указывается список таблиц -
текст между ключевыми словами FROM и WHERE. Для удобства в нём могут содержаться псевдонимы (смотрите
примеры). Последний фрагмент (join_where) представляет собой часть условия WHERE SQL-запроса, в котором
(при его наличии) описывается условие соединения таблицы, содержащей данные для значения атрибута,
с таблицей, содержащей первичный ключ (соединение по внешним ключам или им подобным). Если данные для
значения атрибута хранятся в той же таблице, что и первичные ключи, в этом столбце остаётся значение NULL
(как в приведённом выше случае с атрибутом "cn").
 

Поскольку данная информация имеется у нас в виде трёх фрагментов, мы можем не только конструировать
запросы загрузки значений атрибутов по идентификатору записи (для этого мы могли бы хранить
SQL-запрос целиком), но также конструировать запросы, которые получают идентификаторы объектов,
соответствующих заданному поисковому фильтру (или, как минимум, части такого фильтра).
Примеры смотрите ниже.
 

   ldap_entries
  ------------
  id=1
  dn=<выбранный вами dn>
  oc_map_id=...
  parent=<идентификатор родительской записи>
  keyval=<значение первичного ключа>
 

 

В этой таблице определяется отображение между DN записей в вашем дереве LDAP и значениями первичных
ключей для соответствующих реляционных данных. У данных в этой таблице рекурсивная структура (столбец
parent ссылается на столбец id той же таблицы), что позволяет представить произвольную древовидную
структуру с использованием плоских реляционных данных. Имея идентификатор отображения объектного
класса (oc_map_id), мы можем определить таблицу и столбец, в которых хранится первичный ключ, а
значение этого ключа хранится в столбце keyval. Таким образом определяется точное соответствие
между записью LDAP и указанным DN.
 

Имейте ввиду, что такой дизайн таблицы (смотрите точный SQL-запрос создания таблицы) подразумевает
одно важное ограничение - значением первичного ключа должно быть целое число. Как показывает практика,
обычно это не вызывает проблем. Если же кому-то требуется поддержка других типов первичных ключей,
можно написать свой патч и отправить его в OpenLDAP ITS для включения в исходный код.
 

Кроме того, некоторые пользователи жалуются, что на самом деле им не нужны очень структурированные
деревья и они не хотят обновлять ещё одну таблицу всякий раз, когда они добавляют или удаляют данные
в реляционную схему. Такие люди могут использовать вместо реальной таблицы ldap_entries представление
(view), наподобие такого (предложено Robin Elfrink):
 

   CREATE VIEW ldap_entries (id, dn, oc_map_id, parent, keyval)
      AS
          SELECT 0, UPPER('o=MyCompany,c=NL'),
              3, 0, 'baseObject' FROM unixusers WHERE userid='root'
      UNION
          SELECT (1000000000+userid),
              UPPER(CONCAT(CONCAT('cn=',gecos),',o=MyCompany,c=NL')),
              1, 0, userid FROM unixusers
      UNION
          SELECT (2000000000+groupnummer),
              UPPER(CONCAT(CONCAT('cn=',groupnaam),',o=MyCompany,c=NL')),
              2, 0, groupnummer FROM groups;
 

 
 

Если ваша реляционная СУБД не поддерживает
 объединения (UNION) 

в представлениях, то только один объектный класс может быть отображён в
 ldap_entries ,

и нельзя будет создать baseObject; возможные обходные пути для этой ситуации можно найти в описании
директивы
 baseObject .

 
 

   
 ТИПОВОЙ ПРИМЕР РАБОТЫ МЕХАНИЗМА SQL 

При наличии загруженных метаданных, механизм SQL использует эти таблицы для определения набора
первичных ключей записей-кандидатов (в зависимости от диапазона и фильтра поиска). Он пытается
сделать это для каждого объектного класса, зарегистрированного в ldap_objclasses.
 

Пример: для нашего поискового запроса с фильтром (telephoneNumber=123*) мы получим следующий
сгенерированный запрос (загружающий идентификаторы записей-кандидатов):
 

   SELECT ldap_entries.id,persons.id, 'person' AS objectClass,
         ldap_entries.dn AS dn
    FROM ldap_entries,persons,phones
   WHERE persons.id=ldap_entries.keyval
     AND ldap_entries.objclass=?
     AND ldap_entries.parent=?
     AND phones.pers_id=persons.id
     AND (phones.phone LIKE '%1%2%3%')
 

 

(для поиска с диапазоном ONELEVEL),
либо "... AND dn=?" (для поиска с диапазоном BASE),
либо "... AND dn LIKE '%?'" (для поиска с диапазоном SUBTREE).
 

Затем для каждой записи-кандидата мы загружаем запрашиваемые атрибуты с использованием отдельного
запроса для каждого атрибута, наподобие такого:
 

   SELECT phones.phone AS telephoneNumber
    FROM persons,phones
   WHERE persons.id=? AND phones.pers_id=persons.id
 

 

Затем мы используем вызов test_filter() из API механизма frontend для тестирования записи на совпадение
с полным поисковым фильтром LDAP (поскольку мы не можем эффективно проверить, удовлетворяют ли наши
значения синтаксису (SYNTAX) соответствующего атрибута из схемы данных LDAP, мы транслируем этот фильтр
в наиболее лояльное SQL-условие для фильтрации записей-кандидатов), и отправляем сформированные данные
пользователю.
 

Операции ADD, DELETE, MODIFY и MODRDN также выполняются с использованием метаданных для каждого
отдельного атрибута (столбец add_proc и другие). В этих полях можно указать выражение SQL или вызов
хранимой процедуры, с помощью которых можно добавить или удалить заданные значения заданного атрибута
в записях с указанным keyval (смотрите примеры, главным образом по PostgreSQL, ORACLE и MSSQL, поскольку
на момент написания этой man-страницы в MySQL не было поддержки хранимых процедур).
 

Мы просто добавили дополнительные столбцы в таблицы ldap_oc_mappings и ldap_attr_mappings, в которые
помещаются выражения для выполнения (такие, как create_proc, add_proc, del_proc и другие), а также
флаги, регулирующие порядок параметров, передаваемых в эти выражения. Чтобы разобраться в том, что
такое передаваемые параметры, и получить больше информации по этому вопросу, обратитесь к примерам -
для тех, кто знаком с обсуждаемыми выше концепциями, они говорят сами за себя.
 

   
 РАСПРОСТРАНЁННЫЕ ПОДХОДЫ К РАБОТЕ 

Прежде всего следует напомнить, что, помимо прочих существенных отличий от полной модели данных LDAP,
продемонстрированная выше концепция не поддерживает напрямую такие возможности, как несколько
объектных классов в одной записи и отсылки. К счастью, их легко адаптировать к данной схеме. Для этого
в схему базы данных нужно добавить ещё одну таблицу: ldap_entry_objectclasses(entry_id, oc_name).
 

В эту таблицу помещается любое количество имён объектных классов, которые участвуют в формировании
соответствующих записей, в дополнение к тому классу, который упомянут в таблице отображений. Механизм
SQL автоматически добавляет отображения атрибута "objectclass" для каждого значения объектного класса
из данной таблицы. Так например, имея отображение для объектного класса "inetOrgPerson" (в основной
таблице отображений), вы можете использовать для запросов той же записи фильтры, в которых фигурирует
объектный класс "person" (из дополнительной таблицы).
 

Раньше отсылки были реализованы отдельно, методом добавления дополнительной таблицы, позволявшей
помещать атрибут "ref" в любую запись с одновременным добавлением сведений о дополнительном объектном
классе "referral" в таблицу ldap_entry_objclasses. В текущей реализации отсылки рассматриваются по
аналогии с любой другой определённой пользователем схемой данных, в связи с тем, что класс "referral"
является структурным объектным классом. Предлагаемая практика - определять запись "referral" в таблице
ldap_oc_mappings. В связанных с нею записях будут определяться атрибуты именования, такие как "ou"
или "cn", а также атрибут "ref", содержащий URL. В случае, если требуется иметь несколько отсылок в
одной записи, можно создать отдельную таблицу для URL, в которой URL будут отображаться на
соответствующие записи. Использование атрибутов именования обычно требует занесения сведений об
объектном классе "extensibleObject" в таблицу ldap_entry_objclasses.
 
 

   
 ОГРАНИЧЕНИЯ 

Как уже отмечалось, данный механизм манипуляции данными не следует рассматривать как замену другим
механизмам хранения данных, но скорее как шлюз к имеющимся данным в реляционных СУБД, которые
требуется получить в LDAP-форме.
 

Механизм back-sql поддерживает операционный атрибут  hasSubordintes  в результатах операций
поиска Search и сравнения Compare; также он частично поддерживается в фильтрах. Ввиду конструктивных
ограничений фильтр "вынос мозга"
 (!(hasSubordinates=TRUE)) 
вместо того, чтобы вернуть все листовые записи, вообще не даст результатов, поскольку будет раскрыт
в SQL-условие  ... AND NOT (1=1) . Если вам требуется найти все листовые записи, используйте
фильтр  (hasSubordinates=FALSE) .
 

Значение с синтаксисом directoryString в форме "__First___Last_" (на месте символов нижнего подчёркивания
подразумеваются пробелы, ASCII-символ 0x20) соответствует своему "правильному" аналогу "First_Last".
В настоящий момент механизм back-sql не поддерживает такое соответствие, если не приведённые к
"правильному" виду данные были записаны средствами СУБД. Если же происходит попытка записи не приведённых
к "правильному" виду данных через back-sql, то в базу фактически будут помещены "правильные" данные.
 
 

   
 ВОЗМОЖНЫЕ ОШИБКИ 

Если таблица
 ldap_entry_objclasses 

пуста, фильтры по атрибуту
 objectClass 

не находят вообще никаких записей-кандидатов. В качестве обходного пути решения этой проблемы в данную
таблицу нужно добавить как минимум одну запись, не важно, действующая она или нет.
 
 

   
 НАЛОЖЕНИЕ КЭШИРУЮЩЕГО ПРОКСИ-СЕРВЕРА 

Наложение кэширующего прокси-сервера позволяет кэшировать поисковые запросы LDAP в локальной базе
данных. Подробнее смотрите в
 slapo-pcache (5).

   
 ПРИМЕРЫ 

Примеры SQL-модулей можно найти в директории slapd/back-sql/rdbms_depend/ дерева исходных кодов OpenLDAP.
   
 КОНТРОЛЬ ДОСТУПА 

Механизм манипуляции данными
 sql 

соблюдает семантики контроля доступа, указанные в man-странице
 slapd.access (5)

(в том числе привилегию доступа
 disclose ,

если во время компиляции она была включена).
   
 ФАЙЛЫ 

 
 
 /usr/local/etc/openldap/slapd.conf 
конфигурационный файл slapd по умолчанию.
 
   
 СМОТРИТЕ ТАКЖЕ 

 slapd.conf (5),

 slapd (8).

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 КОНФИГУРАЦИЯ 
 КОНФИГУРАЦИЯ ИСТОЧНИКА ДАННЫХ 
 КОНФИГУРАЦИЯ ДИАПАЗОНА ПОИСКА 
 НАСТРОЙКА ВЫРАЖЕНИЙ 
 КОНФИГУРАЦИЯ ХЕЛПЕРА 
 ИСПОЛЬЗУЕМЫЕ МЕТАДАННЫЕ 
 ТИПОВОЙ ПРИМЕР РАБОТЫ МЕХАНИЗМА SQL 
 РАСПРОСТРАНЁННЫЕ ПОДХОДЫ К РАБОТЕ 
 ОГРАНИЧЕНИЯ 
 ВОЗМОЖНЫЕ ОШИБКИ 
 НАЛОЖЕНИЕ КЭШИРУЮЩЕГО ПРОКСИ-СЕРВЕРА 
 ПРИМЕРЫ 
 КОНТРОЛЬ ДОСТУПА 
 ФАЙЛЫ 
 СМОТРИТЕ ТАКЖЕ 
 
 
 
 
 
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