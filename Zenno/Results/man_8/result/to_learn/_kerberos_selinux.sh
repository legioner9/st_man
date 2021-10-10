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
 
 
 
 kerberos_selinux (8) >>  kerberos_selinux  (8)   ( Русские man: Команды системного администрирования )   kerberos_selinux  (8)   ( Linux man: Команды системного администрирования ) 


   
 НАЗВАНИЕ 

kerberos_selinux - Политика Security Enhanced Linux для Kerberos.
   
 ОПИСАНИЕ 

 
Security-Enhanced Linux защищает систему при помощи гибко настраиваемого мандатного контроля доступа. По умолчанию Kerberos запрещен, поскольку требуется функционирование демонов,
которым предоставляется слишком обширный доступ к сети и некоторым чувствительным в плане безопасности файлам.
 
   
 ПЕРЕКЛЮЧАТЕЛИ (BOOLEANS) 

 

Для того, чтобы система могла корректно работать в окружении Kerberos, вы должны установить переключатель allow_kerberos.

 setsebool -P allow_kerberos 1

 


 

Для управления настройками SELinux существует графическая утилита system-config-selinux.
   
 АВТОРЫ    

Эту страницу руководства написал Dan Walsh < dwalsh@redhat.com >. 
Перевод руководства - Андрей Маркелов < andrey@markelov.net >, 2007г.
 
   
 СМОТРИ ТАКЖЕ 

 selinux (8),  kerberos (1),  chcon (1),  setsebool (8)
 

 
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