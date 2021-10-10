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
 
 
 
 attr_rm_file_dir (8) >>  attr_rm_file_dir  (8)   ( Русские man: Команды системного администрирования ) 
   
 НАЗВАНИЕ 

 

 attr_rm_file_dir  - Средство работы с атрибутами RSBAC для файлов, каталогов и устройств.
   
 СИНТАКСИС 

 

 attr_rm_file_dir  тип-объекта  файл 
 
 attr_rm_file_dir  тип-объекта  каталог 
 
   
 ОПИСАНИЕ 

 

Программа  attr_back_file_dir  предназначена для установки атрибутов RSBAC у файлов и каталогов находящихся в указанном пути в первоначальные значения (по-умолчанию), аналогично attr_rm_fd. Однако по сравнению с последней эта программа более оптимизирована для использования в сценариях.
   
 ТИПЫ ОБЪЕКТОВ 

 

Допустимыми типами объекта являются:  FILE ,  DIR ,  FIFO ,  SYMLINK  или  DEV .
   
 ПРИМЕРЫ 

 

Выполнить очистку атрибутов над домашним каталогом пользователя:
 

attr_rm_file_dir DIR /home/user
   
 АВТОРЫ 

 

 RSBAC  - Rule Set Based Access Control:
 


Amon Ott < ao@rsbac.org >
 

Stanislav Ievlev < inger@altlinux.ru >

 

Русские страницы руководства:
 


Александр Блохин < sass@uustoll.ee >

   
 СМ. ТАКЖЕ 

 

 RSBAC  - Rule Set Based Access Control,  attr_rm_fd (8),  attr_rm_user (8)
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ТИПЫ ОБЪЕКТОВ 
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