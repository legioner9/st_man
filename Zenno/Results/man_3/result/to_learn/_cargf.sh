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
 
 
 
 cargf (3) >>  cargf  (3)   ( Русские man: Библиотечные вызовы )   cargf  (3)   ( Linux man: Библиотечные вызовы )   cargf  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

carg, cargf, cargl - вычисляет аргумент
   
 СИНТАКСИС 

 #include < complex.h > 

 
 double carg(double complex  z ); 

 
 float cargf(float complex  z ); 

 
 long double cargl(long double complex  z ); 

 
   
 ОПИСАНИЕ 

Комплексное число может быть описано двумя действительными координатами.
В первом случае можно использовать прямоугольные координаты:
z = x+I*y, где x = creal(z) and y = cimag(z).
 

Во втором случае можно использовать полярные координаты: z = r*cexp(I*a), тут
r = cabs(z) и является "радиусом", "модулем" или абсолютным значением z,
a = carg(z) и является "фазовым углом" или аргументом z.
 

Также carg(z) = atan(creal(z) / cimag(z)).
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Возвращаемое значение лежит в диапазоне [-pi,pi].
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

C99
   
 СМ. ТАКЖЕ 

 cabs (3),

 complex (5)

 

 
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