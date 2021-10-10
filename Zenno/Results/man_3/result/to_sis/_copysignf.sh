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
 
 
 
 copysignf (3)   copysignf  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  copysignf  (3)   ( Русские man: Библиотечные вызовы )   copysignf  (3)   ( Linux man: Библиотечные вызовы )   copysignf  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

copysign, copysignf, copysignl - копирование знака числа
   
 СИНТАКСИС 

 #include < math.h > 

 double copysign(double  x , double  y ); 
 
 float copysignf(float  x , float  y ); 
 
 long double copysignl(long double  x , long double  y ); 
 

   
 ОПИСАНИЕ 

Функции  copysign()  возвращают величину, чье абсолютное значение
равно  x , но знак которой соответствует знаку значения  y .
Если  x  является нечисловым значением NaN, то возвратится также
NaN со знаком  y .
   
 ЗАМЕЧАНИЯ 

Функции  copysign()  могут воспринять ноль с отрицательным знаком,
как положительный ноль.
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

C99, BSD 4.3.
Эта функция определена в IEC 559 (а приложение с рекомендуемыми
функциями - в IEEE 754/IEEE 854).
   
 СМ. ТАКЖЕ 

 signbit (3)

 
 

 
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