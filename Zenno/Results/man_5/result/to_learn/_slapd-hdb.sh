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
 
 
 
 slapd-hdb (5) >>  slapd-hdb  (5)   ( Русские man: Форматы файлов ) 


   
 НАЗВАНИЕ 

slapd-bdb, slapd-hdb - механизмы манипуляции данными для slapd Berkeley DB.
   
 ОБЗОР 

 /usr/local/etc/openldap/slapd.conf 

   
 ОПИСАНИЕ 

Механизм манипуляции данными для
 slapd (8)

 bdb  использует для хранения данных пакет Oracle Berkeley DB (BDB).
Для ускорения доступа к данным он широко использует индексацию и кэширование.
 

Имейте ввиду, что механизм BDB является устаревшим, и в будущих выпусках OpenLDAP его поддержка
будет прекращена. Вместо него следует использовать  mdb .
 

 hdb  - это вариант механизма  bdb , использующий иерархическую модель базы данных, поддерживающую
переименование поддеревьев. Он эффективнее механизма  bdb  как с точки зрения потребления
дискового пространства, так и по рабочим характеристикам. Во всём остальном его поведение
идентично поведению  bdb , и в настройке применяются все те же параметры.
 

Следует отметить, что эти параметры призваны дополнять параметры конфигурации Berkeley DB,
задаваемые в файле
 DB_CONFIG 

в окружении базы данных. Подробное описание параметров конфигурации
 DB_CONFIG 

можно найти в документации Berkeley DB. Там, где настройки перекрывают друг друга,
приоритет имеют установки в файле
 DB_CONFIG .

   
 КОНФИГУРАЦИЯ 

Приведённые ниже директивы
 slapd.conf 

применяются к базам данных механизмов манипуляции данными  bdb  и  hdb . То есть они должны
следовать за строками "database bdb" или "database hdb" и находиться до последующих строк "backend"
или "database". Другие относящиеся к базам данных директивы описаны в man-странице
 slapd.conf (5).

 
 cachesize  <integer> 

 
Указывает размер (в количестве записей) поддерживаемого экземпляром базы данных механизма манипуляции
данными  bdb  или  hdb  кэша записей в оперативной памяти. Значение по умолчанию - 1000 записей.
 cachefree  <integer> 

 
Указывает, какое количество записей нужно высвободить из кэша записей, когда его размер достигает
ограничения  cachesize . Значение по умолчанию - 1 запись.
 checkpoint  <kbyte> <min> 

 
Указывает периодичность сброса журнала транзакций базы данных. Операция сброса в контрольной точке
выгружает буферы базы данных на диск и записывает информацию о контрольной точке в журнал. Выгрузка
данных произойдёт либо при записи данных размером  <kbyte>  Кбайт, либо по прошествии  <min> 
минут с момента последней выгрузки. По умолчанию оба аргумента установлены в ноль, в этом случае они
игнорируются. Если аргумент  <min>  отличен от нуля, каждые  <min>  минут будет запускаться
внутренняя задача по выгрузке данных. Более подробную информацию о сбросе в контрольных точках
смотрите в руководстве по Berkeley DB.
 checksum 

 
Включает проверку контрольной суммы страниц базы данных при их чтении с диска.
Эту настройку можно задать только перед тем, как будут созданы какие-либо файлы базы данных.
 cryptfile  <file> 

 
Указывает путь к файлу, содержащему ключ шифрования, который будет использован для шифрования базы данных.
Шифрование выполняется с использованием Berkeley DB-реализации AES. Имейте ввиду, что шифрование
может быть настроено только перед тем, как будут созданы какие-либо файлы базы данных, а изменение ключа
может быть осуществлено только после удаления текущей базы данных и повторного её создания.
По умолчанию шифрование не включено, и некоторые дистрибутивы Berkeley DB не поддерживают шифрование.
 cryptkey  <key> 

 
Указывает ключ шифрования, который будет использован для шифрования базы данных.
Эту директиву можно использовать, если создавать отдельный файл
 cryptfile 

нежелательно. Может быть указана только одна из директив
 cryptkey 

и
 cryptfile .

 dbconfig  <Berkeley-DB-setting> 

 
Указывает директиву конфигурации, которая будет помещена в файл
 DB_CONFIG 

в директории базы данных. Директива
 dbconfig 

- это просто удобный способ, позволяющий задавать все необходимые настройки в файле
 slapd.conf .

