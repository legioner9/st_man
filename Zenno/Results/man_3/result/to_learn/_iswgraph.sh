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
 
 
 
 iswgraph (3)   iswgraph  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  iswgraph  (3)   ( Русские man: Библиотечные вызовы )   iswgraph  (3)   ( Linux man: Библиотечные вызовы )   iswgraph  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

iswgraph - проверяет, является ли символ широким графическим символом
   
 СИНТАКСИС 

 #include < wctype.h > 

 int iswgraph(wint_t  wc ); 
 

   
 ОПИСАНИЕ 

Функция  iswgraph  является эквивалентом функции  isgraph  для работы
с широкими символами. Она проверяет, является ли  wc  широким символом,
принадлежащим классу "graph".
 

Класс широких символов "graph" является подклассом класса широких символов
"print".
 

Будучи подклассом класса широких символов "print", "graph"
отделен от класса широких символов "cntrl".
 

Класс широких символов "graph" отделен от класса широких символов "space"
и, соответственно, от его подкласса "blank".
 

Класс широких символов "graph" содержит все широкие символы
класса "print" (за исключением символа пробела).
Следовательно, класс содержит широкие символы классов "alnum" и "punct".
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Функция  iswgraph  возвращает ненулевое значение, если
 wc  является широким символом, принадлежащим классу
широких символов "graph". В других случаях возвращается ноль.
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

ISO/ANSI C, UNIX98
   
 СМ. ТАКЖЕ 

 isgraph (3),

 iswctype (3)

   
 ЗАМЕЧАНИЯ 

Поведение  iswgraph  зависит от категории LC_CTYPE текущей локали.
 

 
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