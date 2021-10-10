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
 
 
 
 isgreaterequal (3)   isgreaterequal  (3)   ( Solaris man: Библиотечные вызовы )   isgreaterequal  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  isgreaterequal  (3)   ( Русские man: Библиотечные вызовы )   isgreaterequal  (3)   ( Linux man: Библиотечные вызовы )   isgreaterequal  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

isgreater, isgreaterequal, isless, islessgreater, isunordered - макросы процерки отношений
   
 СИНТАКСИС 

 #include < math.h > 

 int isgreater(x,y); 

 int isgreaterequal(x,y); 

 int isless(x,y); 

 int islessequal(x,y); 

 int islessgreater(x,y); 

 int isunordered(x,y); 
 

   
 ОПИСАНИЕ 

Обычные относительные операции (как less) будут выдавать ошибку, если одним
из операндов является NaN, что приводит к исключениям. Для избежания
подобноых ситуаций C99 определяет эти макросы. Они гарантированно вычиляют
свои операнды только один раз. Операндом может быть любой действительный
тип с плавающей точкой.
 
 isgreater() 
определяет справедливость (x) > (y) без ошибки, если x или y является NaN.
 isgreaterequal() 
определяет справедливость (x) >= (y) без ошибки, если x или y является NaN.
 isless() 
определяет справедливость (x) < (y) без ошибки, если x или y является NaN.
 islessequal() 
определяет справедливость (x) <= (y) без ошибки, если x или y является NaN.
 islessgreater() 
определяет справедливость (x) < (y) || (x) > (y) без ошибки, если x или y является NaN.
Этот макрос не эквивалентен x != y так как это выражение правдиво (true),
если x или y является NaN.
 isunordered() 
является истиной, если x или y является NaN и ложью в ином случае.
 
   
 ЗАМЕЧАНИЯ 

Не все оборудование поддерживает эти функции, и там где они не поддерживаются,
они будут эмулироваться макросами. Это приведет к небольшим задержкам в работе.
Не используйте эти функции, если значения NaN вас нисколько не тревожат.
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

C99
   
 СМ. ТАКЖЕ 

 fpclassify (3),

 isnan (3) 

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ЗАМЕЧАНИЯ 
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