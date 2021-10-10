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
 
 
 
 ceilf (3)   ceilf  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  ceilf  (3)   ( Русские man: Библиотечные вызовы )   ceilf  (3)   ( Linux man: Библиотечные вызовы )   ceilf  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

ceil, ceilf, ceill - функции округления до наименьшего целого, не меньшего, чем аргумент
   
 СИНТАКСИС 

 #include < math.h > 

 double ceil(double  x ); 
 
 float ceilf(float  x ); 
 
 long double ceill(long double  x ); 
 

   
 ОПИСАНИЕ 

Эти функции округляют  x  до ближайшего целого.
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Возвращает округленное целое значение. Если  x  целое или бесконечное,
то возвращается само значение  x .
   
 НАЙДЕННЫЕ ОШИБКИ 

Могут произойти только ошибки EDOM и ERANGE.
Если  x  явялется нечисловым значением, то возвращается оно же, а переменной
 errno 

присваивается значение EDOM.
   
 ЗАМЕЧАНИЯ 

SUSv2 и POSIX 1003.1-2001 содержат в тексте информацию об
ошибке переполнения (которая может установить
 errno 

в ERANGE или вызвать исключительную ошибку).
В действительности результаты не могут вызвать ошибку переполнения на
любой из современных машин, так что эти описания ошибки просто нонсенс.
(Если быть точнее, преполнение может случиться только когда
максимальное значение экпоненты меньше, чем количество бит мантиссы.
Для стандарта IEEE-754 32-битные и 64-битные числа с плавающей запятой
имеют максимальное значение экспоненты 128 (и соотвественно 1024), а
число битов мантиссы равно 24 (и соответственно 53).)
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

Фукнция
 ceil() 

соответствует стандартам SVID 3, POSIX, BSD 4.3, ISO 9899.
Другие функции соответствуют стандарту C99.
   
 СМ. ТАКЖЕ 

 floor (3),

 lrint (3),

 nearbyint (3),

 rint (3),

 round (3),

 trunc (3)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 НАЙДЕННЫЕ ОШИБКИ 
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