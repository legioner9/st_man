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
 
 
 
 fts_close (3)   fts_close  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  fts_close  (3)   ( Русские man: Библиотечные вызовы )   fts_close  (3)   ( Linux man: Библиотечные вызовы ) BSD mandoc 
   
 НАЗВАНИЕ 



 fts 

 
 fts_open 

 
 fts_read 

 
 fts_children 

 
 fts_set 

 
 fts_close  

 - просмотр файловой иерархии

   
 СИНТАКСИС 

Fd #include < sys/types.h >

Fd #include < sys/stat.h >

Fd #include < fts.h >

 
 FTS *  
 

fts_open (char * const *path_argv int options int (*compar)(const FTSENT **, const FTSENT **)); 

 
 FTSENT * 
 

fts_read (FTS *ftsp); 

 
 FTSENT * 
 

fts_children (FTS *ftsp int options); 

 
 int 
 

fts_set (FTS *ftsp FTSENT *f int options); 

 
 int 
 

fts_close (FTS *ftsp); 

   
 ОПИСАНИЕ 

Функции 
 fts 

созданы для просмотра файловой иерархии
 UNIX .  

Сразу должно быть видно, что функция
fts_open (); 

возвращает "имя" файловой иерархии, которое затем 
используется другими функциями
 fts 

 
Функция 
fts_read (); 

возвращает указатель на структуру, описывающую один из файлов
в файловой системе. Функция
fts_children (); 

возвращает указатель на связанный список структур, каждая из которых
описывает один из файлов, содержащихся в каталоге иерархии. В общем
случае, каталоги обходятся двумя разными путями - в прямом порядке
(перед тем, как обработаны их потомки), и в обратном порядке (после
того, как обработаны все потомки каталога). Файлы обрабатываются только
один раз. Возможен "логический" просмотр иерархии, когда игнорируются
символьные ссылки, и "физический", когда осуществляется следование по
символьным ссылкам; также следование можно упорядочить, или осуществлять
перемещения беспорядочно, по частям.
 

Определены две структуры (типа typedef) в include-файле
Aq Pa fts.h .

Первая - структура 
Fa FTS ,

представляющая собственно иерархию файлов. Вторая - структура
Fa FTSENT ,

представляющая иерархию файлов в файлах. Обычно, стуктура
Fa FTSENT

возвращается для каждого файла в файловой иерархии.
В этом руководстве понятия "файл" и "структура FTSENT" в общем взаимозаменяемы.
Структура 
Fa FTSENT

содержит по меньшей мере следующие поля, подробнее описанные ниже:

 typedef struct _ftsent {
        u_short fts_info;               /* флаги для структуры FTSENT */
        char *fts_accpath;              /* путь доступа */
        char *fts_path;                 /* начальный путь */
        short fts_pathlen;              /* strlen(fts_path) */
        char *fts_name;                 /* имя файла */
        short fts_namelen;              /* strlen(fts_name) */
        short fts_level;                /* глубина (от -1 до N) */
        int fts_errno;                  /* номер ошибки в файле (file errno) */
        long fts_number;                /* местное числовое значение */
        void *fts_pointer;              /* местный адрес */
        struct ftsent *fts_parent;      /* родительский каталог */
        struct ftsent *fts_link;        /* структура следующего файла */
        struct ftsent *fts_cycle;       /* циклическая структура */
        struct stat *fts_statp;         /* информация о  stat (2) */
} FTSENT;
 

 

Эти поля определяются таким образом:
 
 

 Fa  fts_info


 
Один из последующих флагов описывает возвращенное значение стурктуры
Fa FTSENT

и файла, который ею характеризуется.
За исключением каталогов, в которых нет ошибок
( FTS_D 

)

 
все эти элементы являются терминалом, то есть они не будут повторно
обходиться, а их потомки не будут обходиться вообще.
 
 

 FTS_D 


 
Каталог, посещаемый в прямом порядке.
 FTS_DC 


 
Каталог, вызвавший зацикливание по дереву. (Поле 
Fa fts_cycle

структуры
Fa FTSENT

будет заполнено.)
 FTS_DEFAULT 


 
Любая структура
Fa FTSENT , 

представляющая тип файла, неявно описанного одним из значений
Fa fts_info .

 FTS_DNR 


 
