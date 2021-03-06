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
 
 
 
 MB_CUR_MAX (3)   MB_CUR_MAX  (3)   ( Разные man: Библиотечные вызовы ) >>  MB_CUR_MAX  (3)   ( Русские man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

MB_CUR_MAX - выдает максимальную длину многобайтового символа в текущей локали
   
 СИНТАКСИС 

 #include < stdlib.h > 
 

   
 ОПИСАНИЕ 

Макрос
 MB_CUR_MAX 

определяет целое выражение, выдавая максимальное количество байтов,
необходимых для представления одного широкого символа в текущей локали.
Это величина зависит от локали и, следовательно, не является
константой, определяемой в процессе компиляции.
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Целое >= 1 и <= MB_LEN_MAX. 1 означает обычные символы в 8-битовой кодировке.
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

ANSI C, POSIX.1
   
 СМ. ТАКЖЕ 

 MB_LEN_MAX (3),

 mblen (3),

 mbtowc (3),

 mbstowcs (3),

 wctomb (3),

 wcstombs (3)

 

 
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