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
 
 
 
 dbopen (3)   dbopen  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  dbopen  (3)   ( Русские man: Библиотечные вызовы )   dbopen  (3)   ( Linux man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

dbopen - методы доступа к базам данных
   
 СИНТАКСИС 

 #include < sys/types.h >
#include < limits.h >
#include < db.h >
DB *
dbopen(const char *file, int flags, int mode, DBTYPE type,
 
     const void *openinfo);
 

   
 ОПИСАНИЕ 

 Dbopen 

- это библиотека для взаимодействия с файлами баз данных. Поддерживаются
форматы файлов btree, hashed и UNIX file. Формат btree представляет собой
отсортированную, сбалансированную древовидную структуру. Формат hashed -
это гибкая, динамическая схема хэширования. Формат линейного файла -
поток байтов с фиксированной или переменной длиной записи. Сами форматы и
форматы файлов описываются детально на соответствующих страницах руководства
 btree (3),

 hash (3)

и
 recno (3).

 

Dbopen открывает 
 file 

для чтения и/или записи. Файлы, не предназначенные для хранения на
диске, могут быть созданы установкой параметра file, равного NULL.
 

Флаги 
 flags 

и параметры 
 mode 

те же, что определены для функции
 open (2),

тем не менее, только флаги O_CREAT, O_EXCL, O_EXLOCK, O_NONBLOCK,
O_RDONLY, O_RDWR, O_SHLOCK и O_TRUNC имеют значение.
Открытие файла базы данных O_WRONLY невозможно.
 

Установленный тип аргумента
 type 

равен типу DBTYPE (как определено в файле заголовков < db.h >)
и может быть задан как DB_BTREE, DB_HASH или DB_RECNO.
 

Аргумент 
 openinfo 

является указателем на структуру метода доступа, описанную на странице
руководства, посвященной методам доступа. Если 
 openinfo 

равна NULL, каждый метод доступа будет использовать установки по
умолчанию для системы и метода доступа. 
 

 Dbopen 

возвращает указатель на структуру DB при успешном выполнении вызова и NULL при ошибке.
Структура DB определена в файле < db.h > и содержит, как минимум, следующие поля:
 
 typedef struct {
 DBTYPE type;
int (*close)(const DB *db);
int (*del)(const DB *db, const DBT *key, u_int flags);
int (*fd)(const DB *db);
int (*get)(const DB *db, DBT *key, DBT *data, u_int flags);
int (*put)(const DB *db, DBT *key, const DBT *data,
 
     u_int flags);
int (*sync)(const DB *db, u_int flags);
int (*seq)(const DB *db, DBT *key, DBT *data, u_int flags);
 
} DB;
 

 

Эти элементы описывают тип базы данных и набор функций, выполняющих
различные действия. Функции используют указатель на структуру, возвращаемый
 dbopen ,

и иногда один или несколько указателей на структуры ключ/данные и
на значения флагов.
 
 type 
Тип основного метода доступа (и формат файла).
 close 
Указатель на функцию, которая записывает любую кэшированную информацию
на диск, освобождает занятые ресурсы и закрывает основной(-ые) файл(-ы). Пока
пары ключ/данные могут быть кэшированы в памяти, ошибка при синхронизации
файла функциями
 close 

или
 sync 

может привести к повреждению или потере данных.
Функция
 close 

возвращает -1 при ошибках (меняет при этом, соответственно, значение переменной
 errno )

или 0 при успешном завершении вызова.
 del 
Указатель на функцию для удаления пар ключ/данные из базы данных.
 
Установленное значение параметра
 flag 

может быть следующим:
 
 
 R_CURSOR 
Удаление записи, определяемой указателем записи.
Указатель предварительно должен быть инициализирован.
 
 

 
Функция 
 delete 

возвращает -1 при ошибке (меняет при этом, соответственно, значение переменной
 errno ),

0 при успешном выполнении и 1, если указанного ключа 
 key 

нет в файле.
 fd 
Указатель на функцию, которая возвращает описатель файла, лежащий в
основе базы данных. Описатель файла, относящийся к одному файлу,
возвращается всем процессам, которые вызывают
 dbopen 

с этим именем файла
 file .

Этот описатель может быть использован как аргумент для блокирующих функций
 fcntl (2)

и
 flock (2) . 

Файловые описатели необязательно ассоциировать с какими-либо из
файлов, лежащих в основе используемого метода доступа. Для баз данных в
памяти файловые описатели недоступны. Функция
 fd 

возвращает -1 при ошибке (меняет при этом, соответственно, значение переменной
 errno )

или описатель файла при успешном выполнении.
 get 
Указатель на функцию, которая является интерфейсом для поиска по ключу в
базе данных. Адрес и размер данных, связанных с указанным ключом  
 key ,

возвращается в структуре, указываемой 
 data .

Функция 
 get 

возвращает -1 при ошибке (меняет при этом, соответственно, значение переменной
 errno ),

0 при успешном выполнении и 1, если ключа
 key 

нет в файле.
 put 
Указатель на функцию, сохраняющую пары ключ/данные в базе данных.
 
Установленное значение параметра 
 flag 

может быть одним из следующих:
 
 
 R_CURSOR 
Замена пары ключ/данные, определяемой указателем записи.
Указатель предварительно должен быть инициализирован.
 R_IAFTER 
Указание данных непосредственно после тех данных, которые связаны с ключом
 key ;

создание новой пары ключ/данные.
Номер записи добавленной пары ключ/данные возвращается в структуре
 key .

(Применимо только в случае метода доступа DB_RECNO).
 R_IBEFORE 
Указание данных непосредственно перед данными, связанными с ключом
 key ;

создание новой пары ключ/данные.
Номер записи добавленной пары ключ/данные возвращается в структуре
 key .

(Применимо только в случае метода доступа DB_RECNO).
 R_NOOVERWRITE 
Добавление новой пары ключ/данные, только если ключ еще не существовал.
 R_SETCURSOR 
Сохранение пары ключ/данные, установка или инициализация позиции
указателя записи для ссылки на нее. (Применимо только в случае метода
доступа DB_BTREE и DB_RECNO).
 
 

 
Значение R_SETCURSOR доступно только в случае методов доступа DB_BTREE 
и DB_RECNO, поскольку они предполагают, что ключи имеют определенный
порядок, который не изменяется.
 
Значения R_IAFTER и R_IBEFORE доступны только в случае методе доступа
DB_RECNO, поскольку предполагается, что метод доступа позволяет
создавать новые ключи. Это возможно, только  если ключи отсортированы и
независимы, например, они могут представлять собой номера записей.
 
Обычное поведение функции 
 put 

предусматривает ввод новой пары ключ/данные,
заменяя при этом уже существующий ключ.
 
Функция 
 put 

возвращает -1 при ошибке (меняет при этом, соответственно, значение переменной
 errno ),

0 при успешном выполнении и 1, если установленное значение флага R_NOOVERWRITE равно
значению
 flag 

и ключ в файле уже существует.
 seq 
Указатель на функцию, которая является интерфейсом для последовательного поиска
в базе данных. Адрес и размер ключа возвращается в структуре, определяемой
 key ,

а адрес и размер данных - в структуре, определяемой 
 data .

 
Последовательный поиск пары ключ/данные может быть начат в любой момент,
и позиция указателя записи не подвергнется изменениям при вызове функций
 del ,

 get ,

 put 

или
 sync .

Изменение базы данных в процессе последовательного просмотра отразится на
просмотре, т.е. запись, вставленная позади указателя, не будет возвращена,
пока не будет возвращена запись, вставленная перед указателем.
 
Значение флага
 должно 

быть равно одному из следующих значений:
 
 
 R_CURSOR 
Возвращаются данные, связанные с указанным ключом.
Отличается от функции
 get 

тем, что устанавливает указатель записи на положение ключа или инициализирует этот указатель.
При методе доступа DB_BTREE необязательно, чтобы возвращаемый ключ в точности 
соответствовал указанному. Возвращаемый ключ - наименьшее число, но оно больше
определенного ключа или равно ему. При этом допускается частичное соответствие 
ключей и поиск их в диапазонах.
 R_FIRST 
Возвращается первая пара ключ/данные из базы данных, а указатель записи устанавливается 
или инициализируется для ссылки на нее.
 R_LAST 
Возвращается последняя пара ключ/данные из базы данных, а указатель записи
устанавливается или инициализируется для ссылки на нее. Применимо
только для методов доступа DB_BTREE и DB_RECNO.
 R_NEXT 
Пара ключ/данные возвращается и ставится непосредственно после указателя. 
Если указатель не был установлен, она занимает положение флага R_FIRST.
 R_PREV 
Возвращается пара ключ/данные и ставится непосредственно перед указателем. 
Если указатель не был установлен, она занимает положение флага R_LAST.
Применимо только для методов доступа DB_BTREE и DB_RECNO.
 
 

 
R_LAST и R_PREV подходят только методам доступа DB_BTREE и DB_RECNO, поскольку
в данном случае предполагается, что ключи расположены в строгом неизменном порядке.
 
Функция
 seq 

возвращает -1 при ошибке вызова (изменяя при этом значение переменной
 errno ),

0 при успешном его выполнении и 1, если не обнаруживается пары ключ/данные, меньшей 
или большей по значению, чем указанный или текущий ключ. 
Если используется метод доступа DB_RECNO, а файл базы данных представляет собой 
специальный символьный файл (и нет доступных сложившихся пар ключ/данные), то функция
 seq 

возвращает значение 2.
 sync 
Указатель на функцию, которая записывает любые кэшированные данные на диск.
Если база данных находится только в памяти, функция
 sync 

не выполняет никаких действий и всегда безошибочна.
 
Аргумент flag может принимать следующее значение:
 
 
 R_RECNOSYNC 
При методе доступа DB_RECNO этот флаг служит причиной применения
функции sync к файлу btree, лежащему в основе файла recno, а не к самому файлу
recno (см. поле
 bfname 

на странице руководства 
 recno (3)

для более полной информации).
 
 

 
Функция
 sync 

возвращает -1 при ошибке вызова (меняя при этом значение переменной
 errno )

или 0 при успешном его выполнении.
 
   
 ПАРЫ КЛЮЧ/ДАННЫЕ 

Доступ ко всем типам файлов основан на парах ключ/данные.
И ключ, и данные описываются следующей структурой данных:
 

typedef struct {
 
void *data;
 

size_t size;
 

} DBT;
 

Элементы структуры DBT определяются так:
 
 data 
Указатель на строку байтов.
 size 
Размер строки байтов.
 
 

Байтовые строки ключа и данных могут ссылаться на строки практически
неограниченной длины, хотя любые две из них должны помещаться в доступной
памяти одновременно. Не забывайте, что методы доступа не предоставляют Вам
гарантий выравнивания байтовых строк.
   
 НАЙДЕННЫЕ ОШИБКИ 

Функция 
 dbopen 

может некорректно завершить работу и изменить
значение переменной
 errno 

соответственно ошибке, определенной в библиотечных функциях
 open (2)

и
 malloc (3)

, или на следующие ошибки:
 
 [EFTYPE] 
Файл неверного формата.
 [EINVAL] 
Указанные параметры (функция хэширования и т.д.) не совместимы 
с текущими установками файла, не имеют смысла для данной функции (например,
использование указателя записи без его предварительной инициализации), или
имеется несоответствие версий файлов и программного обеспечения.
 
 

Функция 
 close 

может некорректно завершить работу и изменить
значение переменной
 errno 

на ошибку, определенную в библиотечных функциях:
 close (2),

 read (2),

 write (2),

 free (3)

или
 fsync (2).

 

Функции 
 del ,

 get ,

 put 

и
 seq 

могут некорректно завершить работу и изменить
значение переменной
 errno 

на ошибку, определенную в библиотечных функциях
 read (2),

 write (2),

 free (3)

или
 malloc (3).

 

Функция
 fd 

может некорректно завершить работу и изменить значение переменной
 errno 

на ENOENT (для баз данных, находящихся только в памяти).
 

Функция 
 sync 

может некорректно завершить работу и изменить
значение переменной
 errno 

на ошибку, определенную в библиотечной функции
 fsync (2).

   
 СМ. ТАКЖЕ 

 btree (3),

 hash (3),

 mpool (3),

 recno (3)

 
 LIBTP: Portable, Modular Transactions for UNIX ,

Margo Seltzer, Michael Olson, USENIX proceedings, Winter 1992.
   
 НАЙДЕННЫЕ ОШИБКИ 

Название типа DBT является сокращением от ``data base thang'' и используется
в настоящее время,
поскольку никто еще не придумал подходящего для него имени,
которое ранее нигде не применялось.
 

Интерфейс описателя файла устарел и будет удален в будущей его версии.
 

Ни один из методов доступа не предоставляет пользователю каких-либо форм 
совместного доступа к системе, соединения или транкзаций.
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ПАРЫ КЛЮЧ/ДАННЫЕ 
 НАЙДЕННЫЕ ОШИБКИ 
 СМ. ТАКЖЕ 
 НАЙДЕННЫЕ ОШИБКИ 
 
 
 
 
 
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