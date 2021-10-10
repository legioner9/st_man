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
 
 
 
 named_selinux (8) >>  named_selinux  (8)   ( Русские man: Команды системного администрирования )   named_selinux  (8)   ( Linux man: Команды системного администрирования ) 


   
 НАЗВАНИЕ 

named_selinux - Политика Security Enhanced Linux для демона Internet Name server (named)
   
 ОПИСАНИЕ 

 
Security-Enhanced Linux обеспечивает защиту сервера named при помощи гибко настраиваемого мандатного контроля доступа.
   
 ПЕРЕКЛЮЧАТЕЛИ (BOOLEANS) 

Политика SELinux настраивается исходя из принципа наименьших привилегий. Таким образом,
по умолчанию политика SELinux не позволяет демону named осуществлять изменения файлов мастер-зоны.
Если вам необходимо, чтобы named мог обновлять файлы мастер-зоны, вы должны установить переключатель named_write_master_zones boolean.

 setsebool -P named_write_master_zones 1

 


 

Для управления настройками SELinux существует графическая утилита system-config-selinux.
   
 АВТОРЫ    

Эту страницу руководства написал Dan Walsh < dwalsh@redhat.com >. 
Перевод руководства - Андрей Маркелов < andrey@markelov.net >, 2007г.
 
   
 СМОТРИ ТАКЖЕ 

 selinux (8),  named (8),  chcon (1),  setsebool (8)
 
 
 

 
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