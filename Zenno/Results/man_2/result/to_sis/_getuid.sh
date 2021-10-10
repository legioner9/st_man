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
 
 
 
 getuid (2)   getuid  (2)   ( Solaris man: Системные вызовы )   getuid  (2)   ( FreeBSD man: Системные вызовы ) >>  getuid  (2)   ( Русские man: Системные вызовы )   getuid  (2)   ( Linux man: Системные вызовы )   getuid  (3)   ( Solaris man: Библиотечные вызовы )   getuid  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 ИМЯ 

getuid, geteuid - получить идентифкатор пользоватля
   
 ОБЗОР 

 #include < unistd.h > 

 

 #include < sys/types.h > 

 
 uid_t getuid(void); 

 

 uid_t geteuid(void); 

   
 ОПИСАНИЕ 

 getuid 

возвращает фактический идентификатор ID пользователя в текущем процессе.
 
 geteuid 

возвращает эффективный идентификатор ID пользователя в текущем процессе.
 
Фактический ID соответствует ID пользователя, который вызвал процесс.
Эффективный ID соответствует установленному setuid биту на исполняемом
файле.
   
 ОШИБКИ 

Эти функции всегда завершаются успешно.
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

POSIX, BSD 4.3.
   
 СМОТРИТЕ ТАКЖЕ 

 setreuid (2),

 setuid (2)

   
 ПЕРЕВОД 

Перевёл с английского Виктор Вислобоков < corochoone@perm.ru > 2003
 

 
   Index 
 
 ИМЯ 
 ОБЗОР 
 ОПИСАНИЕ 
 ОШИБКИ 
 СООТВЕТСТВИЕ СТАНДАРТАМ 
 СМОТРИТЕ ТАКЖЕ 
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