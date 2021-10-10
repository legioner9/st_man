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
 
 
 
 getpid (2)   getpid  (2)   ( Solaris man: Системные вызовы )   getpid  (2)   ( FreeBSD man: Системные вызовы ) >>  getpid  (2)   ( Русские man: Системные вызовы )   getpid  (2)   ( Linux man: Системные вызовы )   getpid  (3)   ( Solaris man: Библиотечные вызовы )   getpid  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 ИМЯ 

getpid, getppid - получение идентификатора процесса
   
 ОБЗОР 

 #include < sys/types.h > 

 

 #include < unistd.h > 

 
 pid_t getpid(void); 

 

 pid_t getppid(void); 

   
 ОПИСАНИЕ 

 getpid 

возвращает идентификатор ID текущего процесса. (Это часто используется
функциями, которые генерируют уникальные имена временных файлов)
 
 getppid 

возвращает идентификатор ID родительского процесса.
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

POSIX, BSD 4.3, SVID
   
 СМОТРИ ТАКЖЕ 

 exec (3),

 fork (2),

 kill (2),

 mkstemp (3),

 tmpnam (3),

 tempnam (3),

 tmpfile (3)

   
 ПЕРЕВОД 

Перевёл с английского Виктор Вислобоков < corochoone@perm.ru > 2003
 

 
   Index 
 
 ИМЯ 
 ОБЗОР 
 ОПИСАНИЕ 
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