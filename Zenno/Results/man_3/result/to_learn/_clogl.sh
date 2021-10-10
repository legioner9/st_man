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
 
 
 
 clogl (3) >>  clogl  (3)   ( Русские man: Библиотечные вызовы )   clogl  (3)   ( Linux man: Библиотечные вызовы )   clogl  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

clog, clogf, clogl - натуральный логарифм комплексного числа
   
 СИНТАКСИС 

 #include < complex.h > 

 
 double complex clog(double complex z ); 

 
 float complex clogf(float complex  z ); 

 
 long double complex clogl(long double complex z ); 

 
   
 ОПИСАНИЕ 

Лорагифм clog является обратном функцией для экспоненты cexp.
Таким образом, если y = clog(z), то z = cexp(y).
Мнимая часть y выбирается из интервала [-I*pi,I*pi].
 

Также clog(z) = log(cabs(z))+I*carg(z).
 

Пожалуйста, заметьте: близкое к нулю z приведет к ошибке переполнения.
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

C99
   
 СМ. ТАКЖЕ 

 cabs (3),

 cexp (3),

 clog10 (3)


 
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