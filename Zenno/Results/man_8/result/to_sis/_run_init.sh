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
 
 
 
 run_init (8) >>  run_init  (8)   ( Русские man: Команды системного администрирования )   run_init  (8)   ( Linux man: Команды системного администрирования ) 
   
 НАЗВАНИЕ 

run_init - запускает скрипт init в правильном контексте SELinux
   
 СИНТАКСИС 

 run_init  

 SCRIPT  [[ ARGS ]...] 
 

   
 ОПИСАНИЕ 

 

Запускает скрипт init в правильном контексте, который определен в 
/etc/selinux/POLICYTYPE/contexts/initrc_context.
   
 ФАЙЛЫ 

/etc/passwd - информация об учетных записях пользователей
 

/etc/shadow - зашифрованные пароли и информация об устаревании паролей
 

/etc/selinux/POLICYTYPE/contexts/initrc_context - содержит контекст в котором должны исполняться инициализационные скрипты
   
 СМОТРИ ТАКЖЕ 

 newrole 

(1),
 runcon 

(1)
   
 АВТОРЫ 

 Wayne Salamon ( wsalamon@tislabs.com ) 
Dan Walsh ( dwalsh@redhat.com ) 
Перевод руководства - Андрей Маркелов ( andrey@markelov.net ), 2007г.

 
 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ФАЙЛЫ 
 СМОТРИ ТАКЖЕ 
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