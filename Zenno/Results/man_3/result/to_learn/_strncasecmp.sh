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
 
 
 
 strncasecmp (3)   strncasecmp  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  strncasecmp  (3)   ( Русские man: Библиотечные вызовы )   strncasecmp  (3)   ( Linux man: Библиотечные вызовы )   strncasecmp  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

strcasecmp, strncasecmp - сравнение двух строк без учета регистра
   
 СИНТАКСИС 

 #include < strings.h > 

 int strcasecmp(const char * s1 , const char * s2 ); 

 int strncasecmp(const char * s1 , const char * s2 , size_t  n ); 
 

   
 ОПИСАНИЕ 

Функция  strcasecmp()  сравнивает строки  s1  и  s2 ,
игнорируя регистр символов. Она возвращает целое число, которое
меньше, больше нуля или равно ему, если  s1  соответственно 
меньше, больше  s2  или равно ему.
 

Функция  strncasecmp()  работает аналогичным образом, но сравнивает
только первые
 n 

символов строки  s1 .
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Функции  strcasecmp()  и  strncasecmp()  возвращают целое число,
которое меньше, больше нуля или равно ему, если строка  s1  (или ее
первые  n  байтов) соответственно меньше, больше или равна
 s2 .
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

BSD 4.3
   
 СМ. ТАКЖЕ 

 bcmp (3),

 memcmp (3),

 strcmp (3),

 strcoll (3),

 strncmp (3)

 

 
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