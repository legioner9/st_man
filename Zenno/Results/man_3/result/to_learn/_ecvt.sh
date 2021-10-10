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
 
 
 
 ecvt (3)   ecvt  (3)   ( Solaris man: Библиотечные вызовы ) >>  ecvt  (3)   ( Русские man: Библиотечные вызовы )   ecvt  (3)   ( Linux man: Библиотечные вызовы )   ecvt  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

ecvt, fcvt - преобразует число с плавающей точкой в строку
   
 СИНТАКСИС 

 #include < stdlib.h > 

 
 char *ecvt(double  number , int  ndigits , int * decpt , 

 int * sign ); 

 
 char *fcvt(double  number , int  ndigits , int * decpt , 

 int * sign ); 

   
 ОПИСАНИЕ 

Функция  ecvt()  преобразует  number  в строку из  ndigits  цифр
( ndigits  ограничено возможностями системы и определяется точностью
вещественного числа) и возвращает указатель на эту строку. Старшая
часть числа не равна нулю, кроме случая, когда
 number 

равно нулю. Младшая часть округляется.
Сама строка не содержит десятичной точки.
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

И  ecvt() , и  fcvt()  возвращают указатель на статически выделенную
строку, содержащую ASCII-представление числа  number . Эта строка
изменяется при каждом вызове  ecvt()  или  fcvt() .
   
 ЗАМЕЧАНИЯ 

Функция устарела. Используйте
 R sprintf (). 

Linux libc4 и libc5 определяет тип 
 ndigits 

как
 size_t .

Но не все локали используют точку в качестве разделителя целой и дробной части
(`десятичную точку').
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

SysVR2, XPG2
   
 СМ. ТАКЖЕ 

 ecvt_r (3),

 gcvt (3),

 qecvt (3),

 setlocale (3),

 sprintf (3)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
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