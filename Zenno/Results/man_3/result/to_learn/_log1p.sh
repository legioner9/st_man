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
 
 
 
 log1p (3)   log1p  (3)   ( Solaris man: Библиотечные вызовы )   log1p  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  log1p  (3)   ( Русские man: Библиотечные вызовы )   log1p  (3)   ( Linux man: Библиотечные вызовы )   log1p  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

log1p -  логарифм от 1 плюс аргумент
   
 СИНТАКСИС 

 #include < math.h > 

 double log1p(double  x ); 

 float log1pf(float  x ); 

 long double log1pl(long double  x ); 

 

   
 ОПИСАНИЕ 

 log1p( x ) 

возвращает значения, эквивалентное `log (1 +  x )'.
Оно вычисляется методом, выдающим точные значения, даже если
значение  x  близко к нулю.
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

BSD, C99.
Варианты функции для чисел с плавающей точкой и для длинных двойных чисел
являются обязательными требованиями стандарта C99.
   
 СМ. ТАКЖЕ 

 exp (3),

 log (3),

 expm1 (3)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
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