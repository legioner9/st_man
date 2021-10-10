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
 
 
 
 llabs (3)   llabs  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  llabs  (3)   ( Русские man: Библиотечные вызовы )   llabs  (3)   ( Linux man: Библиотечные вызовы )   llabs  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

abs, labs, llabs, imaxabs - вычисляет абсолютную величину целого числа
   
 СИНТАКСИС 

 #include < stdlib.h > 

 int abs(int  j ); 
 
 long int labs(long int  j ); 
 
 long long int llabs(long long int  j ); 

 #include < inttypes.h > 

 intmax_t imaxabs(intmax_t  j ); 
 

   
 ОПИСАНИЕ 

Функция  abs()  вычисляет абсолютную величину целого аргумента  j .
Функции  labs() ,  llabs()  и  imaxabs() 
вычисляют абсолютную величину аргумента  j  соответствующего
типа целого числа.
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Возвращает абсолютную величину целого аргумента.
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

SVID 3, POSIX.1, BSD 4.3, ISO/IEC 9899 (C99).
POSIX.1 (редакция 1996 г.) описывает
только функцию  abs() .
ISO/IEC 9899:1990 (C89) включает в себя
функции  abs()  и  labs() ; функции
 llabs()  и  imaxabs()  были добавлены в C99.
   
 ЗАМЕЧАНИЯ 

Абсолютная величина наибольшего по модулю
целого отрицательного числа не определена.
 

Функция  llabs()  вошла в glibc с версии 2.0, но ее нет
в libc5 или libc4.  Функция  imaxabs()  вошла в 
glibc с версии 2.1.1.
 

For  llabs()  to be declared, it may be necessary to define
 _ISOC99_SOURCE  or  _ISOC9X_SOURCE  (depending on the
version of glibc) before including any standard headers.
 

GCC поддерживает функции  abs()  и  labs() , как встроенные.
GCC 3.0 также поддерживает встроенные функции  llabs()  и  imaxabs() .
   
 СМ. ТАКЖЕ 

 brk (2),

 pagesize (2),

 calloc (3),

 malloc (3),

 realloc (3)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
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