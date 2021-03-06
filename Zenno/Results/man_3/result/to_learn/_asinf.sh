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
 
 
 
 asinf (3)   asinf  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  asinf  (3)   ( Русские man: Библиотечные вызовы )   asinf  (3)   ( Linux man: Библиотечные вызовы )   asinf  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

asin - функция вычисления арксинуса
   
 СИНТАКСИС 

 #include < math.h >  

 double asin(double  x ); 

 float asinf(float  x ); 

 long double asinl(long double  x ); 
 

   
 ОПИСАНИЕ 

Функция  asin()  вычисляет арксинус  x , то есть число, синус которого
равен  x . Если значение  x  находится за границами диапазона
от -1 до 1, то  asin()  прекращает вычисления и код ошибки
записывается в переменную  errno .
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Функция  asin()  возвращает арксинус в радианах, и его значение
математически определено в диапазоне от -Пи/2 до Пи/2 включительно.
   
 НАЙДЕННЫЕ ОШИБКИ 

 
 EDOM 

 
Значение  x  находится вне диапазона.
 
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

SVID 3, POSIX, BSD 4.3, ISO 9899.
Варианты функции для чисел с плавающей точкой и длинного двойного
целого являются требованиями C99.
   
 СМ. ТАКЖЕ 

 acos (3),

 atan (3),

 atan2 (3),

 cos (3),

 sin (3),

 tan (3)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 НАЙДЕННЫЕ ОШИБКИ 
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