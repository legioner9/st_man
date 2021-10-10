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
 
 
 
 cabs (3)   cabs  (3)   ( Solaris man: Библиотечные вызовы )   cabs  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  cabs  (3)   ( Русские man: Библиотечные вызовы )   cabs  (3)   ( Linux man: Библиотечные вызовы )   cabs  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

cabs, cabsf, cabsl - вычисляет абсолютную величину комплексного числа
   
 СИНТАКСИС 

 #include < complex.h > 

 
 double cabs(double complex  z ); 

 
 float cabsf(float double complex  z ); 

 
 long double cabsl(long double complex  z ); 

 
   
 ОПИСАНИЕ 

Функция cabs() вычисляет абсолютную величину комплексного числа z.
Результатом является действительное число.
   
 ЗАМЕЧАНИЯ 

Функция фактически является сокращением для hypot(a,b) = sqrt(a*a+b*b).
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

C99
   
 СМ. ТАКЖЕ 

 abs (3),

 hypot (3),

 cimag (3),

 complex (5)

 

 
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