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
 
 
 
 fputws (3)   fputws  (3)   ( Solaris man: Библиотечные вызовы )   fputws  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  fputws  (3)   ( Русские man: Библиотечные вызовы )   fputws  (3)   ( Linux man: Библиотечные вызовы )   fputws  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

fputws - записывает строку широких символов в поток FILE
   
 СИНТАКСИС 

 #include < wchar.h > 

 int fputws(const wchar_t * ws , FILE * stream ); 
 

   
 ОПИСАНИЕ 

Функция  fputws  - это эквивалент  fputs  для строк широких символов.
Она записывает строку широких символов  ws  в поток  stream .
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Функция  fputws  возвращает неотрицательное число,
если операция завершилась успешно, или -1 как индикатор ошибки.
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

ISO/ANSI C, UNIX98
   
 СМ. ТАКЖЕ 

 fputwc (3)

   
 ЗАМЕЧАНИЯ 

Поведение  fputws  зависит от категории LC_CTYPE текущей локали.
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 СООТВЕТСТВИЕ СТАНДАРТАМ 
 СМ. ТАКЖЕ 
 ЗАМЕЧАНИЯ 
 
 
 
 
 
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