Каталог, который не может быть прочитан.
Это значение возвращается при ошибке, и поле
Fa fts_errno

будет заполнено тем, что вызвало ошибку.
 FTS_DOT 


 
Файл, названный
`.'

или
`..'

который не был определен как файловое имя в
fts_open (); 

(см.
 FTS_SEEDOT ) 

 
 FTS_DP 


 
Каталог, посещаемый в обратном порядке. Содержимое структуры
Fa FTSENT

будет неизменно, как если-бы он посещался в прямом порядке, то есть с полем
Fa fts_info , 

установленным в 
 FTS_D 

 
 FTS_ERR 


 
Это значение возвращается при ошибке, и поле
Fa fts_errno

будет заполнено тем, что вызвало ошибку.
 FTS_F 


 
Простой файл.
 FTS_NS 


 
Файл, для которого нет доступной информации 
 stat (2).


Содержимое поля
Fa fts_statp

не определено.
Это значение возвращается при ошибке, и поле
Fa fts_errno

будет заполнено тем, что вызвало ошибку.
 FTS_NSOK 


 
Файл, для которого информация о 
 stat (2)


не была запрошена. Содержимое поля
Fa fts_statp

не определено.
 FTS_SL 


 
Символьная ссылка.
 FTS_SLNONE 


 
Символьная ссылка, указывающая на несуществующий объект.
Содержимое поля
Fa fts_statp

определяет ссылку на информацию о свойствах файла для самой символьной ссылки.
 
 

 Fa  fts_accpath


 
Путь к файлу относительно текущего каталога.
 Fa  fts_path


 
Путь к файлу относительно начального каталога.
Этот путь содержит в себе (как приставку) путь, определенный в
fts_open (.); 

 Fa  fts_pathlen


 
Длина строки, на которую ссылается
Fa fts_path .

 Fa  fts_name


 
Имя файла.
 Fa  fts_namelen


 
Длина строки, на которую ссылается
Fa fts_name .

 Fa  fts_level


 
Глубина погружения в дерево иерархии, пронумерованная от -1 до N,
на которой был обнаружен файл. Структура 
Fa FTSENT ,

представляющая родительский каталог относительно начальной точки поиска,
обозначена как -1, а структура
Fa FTSENT

для самой начальной точки поиска обозначена как 0.
 Fa  fts_errno


 
До возврата структуры
Fa FTSENT

от функций
fts_children (); 

или
fts_read (, ); 

с его полем
Fa fts_info , 

установленным в
 FTS_DNR 

 
 FTS_ERR 

или
 FTS_NS 

 
поле
Fa fts_errno

содержит значение внешней переменной
 errno ,  

обозначающей причину ошибки. В другом случае, содержание поля
Fa fts_errno

не определено.
 Fa  fts_number


 
Это поле создано для использования приложениями и не модифицируется функциями 
 fts 

 
При инициализации оно устанавливается в 0.
 Fa  fts_pointer


 
Это поле создано для использования приложениями и не модифицируется функциями
 fts 

 
При инициализации оно устанавливается в 
 NULL 

 
 Fa  fts_parent


 
Указатель на структуру
Fa FTSENT , 

обращающейся в иерархии к файлу непосредственно над текущим файлом, то
есть к каталогу, членом которого является текущий файл. Родительский
каталог начальной точки поиска также может быть доступен, правда только
при условии, что поля
Fa fts_level ,

Fa fts_number

и
Fa fts_pointer

будут проинициализированы.
 Fa  fts_link


 
До возврата от функции
fts_children (, ); 

поле
Fa fts_link

указывает на следующую структуру в связанном списке содержимого каталога
(заканчивавающихся NULL). Иначе, содержимое поля 
Fa fts_link

не определено.
 Fa  fts_cycle


 
Если каталог вызывает зацикливание по иерархии (смотри
 FTS_DC ), 

либо из-за жесткой связи между двумя каталогами, либо символьной сслыкой,
указывающей на каталог, то поле
Fa fts_cycle

структуры будет указывать на структуру
Fa FTSENT

в иерархии, которая ссылается на такой-же файл, что и текущая структура
Fa FTSENT .

Иначе, содержимое поля 
Fa fts_cycle

