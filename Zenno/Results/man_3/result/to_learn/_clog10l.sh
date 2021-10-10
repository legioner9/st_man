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
 
 
 
 clog10l (3) >>  clog10l  (3)   ( Русские man: Библиотечные вызовы )   clog10l  (3)   ( Linux man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

clog10, clog10f, clog10l - логарифм по основанию 10 комплексного числа
   
 СИНТАКСИС 

 #include < complex.h > 

 
 double complex clog10(double complex z ); 

 
 float complex clog10f(float complex  z ); 

 
 long double complex clog10l(long double complex z ); 

 
   
 ОПИСАНИЕ 

Логарифм определяется, как log10(cabs(z))+I*carg(z).
Пожалуйста, отметьте: близкое к нулю z приведет к ошибке переполнения.
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

C99

   
 СМ. ТАКЖЕ 

 cabs (3),

 cexp (3),

 clog2 (3),

 clog (3)


 
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