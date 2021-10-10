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
 
 
 
 memmem (3)   memmem  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  memmem  (3)   ( Русские man: Библиотечные вызовы )   memmem  (3)   ( Linux man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

memmem - ведет поиск подстроки
   
 СИНТАКСИС 

 #define _GNU_SOURCE 
 
 #include < string.h > 

 void *memmem(const void * haystack , size_t  haystacklen , 
 const void * needle , size_t  needlelen ); 
 

   
 ОПИСАНИЕ 

Функция  memmem()  ищет первое совпадение с
подстрокой  needle  длиной  needlelen  в области памяти
 haystack  длиной  haystacklen .
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Функция  memmem()  возвращает указатель на начало подстроки 
или NULL, если подстрока не найдена.
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

Эта функция является расширением GNU.
   
 НАЙДЕННЫЕ ОШИБКИ 

Данная функция была "разбросана" по библиотекам Linux до версии libc 5.0.9
включительно; аргументы "needle" и "haystack" менялись местами,
при этом возвращался указатель на конец первого совпадения  needle .
Начиная с версий libc 5.0.9, она до сих пор широко используется,
но является опасной для работы.
 

И старые, и новые библиотеки libc содержат такую ошибку: если
 needle  "пустое", то возвращается  haystack -1 (вместо  haystack ).
А в библиотеке glibc (2.0.5) ситуация ухудшается:  возвращается указатель на
последний байт `haystack'. Это исправлено в glibc 2.1.
   
 СМ. ТАКЖЕ 

 strstr (3)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 СООТВЕТСТВИЕ СТАНДАРТАМ 
 НАЙДЕННЫЕ ОШИБКИ 
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