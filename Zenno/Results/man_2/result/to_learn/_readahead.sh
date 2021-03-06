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
 
 
 
 readahead (2) >>  readahead  (2)   ( Русские man: Системные вызовы )   readahead  (2)   ( Linux man: Системные вызовы ) 
   
 НАЗВАНИЕ 

readahead - упреждающее чтение одной или нескольких страниц файла в кэш страниц
   
 СИНТАКСИС 



 
#include < unistd.h >
 
 
 
 ssize_t  sys_readahead  (int  fd , loff_t  offset , size_t  count );


 
 
   
 ОПИСАНИЕ 

 
 

 readahead  считывает  count  страниц в кэш страниц. 
Если страница не находится внутри кэша страниц, то она добавляется туда.
 
 

 fd  является описателем для считываемого файла.
 offset  является адресом, с которого начинается чтение файла.
Страница в кэше страниц идентифицируется записью inode файла
сдвигом внутри файла.  fd  и  offset  используются для
идентификации страцицы в кэше страниц.
 
 

Сдвиг увеличивается на единицу для чтения следующей страницы
до тех пор, пока не считано  count  страниц.
Если  count  страницы имеют размер больше, чем размер файла,
то данные считываются только до размера файла.
 
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

 
 

 readahead  возвращает 0 при нормальном завершении работы, иначе
возвращается ошибка из раздела "Ошибки".
Если указанный сдвиг больше размера файла, то ничего не считывается
и возвращается 0.
 
   
 НАЙДЕННЫЕ ОШИБКИ 

 
 
 EBADF 
 readahead  не смог считать файл.
 
 
   
 АВТОРЫ 

Joy Latten.
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 НАЙДЕННЫЕ ОШИБКИ 
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