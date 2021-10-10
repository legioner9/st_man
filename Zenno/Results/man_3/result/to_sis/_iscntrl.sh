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
 
 
 
 iscntrl (3)   iscntrl  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  iscntrl  (3)   ( Русские man: Библиотечные вызовы )   iscntrl  (3)   ( Linux man: Библиотечные вызовы )   iscntrl  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

isalnum, isalpha, isascii, isblank, iscntrl, isdigit, isgraph, islower,
isprint, ispunct, isspace, isupper, isxdigit - процедуры классификации
символов
   
 СИНТАКСИС 

 #include < ctype.h > 

 int isalnum(int  c ); 
 int isalpha(int  c ); 
 int isascii(int  c ); 
 int isblank(int  c ); 
 int iscntrl(int  c ); 
 int isdigit(int  c ); 
 int isgraph(int  c ); 
 int islower(int  c ); 
 int isprint(int  c ); 
 int ispunct(int  c ); 
 int isspace(int  c ); 
 int isupper(int  c ); 
 int isxdigit(int  c ); 
 

   
 ОПИСАНИЕ 

Данные функции проверяют, попадает ли символ
 c 

(который должен иметь значение
 unsigned char 

или
 EOF )

в определенный класс символов, существующих в текущем окружении.
 
 isalnum() 

 
проверяет символ на принадлежность к текстовым символам; вызов эквивалентен
 (isalpha( c ) || isdigit( c )) .

 isalpha() 

 
проверяет символ на принадлежность к алфавитным символам; в стандартном окружении
 "C"  это эквивалентно
 (isupper( c ) || islower( c )) .

В некоторых системах могут существовать дополнительные символы, для которых
 isalpha() 

верно, т.е. буквы могут не находиться ни в верхнем, ни в нижнем регистре.
 isascii() 

 
проверяет, является ли  c  7-битным
 unsigned char ,

значение которого попадает в таблицу символов ASCII.
Эта функция является расширением BSD и расширением SVID.
 isblank() 

 
проверяет, является ли символ "пустым"; то есть пробелом или символом табуляции.
Эта функция является расширением GNU.
 iscntrl() 

 
проверяет, является ли символ управляющим.
 isdigit() 

 
проверяет, является ли символ цифрой (от нуля до 9-и).
 isgraph() 

 
проверяет, является ли символ печатаемым (не пробелом).
 islower() 

 
проверяет, является ли символ символом нижнего регистра.
 isprint() 

 
проверяет, является ли символ печатаемым (включая пробел).
 ispunct() 

 
проверяет, является ли символ печатаемым; он не должен быть пробелом
или текстовым символом.
 isspace() 

 
проверяет, являются ли символы неотображаемыми. В окружении
 C 

и
 POSIX 

таковыми являются: пробел, символ перевода страницы
( '\f' ),

"новая строка"
( '\n' ),

"перевод каретки"
( '\r' ),

"горизонтальная табуляция"
( '\t' )

и "вертикальная табуляция"
( '\v' ).

 isupper() 

 
проверяет, расположен ли символ в верхнем регистре.
 isxdigit() 

 
проверяет, принадлежит ли символ к шестнадцатеричному разряду, т.е.
является ли он одним из:

 0 1 2 3 4 5 6 7 8 9 a b c d e f A B C D E F .

 
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Возвращаются ненулевые значения, если проверяемый символ
 c 

попадает в соответствующий класс символов, в противном случае возвращается ноль.
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

ANSI - C, BSD 4.3.
Функция  isascii()  является расширением BSD и расширением SVID.
Функция  isblank()  является расширением GNU.
   
 ЗАМЕЧАНИЯ 

Отношение символов к какому-либо классу  зависит от текущей локали.
Например,
 isupper() 

не распознает A - umlaut как букву верхнего регистра в окружении
 C 

по умолчанию.
   
 СМ. ТАКЖЕ 

 tolower (3),

 toupper (3),

 setlocale (3),

 ascii (7),

 locale (7)

 

 
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