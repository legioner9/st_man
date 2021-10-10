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
 
 
 
 catanhl (3) >>  catanhl  (3)   ( Русские man: Библиотечные вызовы )   catanhl  (3)   ( Linux man: Библиотечные вызовы )   catanhl  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

catanh, catanhf, catanhl - вычисляет комплексный гиперболический арктангенс
   
 СИНТАКСИС 

 #include < complex.h > 

 
 double complex catanh(double complex  z ); 

 
 float complex catanhf(float complex double  z ); 

 
 long double complex catanhl(long double complex  z ); 

 
   
 ОПИСАНИЕ 

Функция catanh() вычисляет комплексный atanh().
Если y = catanh(z), то z = ctanh(y).
Мнимая часть y выбирается из интервала [-pi/2*i,pi/2*i].
 

Также catanh(z) = 0.5*clog((1+z)/(1-z)).
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

C99
   
 СМ. ТАКЖЕ 

 cabs (3),

 cimag (3),

 atanh (3)

 

 
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