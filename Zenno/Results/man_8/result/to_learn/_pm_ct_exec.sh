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
 
 
 
 pm_ct_exec (8) >>  pm_ct_exec  (8)   ( Русские man: Команды системного администрирования ) 
   
 НАЗВАНИЕ 

 pm_st_exec  - Выполнение указанной программы с требуемым идентификатором задачи.
   
 СИНТАКСИС 

 pm_ct_exec  task-nr prog args
   
 ОПИСАНИЕ 

Программа предназначена для запуска приложений с требуемым идентификатором текущей задачи PM посредством установки  rsbac_pm_current_task  в значение  task-nr  и последующего выполнения  prog  через  execvp() .
   
 ПАРАМЕТРЫ 

 

При работе с  pm_ct_exec  используются следующие параметры:
 
 task-nr  - идентификатор текущей задачи PM. 
 prog  - имя программы. 
 args  - параметры командной строки передаваемые программе  prog . 
 
   
 АВТОРЫ 

 

 RSBAC  - Rule Set Based Access Control:
 


Amon Ott < ao@rsbac.org >
 

Stanislav Ievlev < inger@altlinux.ru >

 

Русские страницы руководства:
 


Stanislav Ievlev < inger@linux.ru.net >

 

Обновлено: Александр Блохин < sass@uustoll.ee >
 
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ПАРАМЕТРЫ 
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