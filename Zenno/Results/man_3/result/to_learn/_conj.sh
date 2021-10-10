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
 
 
 
 conj (3)   conj  (3)   ( Solaris man: Библиотечные вызовы )   conj  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  conj  (3)   ( Русские man: Библиотечные вызовы )   conj  (3)   ( Linux man: Библиотечные вызовы )   conj  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

conj, conjf, conjl - вычисляет комплексное сопряженное число
   
 СИНТАКСИС 

 #include < complex.h > 

 
 double complex conj(double complex  z ); 

 
 float complex conjf(float complex  z ); 

 
 long double complex conjl(long double complex  z ); 

 
   
 ОПИСАНИЕ 

Функция conj() возвращает значение комплексного сопряженного z.
Это значение получено изменением знака мнимой части.
 

Также cabs(z) = csqrt(z * conj(z)).
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

C99
   
 СМ. ТАКЖЕ 

 cabs (3),

 sqrt (3)

 

 
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