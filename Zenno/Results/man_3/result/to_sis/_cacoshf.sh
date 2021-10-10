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
 
 
 
 cacoshf (3) >>  cacoshf  (3)   ( Русские man: Библиотечные вызовы )   cacoshf  (3)   ( Linux man: Библиотечные вызовы )   cacoshf  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

cacosh, cacoshf, cacoshl - вычисляет комплексный гиперболический арккосинус
   
 СИНТАКСИС 

 #include < complex.h > 

 
 double complex cacosh(double complex  z ); 

 
 float complex cacoshf(float complex double  z ); 

 
 long double complex cacoshl(long double complex  z ); 

 
   
 ОПИСАНИЕ 

Функция cacosh() вычисляет комплексный acosh().
Если y = cacosh(z), то z = ccosh(y).
Мнимая часть y выбирается из интервала [-pi*i,pi*i].
Действительная часть y выбирается неотрицательной.
 

Также cacosh(z) = (0.5)*clog((1+z)/(1-z)).
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

C99
   
 СМ. ТАКЖЕ 

 cabs (3),

 cimag (3),

 acosh (3)

 

 
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