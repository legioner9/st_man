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
 
 
 
 wmemchr (3)   wmemchr  (3)   ( Solaris man: Библиотечные вызовы )   wmemchr  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  wmemchr  (3)   ( Русские man: Библиотечные вызовы )   wmemchr  (3)   ( Linux man: Библиотечные вызовы )   wmemchr  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

wmemchr - поиск широкого символа в строке 
   
 СИНТАКСИС 

 #include < wchar.h > 

 wchar_t *wmemchr(const wchar_t * s , wchar_t  c , size_t  n ); 
 

   
 ОПИСАНИЕ 

Функция  wmemchr  - это эквивалент функции  memchr  для широких
символов. Она просматривает  n  широких символов массива  s 
в поисках широкого символа  c .
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Функция  wmemchr  возвращает указатель на найденный символ  c 
в строке  s  или NULL, если  c  не найден.
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

ISO/ANSI C, UNIX98
   
 СМ. ТАКЖЕ 

 memchr (3),

 wcschr (3)

 

 
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