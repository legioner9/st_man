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
 
 
 
 feof (3)   feof  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  feof  (3)   ( Русские man: Библиотечные вызовы )   feof  (3)   ( Linux man: Библиотечные вызовы )   feof  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

clearerr, feof, ferror, fileno - проверяют и сбрасывают состояние потока
   
 СИНТАКСИС 

 #include < stdio.h > 

 
 void clearerr( FILE * stream ); 

 

 int feof( FILE * stream ); 

 

 int ferror( FILE * stream ); 

 

 int fileno( FILE * stream ); 

   
 ОПИСАНИЕ 

Функция
 clearerr 

очищает указатели конца файла (end-of-file)
и ошибок для потока, на который указывает аргумент
 stream .

 

Функция
 feof 

проверяет указатель конца файла для потока
 stream ,

возвращая ненулевое значение, если он указывает на конец файла.
Индикатор конца файла может быть очищен только функцией
 clearerr .

 

Функция
 ferror 

проверяет указатель наличия ошибок потока
 stream ,

возвращая ненулевое значение, если он определяет наличие ошибок.
указатель ошибок может быть очищен только функцией
 clearerr . 

 

Функция
 fileno 

проверяет параметр
 stream 

и возвращает его описатель.
   
 НАЙДЕННЫЕ ОШИБКИ 

Данные функции не должны приводить к ошибкам
и они не изменяют глобальную переменную
 errno .

(Однако, если функция
 fileno 

обнаружит, что ее аргумент не является нормальным потоком,
то она должна возвратить -1 и установить
 errno 

в
 EBADF .)

   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

Функции
 clearerr ,

 feof ,

и
 ferror 

соответствуют стандарту X3.159-1989 (``ANSI C'').
   
 СМ. ТАКЖЕ 

 open (2),

 stdio (3)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
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