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
 
 
 
 iswlower (3)   iswlower  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  iswlower  (3)   ( Русские man: Библиотечные вызовы )   iswlower  (3)   ( Linux man: Библиотечные вызовы )   iswlower  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

iswlower - проверяет, является ли символ широким символом нижнего регистра
   
 СИНТАКСИС 

 #include < wctype.h > 

 int iswlower(wint_t  wc ); 
 

   
 ОПИСАНИЕ 

Функция  iswlower  является эквивалентом функции  islower  для работы
с широкими символами. Она проверяет, является ли  wc  широким символом,
принадлежащим классу "lower".
 

Класс широких символов "lower" является подклассом класса широких символов
"alpha" и, следовательно, подклассом класса широких символов "alnum",
класса широких символов "graph" и класса широких символов "print".
 

Будучи подклассом класса широких символов "print", "lower"
отделен от класса широких символов "cntrl".
 

Будучи подклассом класса широких символов "graph", "lower"
отделен от класса широких символов "space" и его подкласса "blank".
 

Будучи подклассом класса широких символов "alnum", "lower"
отделен от класса широких символов "punct".
 

Будучи подклассом класса широких символов "alpha", "lower"
отделен от класса широких символов "digit".
 

Класс широких символов "lower" всегда содержит, 
по меньшей мере, такие символы  wc ,
которые равны  towlower(wc) 
и отличаются от  towupper(wc) .
 

Класс широких символов "lower" всегда содержит, по меньшей мере,
буквы от 'a' до 'z'.
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Функция  iswlower  возвращает ненулевое значение, если
 wc  является широким символом, принадлежащим классу
широких символов "lower". В других случаях возвращается ноль.
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

ISO/ANSI C, UNIX98
   
 СМ. ТАКЖЕ 

 islower (3),

 iswctype (3),

 towlower (3)

   
 ЗАМЕЧАНИЯ 

Поведение  iswlower  зависит от категории LC_CTYPE текущей локали.
 

Данная функция не совсем пригодна для работы с символами Unicode,
т.к. Unicode оперирует тремя регистрами: верхним, нижним и заглавным.
 

 
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