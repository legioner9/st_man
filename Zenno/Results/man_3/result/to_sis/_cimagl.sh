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
 
 
 
 cimagl (3)   cimagl  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  cimagl  (3)   ( Русские man: Библиотечные вызовы )   cimagl  (3)   ( Linux man: Библиотечные вызовы )   cimagl  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

cimag, cimagf, cimagl - получение мнимой части комплексного числа
   
 СИНТАКСИС 

 #include < complex.h > 

 
 double cimag(double complex  z ); 

 
 float cimagf(float double complex  z ); 

 
 long double cimagl(long double complex  z ); 

 
   
 ОПИСАНИЕ 

Функция cimag() возвращает мнимую часть комплексного числа z.
 

Также z = creal(z) + I*cimag(z).
   
 ЗАМЕЧАНИЯ 

gcc также поддерживает __imag__. Это расширение GNU. 
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

C99
   
 СМ. ТАКЖЕ 

 cabs (3),

 creal (3),

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