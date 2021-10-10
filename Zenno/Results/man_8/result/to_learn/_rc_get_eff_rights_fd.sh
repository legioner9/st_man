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
 
 
 
 rc_get_eff_rights_fd (8) >>  rc_get_eff_rights_fd  (8)   ( Русские man: Команды системного администрирования ) 
   
 НАЗВАНИЕ 

 rc_get_eff_rights_fd  - Работа с RC модулем системы RSBAC.
   
 СИНТАКСИС 

 rc_get_eff_rights_fd   [-v] [-r] [-p]  тип-объекта каталог
 

 rc_get_eff_rights_fd   [-v] [-r] [-p]  тип-объекта каталог
 
 
   
 ОПИСАНИЕ 

 rc_get_eff_rights_fd  служит для отображения эффективных прав указанного объекта.  
 
   
 КЛЮЧИ 

 rc_get_eff_rights_fd  может использоваться со следующими ключами:
 
 [-v]  Выводить подробный отчёт о совершаемых программой действиях. 
 [-r]  Работать с рекурсией по подкаталогам. 
 [-p]  Отобразить список прав. 
 
   
 ТИПЫ ОБЪЕКТОВ 

 

Допустимыми типами объекта являются:  FILE ,  DIR ,  FIFO ,  DEV  или  FD  (указание  FD-типа  предоставляет  rc_get_eff_rights_fd  право самостоятельно выбирать между  FILE ,  DIR  и  FIFO , но не  DEV  типами).
   
 СМ. ТАКЖЕ 

 

 RSBAC  - Rule Set Based Access Control,  rc_get_item (8).
 
   
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
 ТИПЫ ОБЪЕКТОВ 
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