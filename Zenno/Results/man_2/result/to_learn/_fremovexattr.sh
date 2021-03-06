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
 
 
 
 fremovexattr (2) >>  fremovexattr  (2)   ( Русские man: Системные вызовы )   fremovexattr  (2)   ( Linux man: Системные вызовы ) 
   
 НАЗВАНИЕ 

removexattr, lremovexattr, fremovexattr - удаляют расширенные атрибуты
   
 СИНТАКСИС 


 #include < sys/types.h > 
 #include < attr/xattr.h > 

 int removexattr (const char * path , const char * name ); 
 int lremovexattr (const char * path , const char * name ); 
 int fremovexattr (int  filedes , const char * name ); 
 


   
 ОПИСАНИЕ 

Расширенные атрибуты являются парами
 name : value 

ассоциированными с записями inode (файлы, каталоги, символьные ссылки и т.п.).
Они являются расширениями к обычным атрибутам, ассоциированными со всеми
записями inode в системе (например, данные
 stat (2)).

Полный обзор концепции расширенных атрибутов можно посмотреть в
 attr (5).

 

 removexattr 

удаляет расширенный атрибут, определяемый
 name 

и ассоциированный с заданным путем
 path 

в файловой системе.
 

 lremovexattr 

идентично
 removexattr ,

за исключением случая символьной ссылки, где расширенный атрибут удаляется
с самой ссылки, а не с файла, на который она ссылается.
 

 fremovexattr 

идентично
 removexattr ,

только расширенный атриут удаляется с открываемого файла, на который указывает
 filedes 

(возвращаемый от
 open (2))

рассматривается вместо
 path .

 

Расширенный атрибут
 name 

является просто строкой, заканчивающейся на NULL.
Имя включает префикс пространства имен - их может быть несколько,
разрозненные пространства ассоциируются с разными записями inode.
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

При нормальном завершении работы возвращается 0.
При ошибках возвращается -1 и
 errno 

устанавливается соответственно ошибке.
 

Если указанный атрибут не существует, то
 errno 

устанавливаетс в ENOATTR.
 

Если расширенные атрибуты не поддерживаются файловой системой или отключены, то
 errno 

устанавливается в ENOTSUP.
 

Ошибки, документированные для системного вызова
 stat (2)

также применимы и тут.
   
 АВТОРЫ 

Andreas Gruenbacher,
< a.gruenbacher@computer.org >

и команда разработчиков SGI XFS,
< linux-xfs@oss.sgi.com >.

Пожалуйста, отправляйте все замечания или сообщения по ошибкам на этот адрес.
   
 СМ. ТАКЖЕ 

 getfattr (1),

 setfattr (1),

 open (2),

 stat (2),

 setxattr (2),

 getxattr (2),

 listxattr (2),

 attr (5).

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 АВТОРЫ 
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