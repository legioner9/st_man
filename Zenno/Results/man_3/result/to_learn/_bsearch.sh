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
 
 
 
 bsearch (3)   bsearch  (3)   ( Solaris man: Библиотечные вызовы )   bsearch  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  bsearch  (3)   ( Русские man: Библиотечные вызовы )   bsearch  (3)   ( Linux man: Библиотечные вызовы )   bsearch  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

bsearch - двоичный поиск в отсортированном массиве
   
 СИНТАКСИС 

 #include < stdlib.h > 

 void *bsearch(const void * key , const void * base , size_t  nmemb , 
 size_t  size , int (* compar )(const void *, const void *)); 
 
 

   
 ОПИСАНИЕ 

Функция  bsearch()  ищет в массиве из  nmemb  объектов
(на начальный элемент его, размером  size , указывает аргумент  base )
элемент, совпадающий с объектом, обозначенным  key .
 

Содержимое массива должно быть расположено по возрастанию
в соответствии с функцией  compar , производящей сравнение.
Функция  compar  имеет два параметра (в первый передается указатель
на объект  key , во второй - элемент массива) и возвращает целое
число больше нуля, если  key  больше элемента массива;  меньше нуля,
если меньше, и ноль, если они равны.
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Функция  bsearch()  возвращает указатель на соответствующий элемент массива
или NULL, если совпадений не найдено. Если имеется несколько совпадающих
элементов, то возвращаемый указатель не определен.
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

SVID 3, BSD 4.3, ISO 9899 (C99)
   
 СМ. ТАКЖЕ 

 qsort (3)

 

 
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