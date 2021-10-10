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
 
 
 
 seekdir (3)   seekdir  (3)   ( Solaris man: Библиотечные вызовы )   seekdir  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  seekdir  (3)   ( Русские man: Библиотечные вызовы )   seekdir  (3)   ( Linux man: Библиотечные вызовы )   seekdir  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

seekdir - устанавливает позицию следующего вызова readdir() в потоке каталога
   
 СИНТАКСИС 

 #include < dirent.h > 

 void seekdir(DIR * dir , off_t  offset ); 
 

   
 ОПИСАНИЕ 

Функция  seekdir()  устанавливает в каталоге позицию, с которой
начнет работу следующий вызов  readdir() . Позиция  seekdir() 
должна возвращаться вызовом  telldir() .
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Функция  seekdir()  не возвращает значений.
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

BSD 4.3
   
 СМ. ТАКЖЕ 

 lseek (2),

 opendir (3),

 readdir (3),

 closedir (3),

 rewinddir (3),

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