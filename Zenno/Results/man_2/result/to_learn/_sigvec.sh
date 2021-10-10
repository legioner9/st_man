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
 
 
 
 sigvec (2)   sigvec  (2)   ( FreeBSD man: Системные вызовы ) >>  sigvec  (2)   ( Русские man: Системные вызовы )   sigvec  (2)   ( Linux man: Системные вызовы )   sigvec  (3)   ( Solaris man: Библиотечные вызовы )   sigvec  (3)   ( Linux man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

sigvec - BSD-интерфейс работы с сигналами
   
 СИНТАКСИС 

 #include < bsd/signal.h > 

 
 int sigvec(int  sig , struct sigvec * vec , struct sigvec * ovec ); 

   
 ОПИСАНИЕ 

Этот интерфейс устарел после появления
 sigaction (2).

 

В Linux
 sigvec 

является созданной с помощью #define копией функции
 sigaction  

и в лучшем случае является лишь приблизительной копией sigvec интерфейса BSD.
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

BSD, SVr4
   
 СМ. ТАКЖЕ 

 sigaction (2),

 signal (2)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
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