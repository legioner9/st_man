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
 
 
 
 finite (3)   finite  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  finite  (3)   ( Русские man: Библиотечные вызовы )   finite  (3)   ( Linux man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

isinf, isnan, finite - проверяет на бесконечность и нечисловое значение (NaN)
   
 СИНТАКСИС 

 #include < math.h > 

 int isinf(double  value ); 

 int isnan(double  value ); 

 int finite(double  value ); 
 

   
 ОПИСАНИЕ 

Функция  isinf()  возвращает -1, если  value  равно
"минус бесконечность", возвращает 1, если  value  равно "плюс бесконечность",
и возвращает 0 в других случаях.
 

Функция  isnan()  возвращает ненулевое значение, если  value 
является нечисловым значением, и 0 в других случаях.
 

Функция  finite()  возвращает ненулевое значение, если  value 
не является ни бесконечностью, ни нечисловым значением,  и 0 в других случаях.
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

BSD 4.3
   
 ЗАМЕЧАНИЯ 

C99 обеспечивает дополнительные макросы, независимые от типов, такие как 
 fpclassify() ,

 isinf() 

и
 isnan() .

   
 СМ. ТАКЖЕ 

 fpclassify (3)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 СООТВЕТСТВИЕ СТАНДАРТАМ 
 ЗАМЕЧАНИЯ 
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