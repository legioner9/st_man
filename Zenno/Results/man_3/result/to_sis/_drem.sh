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
 
 
 
 drem (3) >>  drem  (3)   ( Русские man: Библиотечные вызовы )   drem  (3)   ( Linux man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

drem - вычисляет остаток деления
   
 СИНТАКСИС 

 #include < math.h > 

 double drem(double  x , double  y ); 
 

   
 ОПИСАНИЕ 

Функция  drem()  вычисляет остаток деления  x  на
 y . Возвращаемое значение - это  x  -  n  *  y ,
где  n  есть частное деления  x  /  y ,
округленное до ближайшего целого числа.
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Функция  drem()  возвращает остаток, кроме тех случаев, когда  y  равен 0
(в этом случае функция возвращает NULL и меняет переменную  errno ).
   
 НАЙДЕННЫЕ ОШИБКИ 

 
 EDOM 

 
делитель  y  равен 0.
 
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

BSD 4.3
   
 СМ. ТАКЖЕ 

 fmod (3)

 

 
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