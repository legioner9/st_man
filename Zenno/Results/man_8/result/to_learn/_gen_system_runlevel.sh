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
 
 
 
 gen_system_runlevel (8) >>  gen_system_runlevel  (8)   ( Русские man: Команды системного администрирования ) 
 
   
 Имя 

 

 gen_system_runlevel.sh  - создать уровни запуска InitNG
 
   
 Синтаксис 

 

 gen_system_runlevel.sh  [ каталог ]
 
   
 Описание 

 

 gen_system_runlevel.sh  создает файлы уровней запуска используемые InitNG. Это файлы  default.runlevel , 
 system.runlevel  и  up.runlevel . Если вы не укажете другой каталог, они будут созданы в  /etc/initng . 
 
   
 Ключи 

 

 каталог 
если вы укажете каталог, файлы будут созданы в  каталог/etc/initng 
 
   
 Смотрите также 

 

InitNG,  ngc (8),  ng-update (8),
 initng (8),  ngdc (8),  install_service (8),  system_off (8)
 
   
 Авторы 

 

InitNG написан Jimmy Wennlund < jimmy.wennlund@gmail.com >
 

 
Armin Berres < a.berres@onlinehome.de > написал оригинальную man-страницу.
 

 
Перевод на русский язык - Илья Петров
 

 
   Index 
 
 Имя 
 Синтаксис 
 Описание 
 Ключи 
 Смотрите также 
 Авторы 
 
 
 
 
 
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