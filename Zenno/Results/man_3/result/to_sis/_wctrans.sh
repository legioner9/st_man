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
 
 
 
 wctrans (3)   wctrans  (3)   ( Solaris man: Библиотечные вызовы )   wctrans  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  wctrans  (3)   ( Русские man: Библиотечные вызовы )   wctrans  (3)   ( Linux man: Библиотечные вызовы )   wctrans  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

wctrans - преобразование широких символов
   
 СИНТАКСИС 

 #include < wctype.h > 

 wctrans_t wctrans(const char * name ); 
 

   
 ОПИСАНИЕ 

Тип  wctrans_t  представляет собой способ преобразования широких символов.
Свойства данной функции зависят от ее реализации, но специальное значение
 (wctrans_t)0  всегда указывает на неверное преобразование.
Ненулевая величина  wctrans_t  может быть передана функции
 towctrans  для выполнения преобразований.
 

Функция  wctrans  выполняет преобразование, определенное названием.
Набор корректных названий зависит от категории LC_CTYPE текущей системной
локали, но следующие названия являются коректными для всех локалей:
   "tolower" - осуществляет преобразование  tolower (3)
  "toupper" - осуществляет преобразование  toupper (3)
 

   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Функция  wctrans  возвращает описатель преобразования, если  name 
корректно. Иначе возвращается значение  (wctrans_t)0 .
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

ISO/ANSI C, UNIX98
   
 СМ. ТАКЖЕ 

 wctrans (3)

   
 ЗАМЕЧАНИЯ 

Поведение функции  wctrans  зависит от категории LC_CTYPE текущей системной локали.
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 СООТВЕТСТВИЕ СТАНДАРТАМ 
 СМ. ТАКЖЕ 
 ЗАМЕЧАНИЯ 
 
 
 
 
 
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