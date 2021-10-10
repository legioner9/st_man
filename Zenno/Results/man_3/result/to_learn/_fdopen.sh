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
 
 
 
 fdopen (3)   fdopen  (3)   ( Solaris man: Библиотечные вызовы )   fdopen  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  fdopen  (3)   ( Русские man: Библиотечные вызовы )   fdopen  (3)   ( Linux man: Библиотечные вызовы )   fdopen  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

fopen, fdopen, freopen - функции для открытия потоков
   
 СИНТАКСИС 

 #include < stdio.h > 

 
 FILE *fopen(const char * path , const char * mode ); 

 

 FILE *fdopen(int  fildes , const char * mode ); 

 

 FILE *freopen(const char * path , const char * mode , FILE * stream ); 

   
 ОПИСАНИЕ 

Функция
 fopen 

открывает файл с именем
 path 

и связывает его с потоком.
 

Параметр
 mode 

указывает на строку, начинающуюся с одной из следующих последовательностей
(за ними могут следовать дополнительные символы):
 
 r 

 
Открыть текстовый файл для чтения. Чтение начинается с начала файла.
 r+ 

 
Открыть для чтения и записи. Чтение или запись начинаются с начала файла.
 w 

 
"Урезать" файл до нулевой длины или создать текстовый файл и открыть его для записи.
Запись начинается с начала файла.
 w+ 

 
Открыть для чтения и записи. Файл создается, если до этого его не существовало,
в противном случае он "урезается". Чтение или запись начинаются с начала файла.
 a 

 
Открыть для дописывания (записи в конец файла). Файл создается, если до этого
его не существовало. Запись осуществляется в конец файла.
 a+ 

 
Открыть для чтения и дописывания (записи в конец файла). Файл создается, если до
этого его не существовало. Чтение или запись производятся с конца файла.
 
 

Строка
 mode 

может также включать в себя символ ``b'' в качестве последнего символа или
символа, входящего в любые описанные выше двухсимвольные комбинации.
Это требование является строгим только в случае, если требуется 
совместимость этой версии с ANSI X3.159-1989
(``ANSI C''); символ ``b'' игнорируется во всех
POSIX-совместимых системах, включая Linux.
Другие системы могут иначе обращаться к текстовым и бинарным файлам,
и добавление ``b'' может оказаться полезным, если Вы осуществляете ввод-вывод
в двоичный файл; возможно, Ваша программа будет когда-нибудь работать с
не-Unix окружением.
 

Любой созданный файл будет иметь атрибуты
 S_IRUSR | S_IWUSR | S_IRGRP | S_IWGRP | S_IROTH | S_IWOTH 

(0666), как модифицированный величиной umask процесса (см.
 umask (2) ). 

 

Чтение и запись могут накладываться друг на друга в потоке, открытом
для чтения/записи, в любом порядке. Заметим, что ANSI C требует, чтобы
между чтением/записью использовались функции позиционирования в файле,
пока операция ввода не встретит конец файла. Если это условие не
выполняется, то при чтении разрешается возвращать результат, не совпадающий
с самым последним изменением. То есть будет хорошим тоном (а иногда и
действительно необходимым в Linux) использовать функции
 fseek 

или
 fgetpos 

между операциями чтения и записи в одном потоке. Эти операции могут
фактически быть "пустыми" (как, например,  fseek(..., 0L,SEEK_CUR) ,
вызванная для того, чтобы возник ее побочный эффект синхронизации).
 

Открытие файла в режиме дописывания ( a  в качестве первого символа
 mode )

приводит к тому, что все последующие операции записи в этот поток
производятся в конец файла, как если бы перед ними была вызвана функция
 
fseek(stream,0,SEEK_END);
 

 

Функция
 fdopen 

связывает поток с существующим описателем файла
 fildes .

Режим
 mode 

потока (одно из следующих значений: "r", "r+", "w", "w+", "a", "a+")
должен быть совместим с режимом описателя файла.
Указатель файловой позиции в новом потоке принимает значение, равное значению 
 fildes ,

а указатели ошибок и конца файла по значению равны нулю.
Режимы "w" или "w+" не "урезают" файл.
Описатель файла не скопирован и будет закрыт, когда поток, созданный
 fdopen ,

закрывается. Результат применения
 fdopen 

в общем объекте памяти неопределен.
 

Функция 
 freopen 

открывает файл с именем
 path 

и связывает его с потоком
 stream .

Исходный поток (если такой существовал) закрывается. Параметр
 mode 

используется, как и в функции
 fopen . 

Основной задачей функции
 freopen 

является изменение файла, связанного со стандартным текстовым потоком
 ( stderr ,  stdin , or  stdout ).

   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

При успешном завершении
 fopen 

 fdopen 

и
 freopen 

возвращают указатель
 FILE .

Иначе возвращается
 NULL ,

а в глобальную переменную
 errno 

записывается код ошибки.
   
 НАЙДЕННЫЕ ОШИБКИ 

 
 EINVAL 

 
Режим
 mode 

переданный
 fopen ,

 fdopen ,

или
 freopen 

является неверным.
 
 

Функции
 fopen ,

 fdopen 

и
 freopen 

при ошибках устанавливают значение
 errno 

равным какому-либо значению из определенных в
 malloc (3).

 

Функция
 fopen 

при ошибках устанавливает значение
 errno 

равным какому-либо значению из определенных в 
 open (2).

 

Функция
 fdopen 

при ошибках устанавливает значение
 errno 

равным какому-либо значению из определенных в
 fcntl (2).

 

Функция
 freopen 

при ошибках устанавливает
 errno 

равным какому-либо значению из определенных в
 open (2),

 fclose (3)

и
 fflush (3).

   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

Функции
 fopen 

и
 freopen 

соответствуют стандарту ANSI X3.159-1989 (``ANSI C'').  Функция
 fdopen 

соответствует стандарту IEEE Std1003.1-1988 (``POSIX.1'').
   
 СМ. ТАКЖЕ 

 open (2),

 fclose (3),

 fileno (3)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 НАЙДЕННЫЕ ОШИБКИ 
 СООТВЕТСТВИЕ СТАНДАРТАМ 
 СМ. ТАКЖЕ 
 
 
 
 
 
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