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
 
 
 
 iswspace (3)   iswspace  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  iswspace  (3)   ( Русские man: Библиотечные вызовы )   iswspace  (3)   ( Linux man: Библиотечные вызовы )   iswspace  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

iswspace - проверяет, является ли символ "пустым" широким символом 
   
 СИНТАКСИС 

 #include < wctype.h > 

 int iswspace(wint_t  wc ); 
 

   
 ОПИСАНИЕ 

Функция  iswspace  является эквивалентом функции  isspace  для работы
с широкими символами. Она проверяет, является ли  wc  широким символом,
принадлежащим классу "space".
 

Класс широких символов "space" отделен от класса широких символов "graph"
и, соответственно, также разъединен с его подклассами
"alnum", "alpha", "upper", "lower", "digit", "xdigit", "punct".
 

Класс широких символов "space" содержит класс широких символов "blank".
 

Класс широких символов "space" всегда содержит, по меньшей мере,
пробел и управляющие символы: '\f', '\n', '\r', '\t', '\v'.
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Функция  iswspace  возвращает ненулевое значение, если
 wc  является широким символом, принадлежащим классу
широких символов "space". В других случаях возвращается ноль.
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

ISO/ANSI C, UNIX98
   
 СМ. ТАКЖЕ 

 isspace (3),

 iswctype (3)

   
 ЗАМЕЧАНИЯ 

Поведение  iswlower  зависит от категории LC_CTYPE текущей локали.
 

 
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