не определено.
 Fa  fts_statp


 
Указатель на
 stat (2),


информацию о файле.
 
 

 

Единственный буфер, используемый для всех путей всех файлов в иерархии.
Следовательно, поля
Fa fts_path

и
Fa fts_accpath

должны быть 
 NULL -terminated 



 только 

для файлов, к которым чаще всего обращается
fts_read (.); 

Для использования этих полей для обращения к любым файлам,
представленных другими структурами
Fa FTSENT

необходимо, чтобы буфер пути был изменен,
используя информацию, содержащуюся в поле 
Fa fts_pathlen

структуры
Fa FTSENT .

Любое изменение должно быть обратно восстановлено перед
дальнейшими попытками вызыва
fts_read (.); 

Поле
Fa fts_name

всегда
 NULL -terminated. 



   
 FTS_OPEN 

Функция
fts_open (); 

указывает на массив символьных указателей, обозначающих один или
несколько путей, образующих логическую файловую иерархию, по которой
идет поиск. Массив должен заканчиваться указателем на
 NULL 

 
 

Из нескольких существующих параметров хотя-бы один (либо
 FTS_LOGICAL 

либо
 FTS_PHYSICAL 

 
должен быть указан.
С помощью
 or  параметрам присваиваются значения: 



 
 

 FTS_COMFOLLOW 


 
Этот параметр принуждает перемещаться по любой символьной ссылке, определенной
как корневой путь, несмотря на то, определен или нет флаг
 FTS_LOGICAL 

 
 FTS_LOGICAL 


 
Этот параметр принуждает функции
 fts 

выдавать структуру
Fa FTSENT

для целей символьной ссылки вместо самой символьной ссылки.
Если этот флаг включен, то единственные символьные ссылки,
для которых приложениям выдаются структуры
Fa FTSENT

- это ссылки, указывающие на несуществуюшие файлы.
Также
 FTS_LOGICAL 

или
 FTS_PHYSICAL 

 должны 

присутствовать для работы функции
fts_open (.); 

 FTS_NOCHDIR 


 
Для оптимизации работы функции
 fts 

меняют каталоги, по которым они следуют по файловой иерархии. Это имеет
один побочный эффект - приложения не могут точно определять, что они
находятся в одном каталоге во время перемещения по дереву. Флаг
 FTS_NOCHDIR 

выключает такую оптимизацию, и функции
 fts 

не будут при нем менять текущий каталог. Обратите внимание, что
приложения сами не должны изменять свой текущий каталог и пытаться
получить доступ к файлам, пока не указан флаг
 FTS_NOCHDIR 

и функции 
fts_open (); 

не переданы абсолютные пути в качестве параметров.
 FTS_NOSTAT 


 
По умолчанию, возвращаемые структуры
Fa FTSENT

обращаются к информации о файлах (поле
Fa statp ) 

в каждом просмотренном файле.
Данный параметр снимает это требование (для оптимизации процесса),
позволяя функциям
 fts 

установить поле
Fa fts_info

в значение
 FTS_NSOK 

и оставлять содержание поля 
Fa statp

неопределенным.
 FTS_PHYSICAL 


 
Этот параметр принуждает функции
 fts 

выдавать структуру
Fa FTSENT

самих символьных ссылкок вместо файлов, на которые они указывают. Если
этот флаг установлен, то для всех символьных ссылок в файловой иерархии
их структуры
Fa FTSENT

возвращаются приложениям. Также
 FTS_LOGICAL 

или
 FTS_PHYSICAL 

 должны 

присутствовать для работы функции
fts_open (.); 

 FTS_SEEDOT 


 
По умолчанию, до тех пор, пока не указаны как параметры пути к
fts_open (,); 

любые файлы с именами
`.'

или
`..'

, 
обнаруженные в файловой иерархии, игнорируются.
Данный флаг принуждает фукнции
 fts 

возвращать структуры
Fa FTSENT

для таких файлов.
 FTS_XDEV 


 
Этот флаг предотвращает
 fts 

от вхождения в каталоги, которые имеют номер устройства, отличный от
файла, с которого началось погружение.
 
 

 

Параметр
compar (); 

задает определяемую пользователем функцию, которая используется для
упорядочивания прохождения по иерархии. Ему требуется два указателя на
указатели к структурам
Fa FTSENT

как параметры, и он должен возвращать отрицательное значение, ноль, или
положительное число для того, чтобы показать, расположен ли файл, на
который указывает первый параметр, перед (относительно текущего
упорядочивания), на одном уровне, или после файла, на который указывает
второй параметр. Поля
Fa fts_accpath ,

Fa fts_path

и
Fa fts_pathlen

структуры 
Fa FTSENT

могут быть
 никогда 

не использованы в таком сравнении.
Если поле
Fa fts_info

установлено в
 FTS_NS 

или 
 FTS_NSOK 

 
то поле
Fa fts_statp

может не использоваться.
Если параметр
compar (); 

установлен в
 NULL 

 
то порядок прохождения каталогов определяется
параметрами, указанными в
Fa path_argv

для корневого пути, и в порядке, перечисленном в каталоге
для всего остального.
   
 FTS_READ 

Функция
fts_read (); 

возвращает уаказатель на структуру
Fa FTSENT , 

описывающую файл в иерархии. Каталоги (корректно считываемые и не
образующие зацикливаний), посещаются как минимум дважды - первый раз в
прямом прохождении, и второй раз в обратном. Все остальные файлы
посещаются минимум один раз. (Жесткие связи между каталогами, не
образующие зацикливаний, или символьные ссылки на символьные ссылки
приведут к тому, что файлы будут посещаться более чем один раз, а
каталоги - более чем два раза.)
 

Когда все члены иерархии возвращены,
fts_read (); 

возвращает 
 NULL 

и устанавливает внешнюю переменную
 errno 

в 0.
Если происходит ошибка, не имеющая отношения к файлу в иерархии,
fts_read (); 

возвращает
 NULL 

и устанавливает соответсвенно
 errno 

в некоторое значение.
Если происходит ошибка, связанная с возвращенным файлом, то
возвращается указатель на структуру
Fa FTSENT , 

а
 errno 

может быть установлен в какое-то значение, а может и не быть (см.
Fa fts_info ) .

 

Структура 
Fa FTSENT , 

возвращаемая
fts_read (); 

может быть переписана после вызова
fts_close (); 

в том же файловом потоке иерархии, или, после вызова
fts_read (); 

в том же файловом потоке иерархии, пока они не представляют файл
типа "каталог", в этом случае они не будут переписаны до вызова
fts_read (); 

после того, как структура
Fa FTSENT

будет возвращена функцией
fts_read (); 

в прямом порядке.
   
 FTS_CHILDREN 

Фукнция
fts_children (); 

возвращает указатель на структуру
Fa FTSENT , 

описывающую первый член связанного списка файлов в каталоге, 
(оканчивающихся NULL и представленных структурой
Fa FTSENT ), 

наиболее часто возвращаемых
fts_read (.); 

Список связан через поле
Fa fts_link

структуры
Fa FTSENT , 

и упорядочен определенной пользователем функцией сравнения, если таковая
существует. Регулярные вызовы
fts_children (); 

будут пополнять этот связанный список.
 

В особом случае, если
fts_read (); 

еще не вызывалась для иерархии, то
fts_children (); 

возвратит указатель на файлы в
логическом каталоге, что соответствует 
fts_open (,); 

т.е. параметры, переданные функции
fts_open (.); 

Иначе, если структура
Fa FTSENT , 

слишком часто возвращаемая функцией
fts_read (); 

не каталог, посещаемый в прямом порядке, и не пустой каталог (не
содержащий файлов), то
fts_children (); 

возвратит
 NULL 

и установит
 errno 

в ноль.
Если произойдет сбой, то
fts_children (); 

возвратит
 NULL 

и соответственно установит
 errno 

в нужное значение.
 

Структура
Fa FTSENT , 

возвращаемая
fts_children (, ); 

может быть переписана после вызова
fts_children (,); 

fts_close (); 

или
fts_read (); 

в том же файловом потоке иерархии.
 

 Параметр 

должен быть установлен в следующих значений:
 
 

 FTS_NAMEONLY 


 
Тут необходимы только имена файлов.
Содержимое всех полей в возвращаемом связанном
списке структур неопределено, за исключением полей
Fa fts_name

и
Fa fts_namelen .

 
 

   
 FTS_SET 

Функция
fts_set (); 

позволяет приложениям пользователя определять, обрабатывать или нет дальше файл
Fa f

в потоке
Fa ftsp .

Функция
fts_set (); 

возвращает 0 в случае успеха, и -1 в случае, если произошла ошибка.
 Параметр 

должен быть установлен в одно из следующих значений:
 
 

 FTS_AGAIN 


 
Повторно посетить файл; файл любого типа может быть повторно посещен.
Последующий вызов
fts_read (); 

возвратит файл, к которому идет обращение. Поля
Fa fts_stat

и
Fa fts_info

структуры будут переинициализированы в этот момент, но никакие поля
больше не должны будут меняться. Эта опция значима только для наиболее
часто возвращаемых файлов от 
fts_read (.); 

Обычно используют ее для посещения каталогов в обратном порядке, тогда
она принуждает повторно посетить каталог (в прямом и обратном порядке),
а также все его потомки.
 FTS_FOLLOW 


 
Ссылочный файл должен быть символьной ссылкой. Если ссылочный файл - один
из наиболее часто возвращаемых
fts_read (,); 

то следующий вызов
fts_read (); 

возвратит файл с полями
Fa fts_info

и
Fa fts_statp ,

повторно инициализированными, для показа цели символьной ссылки вместо
самой символьной ссылки. Если ссылочный файл - один из наиболее часто
возвращаемых
fts_children (,); 

то поля
Fa fts_info

и
Fa fts_statp

структуры, при возврате от
fts_read (,); 

будут показывать цель символьной ссылки вместо самой символьной ссылки.
В любом случае, если цель символьной ссылки не существует, то поля
возвращаемой структуры не будут меняться, а поле
Fa fts_info

будет установлено в 
 FTS_SLNONE 

 
 

Если цель ссылки - каталог, то возврат прямого прохождения,
сопровождаемый возвратом всех его потомков, сопровождаемый возвратом в
обратном порядке, закончен.
 FTS_SKIP 


 
Никакие потомки данного файла не посещены.
Файл может быть одним из наиболее часто возвращаемых либо структурой
fts_children (); 

либо
fts_read (.); 

 
 

   
 FTS_CLOSE 

Функция
fts_close (); 

закрывает поток файловой иерархии
Fa ftsp

и восстанавливает текущий каталог в каталог, откуда был вызван
fts_open (); 

для октрытия
Fa ftsp .

Функция
fts_close (); 

возвращает 0 в случае успеха, и -1 в случае ошибки.
   
 СООБЩЕНИЕ ОБ ОШИБКАХ 

В случае неудачного завершения функции
fts_open (); 

переменная
 errno 

будет приравнена к одному коду ошибки из библиотеке функций
 open (2)


и
 malloc (3).


 

В случае неудачного завершения функции
fts_close (); 

переменная
 errno 

будет установлена в одно из обозначений ошибок из библиотеке функций
 chdir (2)


и
 close (2).


 

В случае неудачного завершения функций
fts_read (); 

и
fts_children (); 

переменная
 errno 

будет установлена в одно из обозначений ошибок из библиотеки функций
 chdir (2),


 malloc (3),


 opendir (3),


 readdir (3)


и
 stat (2).


 

Кроме того, в случае неудачного завершения функций
fts_children (,); 

fts_open (); 

и
fts_set (); 

переменная
 errno 

будет установлена в одно из следующих значений:
 
 

 Bq  Er EINVAL



 
Параметры были неправильными.
 
 

   
 СМ. ТАКЖЕ 

 find (1),


 chdir (2),


 stat (2),


 qsort (3)


   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

BSD 4.4. Ожидается, что утилита
 fts 

будет включена в дальнейшей версии
St -p1003.1-88 .

   
 ДОСТУПНОСТЬ 

Эти функции доступны в версиях Linux от glibc2.
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 FTS_OPEN 
 FTS_READ 
 FTS_CHILDREN 
 FTS_SET 
 FTS_CLOSE 
 СООБЩЕНИЕ ОБ ОШИБКАХ 
 СМ. ТАКЖЕ 
 СООТВЕТСТВИЕ СТАНДАРТАМ 
 ДОСТУПНОСТЬ 
 
 
 
 
 
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