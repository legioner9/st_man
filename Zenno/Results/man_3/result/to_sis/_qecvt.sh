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
 
 
 
 qecvt (3) >>  qecvt  (3)   ( Русские man: Библиотечные вызовы )   qecvt  (3)   ( Linux man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

qecvt, qfcvt, qgcvt - преобразуют число с плавающей точкой в строку
   
 СИНТАКСИС 

 #include < stdlib.h > 

 
 char *qecvt(long double  number , int  ndigits , int * decpt , 

 int * sign ); 

 
 char *qfcvt(long double  number , int  ndigits , int * decpt , 

 int * sign ); 

 
 char *qgcvt(long double  number , int  ndigit , char * buf ); 

   
 ОПИСАНИЕ 

Функции
 qecvt ,

 qfcvt 

и
 qgcvt 

идентичны фунциям
 ecvt ,

 fcvt 

и
 gcvt 

соответственно, за исключением того, что они используют аргумент типа
 long double 

 number .

Смотрите
 ecvt (3)

и
 gcvt (3).

   
 ЗАМЕЧАНИЯ 

Эти функции устарели. Вместо них рекомендуется использовать
 sprintf ().

   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

SysVr4.0. Их не видно в большинстве реализаций Unix,
но они встречаются в SunOS. Не поддерживаются libc4 и libc5.
Поддерживается glibc.
   
 СМ. ТАКЖЕ 

 ecvt (3),

 ecvt_r (3),

 gcvt (3),

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