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
 
 
 
 acl_grant (8) >>  acl_grant  (8)   ( Русские man: Команды системного администрирования ) 
   
 НАЗВАНИЕ 

 

 acl_grant  - Устанавливает права субъектов над объектами в файлах/каталогах.
   
 СИНТАКСИС 

 

 acl_grant  [ ключи ] тип-субъекта id-субъекта [ права ] тип-объекта  файл / каталог 
   
 ОПИСАНИЕ 

 

Основной задачей  acl_grant  является управление ACL-записями объекта. При помощи  acl_grant  можно добавлять, удалять и изменять эти записи. По умолчанию, если не задано каких-либо ключей, происходит добавление.
   
 КЛЮЧИ 

 
 -b 
Устанавливает права в виде битовой строки
 -k 
Удаляет права субъектов над объектами
 -m 
Удаляет запись для субъекта и включает режим наследования
 -n 
Служит для отображения списка действительных имен объектов SCD
 -p 
Сообщает имена прав 
 -r   
Указывает осуществить рекурсию по подкаталогам
 -s 
Устанавливает права субъектов над объектами, но не добавляет
 -u ,  -g ,  -l   
Служат синонимами USER, GROUP и ROLE
 -v 
Выводит подробный отчет о совершаемых программой действиях
 права 
список прав, разделенных пробелами (запросы и ACL-специфичные, также группы запросов):  R  (на чтение),  RW  (на чтение-запись),  W  (на запись),  SY  (системные),  SE  (безопасность),  A  (все),  S  (специальные права ACL) и  NWx  где  x  =  S R W C E A F M  (аналогично для сетевой подсистемы)
 тип-объекта   
Допустимыми типами объекта являются:  FILE ,  DIR ,  FIFO ,  DEV ,  IPC ,  SCD ,  USER ,  PROCESS  или  FD  (указание  FD-типа  предоставляет  acl_grant  право самостоятельно выбирать между  FILE ,  DIR  и  FIFO , но не  DEV  типами, а при  IPC ,  USER ,  PROCESS : только  :DEFAULT: )
 

Для параметров ACL по-умолчанию используйте  :DEFAULT: 
 тип-субъекта   
 USER ,  GROUP  или  ROLE 
 id-субъекта 
имя или идентификационный номер (ID) пользователя
 
   
 ПРИМЕРЫ 

 

Добавление для субъекта USER с UID 501 прав только на чтение над объектом FILE <имя_файла>:
 

acl_grant -p USER 501 R FILE ./имя_файла
 

 

Отобразить список действительных имен объектов SCD:
 

acl_grant -n
 

Установить для субъекта USER с UID 1002 права на чтение/запись над объектом DIR <имя_каталога> с рекурсией:
 

acl_grant -sr USER 1002 RW DIR /имя_каталога
   
 АВТОРЫ 

 

 RSBAC  - Rule Set Based Access Control:
 


Amon Ott < ao@rsbac.org >
 

Stanislav Ievlev < inger@altlinux.ru >

 

Русские страницы руководства:
 


Александр Блохин < sass@uustoll.ee >

   
 СМ. ТАКЖЕ 

 

 RSBAC  - Rule Set Based Access Control,  acl_group (8),  acl_mask (8),  acl_rights (8),  acl_tlist (8),  acl_rm_user (8).
 

 
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