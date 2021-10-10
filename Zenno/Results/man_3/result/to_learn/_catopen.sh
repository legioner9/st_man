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
 
 
 
 catopen (3)   catopen  (3)   ( Solaris man: Библиотечные вызовы )   catopen  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  catopen  (3)   ( Русские man: Библиотечные вызовы )   catopen  (3)   ( Linux man: Библиотечные вызовы )   catopen  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

catopen, catclose - открывает/закрывает каталог сообщений
   
 СИНТАКСИС 

 #include < nl_types.h > 

 
 nl_catd catopen(const char * name , int  flag ); 

 

 int catclose(nl_catd  catalog ); 

   
 ОПИСАНИЕ 

Функция
 catopen() 

открывает каталог сообщений и возвращает дескриптор каталога.
Дескриптор считается действительным до вызова catclose() или exec().
Если для реализации дескрипторов каталогов используется файловый
дескриптор, то для него будет установлен флаг FD_CLOSEXEC.
 

Аргумент
 name 

указывает на имя каталога сообщений, который необходимо открыть. 
Если
 name 

указывает на абсолютный (т.е., содержащий символ '/') путь, то 
 name 

определяет адрес каталога сообщений. 
Иначе переменная окружения
 NLSPATH 

используется вместе с
 name 

и заменяется на 
 %N 

(см.
 locale (7)).

Не определено, будет ли использоваться
 NLSPATH ,

если процесс имеет права root.
Если
 NLSPATH 

не содержится в окружении или если каталог сообщений
не может быть открыт ни в одном из путей, указанных в этой переменной,
то используется путь, зависящий от реализации.
Он может зависеть от категории
 LC_MESSAGES 

локали в случае, когда аргумент
 flag 

имеет значение
 NL_CAT_LOCALE 

или от переменной окружения
 LANG 

в случае, когда аргумент
 flag 

равен 0.
Изменение категории локали LC_MESSAGES может привести
к признанию дескрипторов открытых каталогов недействительными.
 

Аргумент
 flag 

функции
 catopen 

используется для определения источника для используемого языка.
Если он установлен в
 NL_CAT_LOCALE ,

то будет использована текущая категория
 LC_MESSAGES 

локали. 
В противном случае будет использована переменная окружения
 LANG .

 

Функция
 catclose() 

закрывает каталог сообщений, указанный в
 catalog .

Все последующие обращения к каталогу, определяемому
 catalog ,

считаются неверными.
 

   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Функция
 catopen() 

возвращает дескриптор каталога сообщений типа
 nl_catd .

В случае ошибки она возвращает (nl_catd) -1 и устанавливает значение
 errno  

для сообщения об ошибке. Возможные коды ошибок те же, что и для функции
 open() .

 

Функция
 catclose() 

возвращает 0 или -1 в случае ошибки.
   
 ПЕРЕМЕННЫЕ ОКРУЖЕНИЯ 

 
 LC_MESSAGES 

 
Может задавать категорию LC_MESSAGES локали и, таким образом, определять
используемый язык в случае, когда
 flag 

установлен в
 NL_CAT_LOCALE .

 LANG 

 
Язык, используемый в случае, когда
 flag 

равен 0.
 
   
 ЗАМЕЧАНИЯ 

Выше приведено описание в соответствие с POSIX 1003.1-2001.
В glibc значение NL_CAT_LOCALE равно 1.
(Сравните с MCLoadAll ниже.)
Путь, используемый по умолчанию, варьируется, но обычно представляет
собой различные подкаталоги
 /usr/share/locale .

   
 ЗАМЕЧАНИЯ К LIBC4 И LIBC5 

Эти функции появились в Linux начиная с libc 4.4.4c.
В случае linux libc4 и libc5 дескриптор каталога
 nl_catd 

является файлом, отображаемым в память с помощью функции
mmap(), а не дескриптором файла.
Аргумент
 flag 

функции
 catopen() 

должен быть либо
 MCLoadBySet 

(=0) или
 MCLoadAll 

(=1).
Первое значение указывает, что части каталога будут подгружаться
по необходимости. Второе значение приводит к загрузке всего каталога
в память при вызове
 catopen() .

Путь поиска, используемый по умолчанию, варьируется, но обычно представляет
собой различные подкаталоги
 /etc/locale 

и
 /usr/lib/locale .

   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

POSIX 1003.1-2001.
В XPG 1987, Vol. 3 сказано:
 Аргумент flag функции catopen зарезервирован для будущего 

 использования и должен быть равен 0 .

Источник констант MCLoadBySet и MCLoadAll неясен. 
   
 СМ. ТАКЖЕ 

 catgets (3),

 setlocale (3)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 ПЕРЕМЕННЫЕ ОКРУЖЕНИЯ 
 ЗАМЕЧАНИЯ 
 ЗАМЕЧАНИЯ К LIBC4 И LIBC5 
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