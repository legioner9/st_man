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
 
 
 
 bstring (3)   bstring  (3)   ( Solaris man: Библиотечные вызовы )   bstring  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  bstring  (3)   ( Русские man: Библиотечные вызовы )   bstring  (3)   ( Linux man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

bcmp, bcopy, bzero, memccpy, memchr, memcmp, memcpy, memfrob, memmem, 
memmove, memset - операции со строками байтов
   
 СИНТАКСИС 

 #include < string.h > 

 int bcmp(const void * s1 , const void * s2 , int  n ); 

 void bcopy(const void * src , void * dest , int  n ); 

 void bzero(void * s , int  n ); 

 void *memccpy(void * dest , const void * src , int  c , size_t  n ); 

 void *memchr(const void * s , int  c , size_t  n ); 

 int memcmp(const void * s1 , const void * s2 , size_t  n ); 

 void *memcpy(void * dest , const void * src , size_t  n ); 

 void *memfrob(void * s , size_t  n ); 

 void *memmem(const void * needle , size_t  needlelen , 
 const void * haystack , size_t  haystacklen ); 
 

 void *memmove(void * dest , const void * src , size_t  n ); 

 void *memset(void * s , int  c , size_t  n ); 
 

   
 ОПИСАНИЕ 

Эти функции производят операции над строками, не заканчивающимися нулем.
Смотрите конкретные страницы документации с описаниями каждой функции.
   
 СМ. ТАКЖЕ 

 bcmp (3),

 bcopy (3),

 bzero (3),

 memccpy (3),

 memchr (3),

 memcmp (3),

 memcpy (3),

 memfrob (3),

 memmem (3),

 memmove (3),

 memset (3)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
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