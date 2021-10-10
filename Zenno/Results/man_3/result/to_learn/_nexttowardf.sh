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
 
 
 
 nexttowardf (3)   nexttowardf  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  nexttowardf  (3)   ( Русские man: Библиотечные вызовы )   nexttowardf  (3)   ( Linux man: Библиотечные вызовы )   nexttowardf  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

nextafter, nexttoward - манипуляции с числами с плавающей точкой
   
 СИНТАКСИС 

 #include < math.h > 

 
 double nextafter(double  x , double  y ); 

 

 float nextafterf(float  x , float  y ); 

 

 long double nextafterl(long double  x , long double  y ); 

 
 double nexttoward(double  x , long double  y ); 

 

 float nexttowardf(float  x , long double  y ); 

 

 long double nexttowardl(long double  x , long double  y ); 

   
 ОПИСАНИЕ 

Функции
 nextafter() 

возвращают следующий ближайшее представимое для
 x  по направлению к  y . Размер шага между
 x  и результатом зависит от типа результата.
Если  x  =  y  то функция просто возвращает  y .
Если любое из значений является
 NaN ,

то возвращается
 NaN .

Иначе добавляется или вычитается значение, соответствующее
значению наименьшего значимого бита в мантиссе, в зависимости
от направления.
 

Функции
 nexttoward() 

делают то же, что и функции
 nextafter() 

за исключением того, что у них второй аргумент имеет тип long double.
 

Эти функции будут выдавать переполнение или опустошение, если
результат выходит за границы диапазонов.
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

C99. Эти функции определены в IEC 559
(а также дополнения к рекомендуемым функциям в IEEE 754/IEEE 854).
   
 СМ. ТАКЖЕ 

 nearbyint (3)

 

 
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