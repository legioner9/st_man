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
 
 
 
 tolower (3)   tolower  (3)   ( Solaris man: Библиотечные вызовы )   tolower  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  tolower  (3)   ( Русские man: Библиотечные вызовы )   tolower  (3)   ( Linux man: Библиотечные вызовы )   tolower  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

toupper, tolower - преобразуют регистр символов
   
 СИНТАКСИС 

 #include < ctype.h > 

 int toupper(int  c ); 
 int tolower(int  c ); 
 

   
 ОПИСАНИЕ 

 toupper() 

преобразует символ
 c 

в заглавный, если это возможно.
 

 tolower() 

преобразует символ
 c 

в строчной, если это возможно.
 

Если
 c 

- это не unsigned char или равен EOF, поведение упомянутых функций непредсказуемо.
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Возвращается преобразованный символ или
 c ,

если преобразование невозможно.
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

ANSI C, BSD 4.3
   
 НАЙДЕННЫЕ ОШИБКИ 

Детальная информация о замене строчных и заглавных букв хранится
в текущей локали. Локаль по умолчанию
 C 

не располагает информацией о символе ``umlaut''.
 

В некоторых неанглийских локалях есть символы нижнего регистра без
их заглавного эквивалента, например, немецкий символ ``sharp s''.
   
 СМ. ТАКЖЕ 

 isalpha (3),

 setlocale (3),

 locale (7)

 

 
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