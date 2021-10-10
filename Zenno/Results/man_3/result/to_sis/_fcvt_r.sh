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
 
 
 
 fcvt_r (3) >>  fcvt_r  (3)   ( Русские man: Библиотечные вызовы )   fcvt_r  (3)   ( Linux man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

ecvt_r, fcvt_r, qecvt_r, qfcvt_r - преобразует число с плавающей точкой в строку
   
 СИНТАКСИС 

 #include < stdlib.h > 

 
 char *ecvt_r(double  number , int  ndigits , int * decpt , 

 int * sign , char * buf , size_t  len ); 

 
 char *fcvt_r(double  number , int  ndigits , int * decpt , 

 int * sign , char * buf , size_t  len ); 

 
 char *qecvt_r(long double  number , int  ndigits , int * decpt , 

 int * sign , char * buf , size_t  len ); 

 
 char *qfcvt_r(long double  number , int  ndigits , int * decpt , 

 int * sign , char * buf , size_t  len ); 

   
 ОПИСАНИЕ 

Функции
 ecvt_r ,

 fcvt_r ,

 qecvt_r 

и
 qfcvt_r 

идентичны функциям
 ecvt ,

 fcvt ,

 qecvt 

и
 qfcvt ,

соответственно, за исключением того, что они не возвращают результаты
в статическом буфере, а вместо этого используют указанный
 buf 

размером
 len .

См.
 ecvt (3)

и
 qecvt (3).

   
 ЗАМЕЧАНИЯ 

Эти функции устарели. Вместо них рекомендуется использовать
 sprintf ().

   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

Эти функции являются расширениями GNU.
   
 СМ. ТАКЖЕ 

 ecvt (3),

 qecvt (3),

 sprintf (3)

 

 
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