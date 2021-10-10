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
 
 
 
 utimes (2)   utimes  (2)   ( Solaris man: Системные вызовы )   utimes  (2)   ( FreeBSD man: Системные вызовы ) >>  utimes  (2)   ( Русские man: Системные вызовы )   utimes  (2)   ( Linux man: Системные вызовы )   utimes  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 ИМЯ 

utime, utimes - изменить время доступа и/или модификации inode
   
 ОБЗОР 

 #include < sys/types.h > 

 

 #include < utime.h > 

 
 int utime(const char * filename , struct utimbuf * buf ); 

 
 #include < sys/time.h > 

 
 int utimes(char * filename , struct timeval * tvp ); 

   
 ОПИСАНИЕ 

 utime 

изменяет время доступа или модификации inode, указанного с помощью
 filename ,

делая его равным полям
 actime  и  modtime 

буфера
 buf ,

соответственно.  Если
 buf 

равен
 NULL ,

то время доступа и модификации устанавливаются в текущее время.
Структура
 utimbuf 

выглядит так:
 
 
 struct utimbuf {
        time_t actime;  /* время доступа */
        time_t modtime; /* время модификации */
};
 

 

 
В библиотеках Linux DLL 4.4.1
 utimes 

является просто оберткой для
 utime :

 tvp [0]. tv_sec 

соответствует
 actime , а  tvp [1]. tv_sec 

соответствует
 modtime .

Структура
 timeval 

выглядит так:
 
 
 struct timeval {
        long    tv_sec;         /* секунды */
        long    tv_usec;        /* микросекунды */
};
 

 

   
 ВОЗВРАЩАЕМОЕ ЗНАЧЕНИЕ 

В случае успеха возвращается ноль.  При ошибке возвращается -1, а 
 errno 

устанавливается должным образом.
 
   
 ОШИБКИ 

Могут также произойти другие ошибки.
 
 
 EACCES 

 
Не разрешена запись в файл.
 ENOENT 

 
 filename 

не существует.
 
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

 utime :

SVr4, SVID, POSIX.  SVr4 документирует дополнительные коды ошибок
EFAULT, EINTR, ELOOP, EMULTIHOP, ENAMETOOLONG, ENOLINK, ENOTDIR,
ENOLINK, ENOTDIR, EPERM, EROFS.
 

 utimes :

BSD 4.3
   
 СМОТРИ ТАКЖЕ 

 stat (2)

   
 ПЕРЕВОД 

Copyright (C) Alexey Mahotkin < alexm@hsys.msk.ru > 1999
 

 
   Index 
 
 ИМЯ 
 ОБЗОР 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМОЕ ЗНАЧЕНИЕ 
 ОШИБКИ 
 СООТВЕТСТВИЕ СТАНДАРТАМ 
 СМОТРИ ТАКЖЕ 
 ПЕРЕВОД 
 
 
 
 
 
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