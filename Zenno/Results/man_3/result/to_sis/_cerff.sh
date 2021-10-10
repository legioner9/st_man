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
 
 
 
 cerff (3) >>  cerff  (3)   ( Русские man: Библиотечные вызовы )   cerff  (3)   ( Linux man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

cerf, cerff, cerfl, cerfc, cerfcf, cerfcl - функция комплексной ошибки
   
 СИНТАКСИС 

 #include < complex.h > 

 
 double complex cerf(double complex z ); 

 
 float complex cerff(float complex  z ); 

 
 long double complex cerfl(long double complex z ); 

 
 double complex cerfc(double complex  x ); 

 
 float complex cerfcf(float complex  x ); 

 
 long double complex cerfcl(long double complex  x ); 

 
   
 ОПИСАНИЕ 

Функция cerf() является комплексной версией функции ошибки.
erf(z) = 2/sqrt(pi) * интеграл от 0 до x по exp(-t*t) dt.
Функция cerfc() определяется как cerfc(z) = 1-cerf(z).

   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

C99

   
 СМ. ТАКЖЕ 

 erf (3)

 

 
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