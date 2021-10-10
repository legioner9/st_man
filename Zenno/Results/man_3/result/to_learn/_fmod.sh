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
 
 
 
 fmod (3)   fmod  (3)   ( Solaris man: Библиотечные вызовы )   fmod  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  fmod  (3)   ( Русские man: Библиотечные вызовы )   fmod  (3)   ( Linux man: Библиотечные вызовы )   fmod  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

fmod - функция получения остатка от деления (с плавающей точкой)
   
 СИНТАКСИС 

 #include < math.h > 

 double fmod(double  x , double  y ); 

 float fmodf(float  x , float  y ); 

 long double fmodl(long double  x , long double  y ); 
 

   
 ОПИСАНИЕ 

Функция  fmod()  вычисляет остаток деления  x  на  y .
Возращаемое значение:  x  -  n  *  y  - где  n 
есть частное  x  /  y , округленное к нулю до ближайшего целого числа.
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Функция  fmod()  возвращает остаток деления, но если  y  равно нулю,
то функция выдает сообщение об ошибке и меняет переменную  errno  .
   
 НАЙДЕННЫЕ ОШИБКИ 

 
 EDOM 

 
Знаменатель  y  равен нулю.
 
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

SVID 3, POSIX, BSD 4.3, ISO 9899.
Варианты функции для чисел с плавающей точкой и для длинных двойных чисел
являются обязательными требованиями стандарта C99.
   
 СМ. ТАКЖЕ 

 drem (3)

 

 
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