Параметры конфигурации Berkeley DB, задаваемые с помощью этой директивы, будут записаны в файл
 DB_CONFIG 

только если во время запуска сервера этого файла не существует, в противном случае они будут
полностью проигнорированы. Это позволяет задать первоначальные установки, при этом, если файл
 DB_CONFIG 

уже был настроен другими средствами, все настройки в нём не будут переопределены или сброшены.
Эту директиву можно задавать несколько раз по мере необходимости, например:
 
         dbconfig set_cachesize 0 1048576 0
        dbconfig set_lg_bsize 2097152
 

 

 dbnosync 

 
Указывает, что содержимое базы данных на диске не должно немедленно синхронизироваться при изменении
содержимого базы данных в памяти. Включение этой опции может повысить производительность за счёт
увеличения риска потери данных. Более подробную информацию смотрите в руководстве по Berkeley DB.
 dbpagesize    <dbfile> <size> 
Указывает, какой размер страницы использовать для конкретных файлов базы данных. Размер указывается
в единицах, равных 1024 байта. Значение по умолчанию для файла
 id2entry 

- 16, для всех остальных файлов значение по умолчанию зависит от размера блока файловой системы, в
которой располагается база данных (обычно 4 или 8). Максимальный размер, поддерживаемый BerkeleyDB
- 64. Обычно этот параметр изменять не следует, но если утилита BerkeleyDB "db_stat -d" показывает,
что в файле появляется большое количество переполненных страниц, установка большего размера страницы
может повысить производительность за счёт возможной потери целостности данных. Эта настройка
срабатывает только при создании файлов базы данных. Более подробную информацию смотрите в
руководстве по Berkeley DB.
 directory  <directory> 

 
Указывает директорию, где находятся BDB-файлы, содержащие эту базу данных и ассоциированные с ней
индексы. Для каждой базы данных должна быть определена отдельная директория. По умолчанию -
 /usr/local/var/openldap-data .

 dirtyread 

 
Позволяет считывать модифицированные данные, фиксация изменений которых ещё не произошла. Обычно
транзакции изолируются для предотвращения доступа других операций к незафиксированным данным.
Этот параметр может повысить производительность, но может также привести к возврату противоречивых
результатов, если данные поступили из транзакции, которая позже была отклонена. В этом случае
модифицированные данные вернутся в исходное состояние и последующий поисковый запрос вернёт другой
результат.
 dncachesize  <integer> 

 
Указывает максимальное количество DN в кэше DN в оперативной памяти. В идеальном случае этот кэш
должен быть настолько велик, чтобы вместить DN всех записей в базе данных. Если размер кэша DN задан
меньше, чем значение  cachesize , то он будет негласно увеличен до размера  cachesize .
Значение по умолчанию - 0, что означает отсутствие ограничений, то есть кэш DN может разрастаться
до любого требуемого размера.
 
Следует отметить, что  кэш DN  может временно
превышать настроенный размер. Это происходит в случае, когда при попытке освобождения кэша большое
количество записей являются заблокированными (из-за того, что в настоящее время они используются в
запросах). Кроме того, из  кэша DN  никогда не удаляются записи, дочерние записи которых закэшированы,
поэтому, в зависимости от структуры DIT, может быть закэшировано множество DN сверх установленного лимита.
 idlcachesize  <integer> 

 
Указывает размер (в слотах индексов) кэша индексов в оперативной памяти. Значение по умолчанию - ноль.
Чем больше это значение, тем больше скорость выполнения часто производимых поисковых запросов, в которых
анализируются проиндексированные записи. В базах данных  hdb  для обеспечения хорошей
производительности поиска требуется большое значение  idlcachesize , обычно в три раза превышающее значение
 cachesize 

(размер кэша записей) или даже больше.
 index  { <attrlist> | default } [ pres , eq , approx , sub , <special> ] 
Указывает индексы, которые поддерживаются для указанного атрибута (или списка атрибутов).
Некоторые атрибуты поддерживают не все индексы.
Если задан только список атрибутов  <attrlist> , для этих атрибутов будут поддерживаться индексы,
указанные как индексы по умолчанию  default . Обратите внимание, что задание индексов по умолчанию
не подразумевает, что будут проиндексированы все атрибуты. Кроме того, для лучшей производительности, для атрибута
 objectClass 

следует всегда настраивать индекс
 eq .

 
Может быть указано несколько специальных параметров индексирования. Тип индекса
 sub 

