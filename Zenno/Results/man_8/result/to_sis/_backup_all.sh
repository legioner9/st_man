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
 
 
 
 backup_all (8) >>  backup_all  (8)   ( Русские man: Команды системного администрирования ) 
   
 НАЗВАНИЕ 

 

 backup_all  - создание резервной копии настроек RSBAC.
   
 СИНТАКСИС 

 

 backup_all 
   
 ОПИСАНИЕ 

 

Сценарий оболочки  backup_all  служит для создания резервных копий всех настроек RSBAC. В настоящий момент не поддерживается резервирование структуры данных PM и уровней журналирования ADF. 
 

Прежде чем приступить к созданию резервных копий пожалуйста убедитесь, что вы имеете доступ на  чтение  ко всем каталогам и  READ_ATTRIBUTES  всех объектов, например, используя setuid 0, RC force_role 'Role Admin' и т.д., или отключив все модули и загрузив систему с ремонтным ядром и зарегистрировавшись в системе как суперпользователь.
   
 АВТОРЫ 

 

 RSBAC  - Rule Set Based Access Control:
 


Amon Ott < ao@rsbac.org >
 

Stanislav Ievlev < inger@altlinux.ru >

 

Русские страницы руководства:
 


Александр Блохин < sass@uustoll.ee >

   
 СМ. ТАКЖЕ 

 

 RSBAC  - Rule Set Based Access Control.
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 АВТОРЫ 
 СМ. ТАКЖЕ 
 
 
 
 
 
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