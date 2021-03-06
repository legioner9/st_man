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
 
 
 
 abort (3)   abort  (3)   ( Solaris man: Библиотечные вызовы )   abort  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  abort  (3)   ( Русские man: Библиотечные вызовы )   abort  (3)   ( Linux man: Библиотечные вызовы )   abort  (3)   ( POSIX man: Библиотечные вызовы )   abort  (7)   ( Linux man: Макропакеты и соглашения ) 
   
 НАЗВАНИЕ 

abort - вызывает аварийное завершение программы
   
 СИНТАКСИС 

 #include < stdlib.h > 

 void abort(void); 
 

   
 ОПИСАНИЕ 

Функция  abort()  вызывает аварийное завершение программы, если сигнал
SIGABRT не воспринимается обработчиком сигналов.
Если функция  abort()  вызывает завершение программы,
то все открытые потоки закрываются и сбрасываются.
 

Если сигнал SIGABRT заблокирован или игнорируется, то функция  abort() 
все равно сработает.
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Функция  abort()  не возвращает никаких значений.
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

SVID 3, POSIX, BSD 4.3, ISO 9899 (С99)
   
 СМ. ТАКЖЕ 

 sigaction (2),

 exit (3),

 raise (3)

 

 
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