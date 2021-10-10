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
 
 
 
 rewinddir (3)   rewinddir  (3)   ( Solaris man: Библиотечные вызовы )   rewinddir  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  rewinddir  (3)   ( Русские man: Библиотечные вызовы )   rewinddir  (3)   ( Linux man: Библиотечные вызовы )   rewinddir  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

rewinddir - меняет позицию потока каталога
   
 СИНТАКСИС 

 #include < sys/types.h > 

 #include < dirent.h > 

 void rewinddir(DIR * dir ); 
 

   
 ОПИСАНИЕ 

Функция  rewinddir()  устанавливает новую позицию потока каталога
 dir  в начале каталога.
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Функция  rewinddir()  не возвращает значений.
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

SVID 3, POSIX, BSD 4.3
   
 СМ. ТАКЖЕ 

 opendir (3),

 readdir (3),

 closedir (3),

 seekdir (3),

 telldir (3),

 scandir (3)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 СООТВЕТСТВИЕ СТАНДАРТАМ 
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