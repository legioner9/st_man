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
 
 
 
 erff (3)   erff  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  erff  (3)   ( Русские man: Библиотечные вызовы )   erff  (3)   ( Linux man: Библиотечные вызовы )   erff  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

erf, erfc - функция ошибки и дополнительная функция ошибки
   
 СИНТАКСИС 

 #include < math.h >  

 double erf(double  x ); 

 float erff(float  x ); 

 long double erfl(long double  x ); 

 double erfc(double  x ); 

 float erfcf(float  x ); 

 long double erfcl(long double  x ); 

 

   
 ОПИСАНИЕ 

Функция  erf()  возвращает значение функции ошибки от переменной  x ,
заданное следующим образом:
 
 erf(x) = 2/sqrt(Пи)* ( интеграл от 0 до x по exp(-t*t) dt ) 
 
 

Функция  erfc()  возвращает дополнительную функцию ошибки от
 x , т.е. 1.0 - erf(x).
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

SVID 3, BSD 4.3, C99. 
Варианты функции для чисел с плавающей точкой и для длинных двойных чисел
являются обязательными требованиями стандарта C99. 
   
 СМ. ТАКЖЕ 

 exp (3)

 

 
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