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
 
 
 
 towlower (3)   towlower  (3)   ( Solaris man: Библиотечные вызовы )   towlower  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  towlower  (3)   ( Русские man: Библиотечные вызовы )   towlower  (3)   ( Linux man: Библиотечные вызовы )   towlower  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

towlower - преобразование широких символов в cимволы нижнего регистра
   
 СИНТАКСИС 

 #include < wctype.h > 

 wint_t towlower(wint_t  wc ); 
 

   
 ОПИСАНИЕ 

Функция  towlower  является экивалентом функции
 tolower  для широких символов. 
 wc  - это широкий символ, преобразуемый в символ нижнего регистра.
Символы, не имеющие регистра, возвращаются неизменными.
Если  wc  равно WEOF, то вернется WEOF.
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Функция  towlower  возвращает преобразованный в символ нижнего регистра  wc 
или WEOF, если  wc  равно WEOF.
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

ISO/ANSI C, UNIX98
   
 СМ. ТАКЖЕ 

 towupper (3),

 towctrans (3),

 iswlower (3)

   
 ЗАМЕЧАНИЯ 

Поведение функции  towlower  зависит от категории LC_CTYPE текущей 
локали.
 

Эта функция не совсем подходит для работы с Unicode-символами,
потому что в Unicode существует 3 регистра: верхний, нижний и титульный.
 

 
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