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
 
 
 
 psignal (3)   psignal  (3)   ( Solaris man: Библиотечные вызовы )   psignal  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  psignal  (3)   ( Русские man: Библиотечные вызовы )   psignal  (3)   ( Linux man: Библиотечные вызовы )   psignal  (9)   ( FreeBSD man: Ядро ) 
   
 НАЗВАНИЕ 

psignal - выводит сообщения о сигнале
   
 СИНТАКСИС 

 #include < signal.h > 

 void psignal(int  sig , const char * s ); 

 extern const char *const  sys_siglist [] 
 

   
 ОПИСАНИЕ 

Функция  psignal()  выводит в поток  stderr  сообщение,
содержащее строку  s , а также двоеточие, пробел и строку,
содержащую описание сигнала с номером  sig . Если  sig 
неверен, отображается сообщение о неизвестном сигнале.
 

Массив  sys_siglist  содержит строки описания сигналов в порядке
возрастания их номеров.
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Функция  psignal()  не возвращает никаких значений.
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

BSD 4.3
   
 СМ. ТАКЖЕ 

 perror (3),

 strsignal (3)

 

 
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