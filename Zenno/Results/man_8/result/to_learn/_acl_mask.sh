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
 
 
 
 acl_mask (8) >>  acl_mask  (8)   ( Русские man: Команды системного администрирования ) 
   
 НАЗВАНИЕ 

 

 acl_mask  - управление ACL-маской объекта в файлах/каталогах.
   
 СИНТАКСИС 

 

 acl_mask  [ ключи ] [ права ] тип-объекта  файл / каталог 
   
 ОПИСАНИЕ 

 

Основной задачей  acl_mask  является управление ACL-маской объекта. При помощи  acl_mask  можно добавлять, удалять и изменять права объекта.
   
 КЛЮЧИ 

 
 -b 
Включает режим резервного копирования
 -n 
Служит для отображения списка действительных имен объектов SCD
 -p 
Сообщает имена прав 
 -r   
Указывает осуществить рекурсию по подкаталогам
 -s 
Устанавливает маску объекта, но не добавляет
 -v 
Выводит подробный отчет о совершаемых программой действиях
 права 
список прав, разделенных пробелами (запросы и ACL-специфичные, также группы запросов):  R  (на чтение),  RW  (на чтение-запись),  W  (на запись),  SY  (системные),  SE  (безопасность),  A  (все),  S  (специальные права ACL) и  NWx  где  x  =  S R W C E A F M  (аналогично для сетевой подсистемы)
 тип-объекта   
Допустимыми типами объекта являются:  FILE ,  DIR ,  FIFO ,  SYMLINK ,  DEV ,  IPC ,  SCD ,  USER ,  PROCESS  или  FD  (указание  FD-типа  предоставляет  acl_mask  право самостоятельно выбирать между  FILE ,  DIR ,  FIFO  и  SYMLINK , но не  DEV  типами, а при  IPC ,  USER ,  PROCESS : только  :DEFAULT: )
 

Для параметров ACL по умолчанию используйте  :DEFAULT: 
 
   
 АВТОРЫ 

 

 RSBAC  - Rule Set Based Access Control:
 


Amon Ott < ao@rsbac.org >
 

Stanislav Ievlev < inger@altlinux.ru >

 

Русские страницы руководства:
 


Александр Блохин < sass@uustoll.ee >

   
 СМ. ТАКЖЕ 

 

 RSBAC  - Rule Set Based Access Control,  acl_grant (8),  acl_group (8),  acl_rights (8),  acl_tlist (8),  acl_rm_user (8).
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 КЛЮЧИ 
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