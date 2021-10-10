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
 
 
 
 yum-conf (8) >>  yum-conf  (8)   ( Русские man: Команды системного администрирования ) 
   
 НАЗВАНИЕ 

yum-conf - управляет репозиториями пакетов
   
 СИНТАКСИС 

 yum-conf   [list] [add путь as имя] [<on|off|remove|info> репозиторий]
 

   
 ОПИСАНИЕ 

 yum-conf  управляет репозиториями пакетов утилиты yum
 

 команда   может быть одной из:
 

  * list

 

  * add [путь к репозиторию пакетов] as [имя репозитория]

 

  * on [имена репозиториев]

 

  * off [имена репозиториев]

 

  * remove [имена репозиториев]

 

  * info [имена репозиториев]

 

Если не указан ключ --help или -h, то одна из вышеперечисленных
команд обязательно должна присутствовать.
 

 
 list 
выводит список доступных репозиториев пакетов, с указание их состояния
(ON-включен, OFF-выключен).
 
 add 
добавляет файл конфигруции репозитория пакетов в список с указанным именем.
 
 on 
включает репозиторий или репозитории пакетов для работы с утилитой yum.
 
 off 
выключает репозиторий или репозитории пакетов для работы с утилитой yum.
 
 remove 
удаляет репозиторий или репозитории пакетов.
 
 info 
выводит полную информацию по репозиторию или репозиторям пакетов.
 
 
   
 ФАЙЛЫ 

 /etc/yum.conf
/etc/yum.d/
 

 

   
 СМ. ТАКЖЕ 

 yum (8) 

 

   
 АВТОРЫ 

 Иван Печерский (Ivan Pechersky) <g@ukr.info>
Григорий Бакунов (Grigory Bakunov) < black@asplinux.ru >
 

 

   
 ЗАМЕЧАНИЯ 

О любых найденных ошибках можно сообщить в лист рассылки:  asplinux-support@lists.asplinux.ru 

 
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ФАЙЛЫ 
 СМ. ТАКЖЕ 
 АВТОРЫ 
 ЗАМЕЧАНИЯ 
 
 
 
 
 
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