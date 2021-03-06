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
 
 
 
 assert_perror (3) >>  assert_perror  (3)   ( Русские man: Библиотечные вызовы )   assert_perror  (3)   ( Linux man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

assert_perror - проверка номера ошибки и завершение работы
   
 СИНТАКСИС 

 #include < assert.h > 

 void assert_perror(int  errnum ); 
 

   
 ОПИСАНИЕ 

Если макрос
 NDEBUG 

был определен во время последнего включения
 < assert.h > ,

то макрос 
 assert_perror() 

не будет создавать код, и поэтому ничего вообще не будет сделано.
Иначе макрос
 assert_perror() 

выводит сообщение об ошибках на стандартный выход и
завершает работу программы вызовом
 abort() ,

если
 errnum 

не равно нулю. Сообщение содержит имя файла, название функции
и номер строки макроса, вывод из
 strerror(errnum) .

   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Никакие значения не возвращаются.
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

Это расширение GNU.
   
 НАЙДЕННЫЕ ОШИБКИ 

Целью макроса assert является помощь программистам в поиске ошибок
в программах - таких сбоев, которые не могут случиться, если только
не была допущена ошибка в коде программы. Однако, с системными или
библиотечными вызовами ситуация немного отличается, и возврат ошибки
может произойти - и собственно произойдет и будет проверен, но
не через assert, где проверка не получится, если определено NDEBUG,
а правильным кодом обработки ошибок. Никогда не используйте этот макрос.
   
 СМ. ТАКЖЕ 

 exit (3),

 abort (3),

 assert (3),

 strerror (3)

 

 
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