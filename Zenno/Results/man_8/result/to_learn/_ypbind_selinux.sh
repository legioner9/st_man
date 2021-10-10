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
 
 
 
 ypbind_selinux (8) >>  ypbind_selinux  (8)   ( Русские man: Команды системного администрирования )   ypbind_selinux  (8)   ( Linux man: Команды системного администрирования ) 
   
 НАЗВАНИЕ 

ypbind_selinux - Политика Security Enhanced Linux для NIS.
   
 ОПИСАНИЕ 

 
Security-Enhanced Linux защищает систему при помощи гибко настраиваемого мандатного контроля доступа. По умолчанию работа NIS запрещена. Это является следствием того, что демоны NIS требуют слишком обширного доступа к сети.  
   
 ПЕРЕКЛЮЧАТЕЛИ (BOOLEANS) 

 
 Для того, чтобы система могла работать в окружении NIS, вы должны установить переключатель allow_ypbind. 
 setsebool -P allow_ypbind 1 
 Для управления настройками SELinux существует графическая утилита system-config-selinux. 
 
   
 АВТОРЫ    

Эту страницу руководства написал Dan Walsh < dwalsh@redhat.com >. 
Перевод руководства - Андрей Маркелов < andrey@markelov.net >, 2007г.
 
   
 СМОТРИ ТАКЖЕ 

 selinux (8),  ypbind (8),  chcon (1),  setsebool (8)
 

 
   Index 
 
 НАЗВАНИЕ 
 ОПИСАНИЕ 
 ПЕРЕКЛЮЧАТЕЛИ (BOOLEANS) 
 АВТОРЫ   
 СМОТРИ ТАКЖЕ 
 
 
 
 
 
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