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
 
 
 
 casinh (3)   casinh  (3)   ( Solaris man: Библиотечные вызовы ) >>  casinh  (3)   ( Русские man: Библиотечные вызовы )   casinh  (3)   ( Linux man: Библиотечные вызовы )   casinh  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

casinh, casinhf, casinhl - вычисляет комплексный гиперболический арксинус
   
 СИНТАКСИС 

 #include < complex.h > 

 
 double complex casinh(double complex  z ); 

 
 float complex casinhf(float complex double  z ); 

 
 long double complex casinhl(long double complex  z ); 

 
   
 ОПИСАНИЕ 

Функция casinh() вычисляет комплексный asinh().
Если y = casinh(z), то z = csinh(y).
Мнимая часть y выбирается из диапазона [-pi/2*i,pi/2*i].
 

Также casinh(z) = clog(z+csqrt(z*z+1)).
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

C99
   
 СМ. ТАКЖЕ 

 cabs (3),

 cimag (3),

 asinh (3)

 

 
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