может быть представлен как три отдельных типа
 subinitial ,

 subany 

и
 subfinal .

Для запрета использования определяемого индекса для языковых подтипов может быть указан специальный тип
 nolang .

Для запрета использования определяемого индекса для именованных подтипов может быть указан специальный тип
 nosubtypes .

Примечание: при изменении установок  index  в
 slapd.conf (5)

требуется повторное построение индексов, смотрите
 slapindex (8);

динамическое изменение установок  index  путём выполнения операций LDAPModifying над "cn=config"
приводит к автоматическому онлайн-перепостроению индексов в фоновом режиме.
 linearindex 

 
Указывает
 slapindex 

индексировать по одному атрибуту за один проход. По умолчанию за один проход обрабатываются все
индексируемые атрибуты одной записи. При установке этого параметра каждый индексируемый атрибут
обрабатывается отдельно, и для выполнения индексации используется несколько проходов по всей
базе данных. Этот параметр повышает производительность
 slapindex ,

когда размер базы данных превышает размер  dbcache . Если размер  dbcache  достаточно велик,
устанавливать этот параметр не следует, поскольку это снизит производительность. Кроме того, по умолчанию
 slapadd 

выполняет полное индексирование и потому не требуется отдельно запускать
 slapindex .

С данным параметром
 slapadd 

не будет выполнять индексирование, и запуск
 slapindex 

необходим.
 lockdetect  { oldest | youngest | fewest | random | default }

 
Указывает, какую транзакцию следует прекратить при выявлении взаимной блокировки (deadlock).
Значение по умолчанию -
 random .

 mode  <integer> 

 
Указывает режим защиты файлов, которые будут иметь вновь созданные файлы индексов базы данных.
Значение по умолчанию - 0600.
 searchstack  <depth> 

 
Указывает глубину стека, используемого для оценки поискового фильтра. Оценка поисковых фильтров
происходит по стеку, в который помещаются вложенные условия AND / OR. Для каждого потока сервера
выделяется собственный стек. Глубина стека определяет, насколько комплексные фильтры могут быть
оценены без необходимости выделения дополнительной памяти. Применение поискового фильтра с глубиной
вложенности большей, чем глубина поискового стека, приведёт к тому, что для этой конкретной
операции поиска будет выделен отдельный стек. Подобное выделение может привести к значительному
падению производительности, однако определение слишком большого стека также приведёт к потреблению
значительного объема памяти. Каждый поисковый стек использует 512Kb для одного вложенного уровня
условий. Глубина стека по умолчанию - 16, то есть используется 8Mb памяти для каждого потока.
 shm_key  <integer> 

 
Указывает ключ для окружения BDB в разделяемой памяти. По умолчанию окружение BDB использует
отображаемые в памяти файлы. Если в параметре указано значение, отличное от нуля, оно будет
использовано в качестве ключа, идентифицирующего регион разделяемой памяти, в котором будет
располагаться окружение.
 
   
 КОНТРОЛЬ ДОСТУПА 

Механизмы манипуляции данными
 bdb 

и
 hdb 

соблюдают указанные в
 slapd.access (5)

семантики контроля доступа.
   
 ФАЙЛЫ 

 
 /usr/local/etc/openldap/slapd.conf 

 
конфигурационный файл
 slapd 

по умолчанию
 DB_CONFIG 

 
конфигурационный файл Berkeley DB.
 
   
 СМОТРИТЕ ТАКЖЕ 

 slapd.conf (5),

 slapd-config (5),

 slapd-mdb (5),

 slapd (8),

 slapadd (8),

 slapcat (8),

 slapindex (8),

документацию Berkeley DB.
   
 ПРИЗНАНИЕ ЗАСЛУГ 



 Программное обеспечение OpenLDAP 

разработано и поддерживается проектом OpenLDAP < http://www.openldap.org/ >.
 Программное обеспечение OpenLDAP 

является производным от релиза 3.3 LDAP Мичиганского Университета.

Разработку механизма манипуляции данными начал Kurt Zeilenga. Механизмы кэширования первоначально
разработал Jong-Hyuk Choi. Завершение работ и последующие доработки, а также механизм back-hdb -
Howard Chu.
 

 
   Index 
 
 НАЗВАНИЕ 
 ОБЗОР 
 ОПИСАНИЕ 
 КОНФИГУРАЦИЯ 
 КОНТРОЛЬ ДОСТУПА 
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