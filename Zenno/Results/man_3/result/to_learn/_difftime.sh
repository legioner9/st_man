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
 
 
 
 difftime (3)   difftime  (3)   ( Solaris man: Библиотечные вызовы )   difftime  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  difftime  (3)   ( Русские man: Библиотечные вызовы )   difftime  (3)   ( Linux man: Библиотечные вызовы )   difftime  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

difftime - вычисляет разницу во времени
   
 СИНТАКСИС 

 #include < time.h > 

 I double difftime(time_t  time1 , time_t  time0 ); 
 

   
 ОПИСАНИЕ 

Функция  difftime()  возвращает количество секунд, прошедших
со времени  time1  и до времени  time0 , представленнго типом double.
Обе переменные должны быть календарным временем, т.е. временем, прошедшем
с начала эпохи (с 00:00:00 1 января 1970 года всеобщего скоординированного
времени (UTC)).
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

SVID 3, BSD 4.3, ISO 9899
   
 ЗАМЕЧАНИЯ 

Эта функция входит в стандарт ANSI C.
На системах, соответствующих стандарту POSIX, time_t является арифметическим
типом, поэтому в случаях, когда несущественна возможность переполнения при
вычитании, можно просто определить
 
 #define difftime(t1,t0) (double)(t1 - t0)
 

 

   
 СМ. ТАКЖЕ 

 date (1),

 gettimeofday (2),

 time (2),

 ctime (3),

 gmtime (3),

 localtime (3)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
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