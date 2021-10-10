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
 
 
 
 acl_tlist (8) >>  acl_tlist  (8)   ( Русские man: Команды системного администрирования ) 
   
 НАЗВАНИЕ 

 

 acl_tlist  - Просмотр ACL-записей объекта.
   
 СИНТАКСИС 

 

 acl_tlist  [ ключи ] тип-объекта  файл / каталог / имя-SCD 
   
 ОПИСАНИЕ 

 

 acl_tlist  отображает ACL-записи заданного объекта.
   
 КЛЮЧИ 

 
 -b 
Задействовать режим резервного копирования
 -n 
Служит для отображения списка действительных имен объектов SCD
 -p 
Сообщает имена прав 
 -r   
Указывает осуществить рекурсию по подкаталогам
 -s 
Выполнить сценарий
 -v 
Выводит подробный отчет о совершаемых программой действиях
 тип-объекта   
Допустимыми типами объекта являются:  FILE ,  DIR ,  FIFO ,  DEV ,  IPC ,  SCD ,  USER ,  PROCESS  или  FD  (указание  FD-типа  предоставляет  acl_tlist  право самостоятельно выбирать между  FILE ,  DIR  и  FIFO , но не  DEV  типами, а при  IPC ,  USER ,  PROCESS : только  :DEFAULT: )
 

Для параметров ACL по-умолчанию используйте  :DEFAULT: 
 
   
 ПРИМЕРЫ 

 

Рекурсивно вывести ACL-записи DIR-типа объекта для каталога /home:
 

acl_tlist -r DIR /home
   
 АВТОРЫ 

 

 RSBAC  - Rule Set Based Access Control:
 


Amon Ott < ao@rsbac.org >
 

Stanislav Ievlev < inger@altlinux.ru >

 

Русские страницы руководства:
 


Александр Блохин < sass@uustoll.ee >

   
 СМ. ТАКЖЕ 

 

 RSBAC  - Rule Set Based Access Control,  acl_grant (8),  acl_group (8),  acl_rights (8),  acl_mask (8),  acl_rm_user (8).
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 КЛЮЧИ 
 ПРИМЕРЫ 
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