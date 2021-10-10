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
 
 
 
 strdupa (3) >>  strdupa  (3)   ( Русские man: Библиотечные вызовы )   strdupa  (3)   ( Linux man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

strdup, strndup, strdupa, strndupa - дублирует строку
   
 СИНТАКСИС 

 #include < string.h > 

 char *strdup(const char * s ); 

 #define _GNU_SOURCE 
 
 #include < string.h > 

 char *strndup(const char * s , size_t  n ); 
 
 char *strdupa(const char * s ); 
 
 char *strndupa(const char * s , size_t  n ); 

 

   
 ОПИСАНИЕ 

Функция  strdup()  возвращает указатель на новую строку, являющуюся
дубликатом строки  s . Память под новую строку выделятся с помощью
 malloc (3) и может быть высвобождены с помощью  free (3).
 
Функция  strndup()  похожа на предыдущую, но копирует, как максимум,
 n  символов. Если  s  длиннее  n , то копируются только n 
символов и добавляется конечный NUL.
 
Функции  strdupa  и  strndupa  похожи, но для выделения буфера
используют  alloca (3) . Эти функции доступны только при использовании
GNU GCC и имеют те же ограничения, что и  alloca (3) .
 
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Функция  strdup()  возвращает указатель на строку-дубль или NULL,
если недостаточно памяти.
   
 НАЙДЕННЫЕ ОШИБКИ 

 
 ENOMEM 

 
Недостаточно памяти под дубликат строки.
 
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 


SVID 3, BSD 4.3.
Функции  strndup() ,  strdupa()  и  strndupa()  являются
расширениями GNU.
   
 СМ. ТАКЖЕ 

 alloca (3),

 calloc (3),

 free (3),

 malloc (3),

 realloc (3)

 

 
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