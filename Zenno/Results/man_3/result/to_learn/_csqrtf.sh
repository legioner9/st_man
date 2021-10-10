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
 
 
 
 csqrtf (3) >>  csqrtf  (3)   ( Русские man: Библиотечные вызовы )   csqrtf  (3)   ( Linux man: Библиотечные вызовы )   csqrtf  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

csqrt, csqrtf, csqrtl - вычисление комплексного квадратного корня
   
 СИНТАКСИС 

 #include < complex.h > 

 
 double complex csqrt(double complex  z ); 

 
 float complex csqrt(float complex  z ); 

 
 long double complex csqrt(long double complex  z ); 

 
   
 ОПИСАНИЕ 

Вычисляет квадратный корень заданного комплексного числа,
с неотрицательной действительной частью и с обрезанной ветвью
вдоль отрицательной действительной оси.
(Это означает, что csqrt(-1+eps*I) будет близко к I, в то время как
csqrt(-1-eps*I) будет близко к -I, если eps маленькое положительное
действительное число.)
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

C99
   
 СМ. ТАКЖЕ 

 cabs (3),

 cexp (3)

 

 
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