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
 
 
 
 lldiv (3)   lldiv  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  lldiv  (3)   ( Русские man: Библиотечные вызовы )   lldiv  (3)   ( Linux man: Библиотечные вызовы )   lldiv  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

ldiv - вычисляет частное и остаток от целочисленного деления
   
 СИНТАКСИС 

 #include < stdlib.h > 

 
 lldiv_t lldiv(long long int  numer , long long int  denom ); 
 

   
 ОПИСАНИЕ 

Функция  ldiv()  делит  numer  на  denom 
и возвращает частное и остаток в структуре, названной  ldiv_t .
Эта структура содержит 2 элемента длинного целого типа, обозначенные как
 quot  и  rem .
Частное округляется в меньшую сторону.
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Структура  ldiv_t .
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

SVID 3, BSD 4.3, ISO 9899
lldiv() был добавлен в ISO C99.
   
 СМ. ТАКЖЕ 

 div (3)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
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