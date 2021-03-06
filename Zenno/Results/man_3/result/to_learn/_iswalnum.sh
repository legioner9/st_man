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
 
 
 
 iswalnum (3)   iswalnum  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  iswalnum  (3)   ( Русские man: Библиотечные вызовы )   iswalnum  (3)   ( Linux man: Библиотечные вызовы )   iswalnum  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

iswalnum - проверяет, является ли символ широким текстовым символом
   
 СИНТАКСИС 

 #include < wctype.h > 

 int iswalnum(wint_t  wc ); 
 

   
 ОПИСАНИЕ 

Функция  iswalnum  является эквивалентом функции  isalnum  для работы
с широкими символами. Она проверяет, является ли  wc  широким символом,
принадлежащим классу "alnum".
 

Класс широких символов "alnum" является подклассом класса широких символов
"graph" и, следовательно, подклассом класса широких символов "print".
 

Будучи подклассом класса широких символов "print", класс "alnum"
отделен от класса широких символов "cntrl".
 

Будучи подклассом класса широких символов "graph", класс "alnum"
отделен от класса широких символов "space" и его подкласса "blank".
 

Класс широких символов "alnum" отделен от класса широких символов "punct".
 

Класс широких символов "alnum" - объединение широких символьных классов
"alpha" и "digit". Поэтому в него также входит класс широких символов "xdigit".
 

Класс широких символов "alnum" всегда содержит (по меньшей мере)
буквы от 'A' до 'Z', от 'a' до 'z' и цифры от '0' до '9'.
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Функция  iswalnum  возвращает ненулевое значение, если
 wc  является широким символом, принадлежащим классу 
широких символов "alnum". В других случаях возвращается ноль.
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

ISO/ANSI C, UNIX98
   
 СМ. ТАКЖЕ 

 isalnum (3),

 iswctype (3)

   
 ЗАМЕЧАНИЯ 

Поведение  iswalnum  зависит от категории LC_CTYPE текущей локали.
 

 
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