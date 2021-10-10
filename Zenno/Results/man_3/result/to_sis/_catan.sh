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
 
 
 
 catan (3)   catan  (3)   ( Solaris man: Библиотечные вызовы ) >>  catan  (3)   ( Русские man: Библиотечные вызовы )   catan  (3)   ( Linux man: Библиотечные вызовы )   catan  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

catan, catanf, catanl - вычисляет комплексный арктангенс
   
 СИНТАКСИС 

 #include < complex.h > 

 
 double complex catan(double complex  z ); 

 
 float complex catanf(float complex  z ); 

 
 long double complex catanl(long double complex  z ); 

 
   
 ОПИСАНИЕ 

Функция catan() вычисляет комплексный atan().
Если y = catan(z), то z = ctan(y).
Действительная часть y выбирается из интервала [-pi/2,pi/2].
 

Также catan(z) = 1/2i clog((1+iz)/(1-iz)).
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

C99
   
 СМ. ТАКЖЕ 

 clog (3),

 ccos (3)

 

 
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