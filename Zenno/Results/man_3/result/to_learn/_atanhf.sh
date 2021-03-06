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
 
 
 
 atanhf (3)   atanhf  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  atanhf  (3)   ( Русские man: Библиотечные вызовы )   atanhf  (3)   ( Linux man: Библиотечные вызовы )   atanhf  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

atanh - вычисление функции обратного гиперболического тангенса
   
 СИНТАКСИС 

 #include < math.h >  

 double atanh(double  x ); 

 float atanhf(float  x ); 

 long double atanhl(long double  x ); 

 

   
 ОПИСАНИЕ 

Функция  atanh()  вычисляет обратный гиперболический тангенс  x ,
то есть число, гиперболический тангенс которого равен  x .
Если абсолютное значение  x  больше, чем 1.0, то  acosh()  возвращает
нечисловое значение (NaN) и код ошибки записывается в переменную  errno .
   
 НАЙДЕННЫЕ ОШИБКИ 

 
 EDOM 

 
 x  вне диапазона.
 
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

SVID 3, POSIX, BSD 4.3, ISO 9899.
Варианты функции для чисел с плавающей точкой и длинного двойного
целого являются требованиями C99.
   
 СМ. ТАКЖЕ 

 asinh (3),

 acosh (3),

 cosh (3),

 sinh (3),

 tanh (3)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 НАЙДЕННЫЕ ОШИБКИ 
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