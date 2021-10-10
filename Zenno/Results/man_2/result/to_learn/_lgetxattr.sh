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
 
 
 
 lgetxattr (2) >>  lgetxattr  (2)   ( Русские man: Системные вызовы )   lgetxattr  (2)   ( Linux man: Системные вызовы ) 
   
 НАЗВАНИЕ 

getxattr, lgetxattr, fgetxattr - получает расширенное значение атрибутов
   
 СИНТАКСИС 


 #include < sys/types.h > 
 #include < attr/xattr.h > 

 ssize_t getxattr (const char * path , const char * name , 
 				 void * value , size_t  size ); 
 ssize_t lgetxattr (const char * path , const char * name , 
 				 void * value , size_t  size ); 
 ssize_t fgetxattr (int  filedes , const char * name , 
 				 void * value , size_t  size ); 
 


   
 ОПИСАНИЕ 

Расширенные атрибуты являются парами
 name : value 

ассоциированными с записями inode (файлы, каталоги, символьные ссылки и т.п.).
Они являются расширениями к обычным атрибутам, ассоциированными со всеми
записями inode в системе (например, данные
 stat (2)).

Полный обзор концепции расширенных атрибутов можно посмотреть в
 attr (5).

 

 getxattr 

получает значение
 value 

расширенного атрибута, идентифицированного по имени
 name 

и ассоциированного с указанным путем
 path 

в файловой системе.
Длина атрибута
 value 

возвращается.
 

 lgetxattr 

идентично
 getxattr ,

за исключением случаев символьной ссылки, когда рассматривается
ссылка сама по себе, а не тот файл, на который она указывает.
 

 fgetxattr 

идентично
 getxattr ,

только открываемый файл, на который указывает
 filedes 

(возвращаемый от
 open (2))

рассматривается вместо
 path .

 

Расширенный атрибут
 name 

является просто строкой, заканчивающейся NULL.
Имя включает префикс пространства имен - их может быть несколько,
разрозненные пространства ассоциируются с разными записями inode.
Значением расширенного атрибута является произвольный кусок
текстовых или двоичных данных определенной длины.
 

Пустой буфер с размером
 size ,

равным нулю может быть передан этим вызовам для возврата текущего
размера указанного расширенного атрибута, что может быть использовано
для определения размера буфера, который существенно больше, так как
должен содержать значения, ассоцированные с расширенными атрибутами.
 

Интерфейс разработан так, чтобы можно было узнать размеры
начального буфера и для дальнейшего увеличения буферов, когда
возвращаемое значение указывает, что переданный буфер был слишком мал.
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

При успешном завершении работы возвращается положительное число,
обозначая размер расширенного атрибута.
При ошибках возвращается -1 и
 errno 

устанавливается соответственно ошибке.
 

Если именованный атрибут не существует или если процесс не имеет
прав доступа к этому атрибуту, то
 errno 

устанавливается в ENOATTR.
 

Если размер
 size 

буфера значения
 value 

слишком мал для хранения результата, то 
 errno 

устанавливается в ERANGE.
 

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

 listxattr (2),

 removexattr (2),

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