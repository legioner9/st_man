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
 
 
 
 atan2f (3)   atan2f  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  atan2f  (3)   ( Русские man: Библиотечные вызовы )   atan2f  (3)   ( Linux man: Библиотечные вызовы )   atan2f  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

atan2 - функция вычисления арктангенcа двух переменных
   
 СИНТАКСИС 

 #include < math.h >  

 
 double atan2(double  y , double  x ); 

 
 float atan2f(float  y , float  x ); 

 
 long double atan2l(long double  y , long double  x ); 

 

   
 ОПИСАНИЕ 

Функция  atan2()  вычисляет арктангенс двух переменных:  x  и  y .
Это похоже на вычисление арктангенса  y  /  x  за исключением того,
что знак обоих аргументов используется для определения квадранта результата.
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Функция  atan2()  возвращает результат вычисления в радианах,
который находится в диапазоне от -Пи до Пи включительно.
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

SVID 3, POSIX, BSD 4.3, ISO 9899.
Варианты функции для чисел с плавающей точкой и длинного двойного
целого являются требованиями C99.
   
 СМ. ТАКЖЕ 

 acos (3),

 asin (3),

 atan (3),

 cos (3),

 sin (3),

 tan (3) 

 

 
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