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
 
 
 
 ynl (3) >>  ynl  (3)   ( Русские man: Библиотечные вызовы )   ynl  (3)   ( Linux man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

j0, j0f, j0l, j1, j1f, j1l, jn, jnf, jnl, 
y0, y0f, y0l, y1, y1f, y1l, yn, ynf, ynl - функции Бесселя
   
 СИНТАКСИС 

 #include < math.h >  

 double j0(double  x ); 
 
 double j1(double  x ); 
 
 double jn(int  n , double  x ); 
 
 double y0(double  x ); 
 
 double y1(double  x ); 
 
 double yn(int  n , double  x ); 

 float j0f(float  x ); 
 
 float j1f(float  x ); 
 
 float jnf(int  n , float  x ); 
 
 float y0f(float  x ); 
 
 float y1f(float  x ); 
 
 float ynf(int  n , float  x ); 

 long double j0l(long double  x ); 
 
 long double j1l(long double  x ); 
 
 long double jnl(int  n , long double  x ); 
 
 long double y0l(long double  x ); 
 
 long double y1l(long double  x ); 
 
 long double ynl(int  n , long double  x ); 
 

   
 ОПИСАНИЕ 

Функции  j0()  и  j1()  от аргумента  x  возвращают значение
функций Бесселя первого рода порядков 0 и 1 соответственно.
Функция  jn()  от аргумента  x  возвращает значение функции
Бесселя первого рода порядка  n .
 

Функции  y0()  и  y1()  от аргумента  x  возвращают значение
функции Бесселя второго рода порядков 0 и 1 соответственно.
Функция  yn()  возвращает значение функции Бесселя второго рода
порядка  n .
 

Для функций  y0() ,  y1()  и  yn()  значение аргумента  x 
должно быть положительным.  Для отрицательных значений  x  эти функции возвращают
-HUGE_VAL.
 

Функции  j0f()  и т.п. и  j0l()  и т.п. являются версиями, воспринимающими
и возвращающими значения с плавающей точкой и длинные двойные значения, соответственно.
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

Функции, возвращающие двойное, соответствуют SVID 3, BSD 4.3, XPG4,
POSIX 1003.1-2001. Остальные функции существуют аналогично, на нескольких платформах.
   
 НАЙДЕННЫЕ ОШИБКИ 

Значения, возвращаемые  j0() ,  j1()  и  jn() , содержат погрешность до
2e-16 для значений  x  от -8 до 8.
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 СООТВЕТСТВИЕ СТАНДАРТАМ 
 НАЙДЕННЫЕ ОШИБКИ 
 
 
 
 
 
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