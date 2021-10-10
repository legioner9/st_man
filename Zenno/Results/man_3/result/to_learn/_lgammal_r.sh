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
 
 
 
 lgammal_r (3) >>  lgammal_r  (3)   ( Русские man: Библиотечные вызовы )   lgammal_r  (3)   ( Linux man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

lgamma - логарифм гамма-функции
   
 СИНТАКСИС 

 #include < math.h > 

 double lgamma(double  x ); 
 
 float lgammaf(float  x ); 
 
 long double lgammal(long double  x ); 

 double lgamma_r(double  x , int * signp ); 
 
 float lgammaf_r(float  x , int * signp ); 
 
 long double lgammal_r(long double  x , int * signp ); 
 

   
 ОПИСАНИЕ 

Гамма-функция определяется так:
 
  Gamma(x) = integral from 0 to infinity of t^(x-1) e^-t dt
 
Она определена для всех действительных чисел, кроме неположительных целых.
Для неположительных интеграл  m  получим
 
  Gamma(m+1) = m!
 
и в общем случае для всех  x :
 
  Gamma(x+1) = x * Gamma(x)
 
Для  x  < 0.5 можно использовать упрощенный вариант рассчета:
 
  Gamma(x) * Gamma(1-x) = PI/sin(PI*x)
 

Функция  lgamma()  возвращает натуральный логарифм для абсолютного
значения гамма-функции. Знак гамма-функции возвращается во внешнем
целом  signgam , объявленном в
 < math.h > .

Он равен 1 если гамма-функция положительно или равно нулю,
и -1 если она отрицательна.
 

Так как использование постоянного расположения
 signgam 

не является безопасным для ветвей процессов, то функции  lgamma_r() 
и т.п. были изменены; теперь они возвращают знак через параметр
 signp .

 

Для неположительных целых значений  x ,  lgamma()  возвращает HUGE_VAL,
устанавливает  errno  в ERANGE и активирует исключение деления на ноль.
(Аналогичным образом  lgammaf()  возвращает HUGE_VALF,
а  lgammal()  возвращает HUGE_VALL.)
   
 НАЙДЕННЫЕ ОШИБКИ 

Приложение, желающее проверить ситуацию с ошибкой, должно определить
 errno 

в ноль и вызвать
 feclearexcept(FE_ALL_EXCEPT) 

перед вызовом этих функций. При возврате значений, если
 errno 

не равно нудю или если
 fetestexcept(FE_INVALID | FE_DIVBYZERO | FE_OVERFLOW | FE_UNDERFLOW) 

не равно нулю - то действительно произошла ошибка.
 
 ERANGE 

 
Некорректный аргумент - неположительное целое значение  x .
 
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

C99, SVID 3, BSD 4.3
   
 СМ. ТАКЖЕ 

 tgamma (3)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
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