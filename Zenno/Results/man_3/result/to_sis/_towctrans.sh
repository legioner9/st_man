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
 
 
 
 towctrans (3)   towctrans  (3)   ( Solaris man: Библиотечные вызовы )   towctrans  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  towctrans  (3)   ( Русские man: Библиотечные вызовы )   towctrans  (3)   ( Linux man: Библиотечные вызовы )   towctrans  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

towctrans - транслитерация широкого символа
   
 СИНТАКСИС 

 #include < wctype.h > 

 wint_t towctrans(wint_t  wc , wctrans_t  desc ); 
 

   
 ОПИСАНИЕ 

Параметр  wc  - это широкий символ,
функция  towctrans  транслирует его в соответствии с описателем  desc .
Если  wc  равно WEOF, то возвращается WEOF.
 

 desc  должен быть описателем транслитерации,
созданным функцией  wctrans .
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Функция  towctrans  возвращает либо преобразованный символ, либо WEOF,
если  wc  равно WEOF.
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

ISO/ANSI C, UNIX98
   
 СМ. ТАКЖЕ 

 wctrans (3),

 towlower (3),

 towupper (3)

   
 ЗАМЕЧАНИЯ 

Поведение  towctrans  определяется категорией LC_CTYPE текущей системной
локали.
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 СООТВЕТСТВИЕ СТАНДАРТАМ 
 СМ. ТАКЖЕ 
 ЗАМЕЧАНИЯ 
 
 
 
 
 
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