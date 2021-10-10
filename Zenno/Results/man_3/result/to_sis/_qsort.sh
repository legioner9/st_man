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
 
 
 
 qsort (3)   qsort  (3)   ( Solaris man: Библиотечные вызовы )   qsort  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  qsort  (3)   ( Русские man: Библиотечные вызовы )   qsort  (3)   ( Linux man: Библиотечные вызовы )   qsort  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

qsort - упорядочивает массив
   
 СИНТАКСИС 

 #include < stdlib.h > 

 void qsort(void * base , size_t  nmemb , size_t  size , 
 int(* compar )(const void *, const void *)); 
 


   
 ОПИСАНИЕ 

Функция  qsort()  упорядочивает массив из  nmemb  элементов
размером  size . Аргумент  base  указывает на начало массива.
 

Содержимое массива располагается по возрастающему принципу, согласно
функции сравнения, указанной в параметре  compar  и
имеющей два аргумента (сравниваемые элементы массива).
 

Функция сравнения должна возвращать целое число меньше, больше нуля или
равное ему, если первый аргумент, соответственно, меньше, больше второго
или равен ему. Если два члена массива равны, то порядок их расположения
в массиве не определен.
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Функция  qsort()  не возвращает значений.
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

SVID 3, POSIX, BSD 4.3, ISO 9899
   
 СМ. ТАКЖЕ 

 sort (1)

 

 
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