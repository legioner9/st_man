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
 
 
 
 mac_wrap (8) >>  mac_wrap  (8)   ( Русские man: Команды системного администрирования ) 
   
 НАЗВАНИЕ 

 mac_wrap  - Работа с уровнями защиты MAC модуля системы RSBAC.
   
 СИНТАКСИС 

 mac_wrap   [-v] [-c]  seclevel prog args 
 
   
 ОПИСАНИЕ 

 mac_wrap  - оболочка для inetd-подобных, применяемая для достижения максимального уровня безопасности для процессов. Эта программа установит  rsbac_mac_max_seclevel  в значение  seclevel  и запустит  prog  с  args  через  execvp() .
 
   
 КЛЮЧИ 

 

 mac_wrap  может быть запущен со следующими ключами:
 
 [-v]  - Выводить подробный отчёт о совершаемых программой действиях. 
 [-с]  - Устанавливает текущий, не максимальный уровень секретности. 
 
   
 ПАРАМЕТРЫ 

 

Параметры используемые с  mac_wrap :
 
 seclevel  - Желаемый уровень секретности для программы. 
 prog  - Имя программы. 
 args  - Аргументы командной строки для  prog . 
 
 
   
 СМ. ТАКЖЕ 

 

 RSBAC  - Rule Set Based Access Control,  pm_ct_exec (8),  rc_role_wrap (8),  mac_wrap_cat (8).
   
 АВТОРЫ 

 

 RSBAC  - Rule Set Based Access Control:
 


Amon Ott < ao@rsbac.org >
 

Stanislav Ievlev < inger@altlinux.ru >

 

Русские страницы руководства:
 


Pugachev Sergie < fd_rag@linux.ru.net >

 

Обновлено: Александр Блохин < sass@uustoll.ee >
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 КЛЮЧИ 
 ПАРАМЕТРЫ 
 СМ. ТАКЖЕ 
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