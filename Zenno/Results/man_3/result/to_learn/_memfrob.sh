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
 
 
 
 memfrob (3) >>  memfrob  (3)   ( Русские man: Библиотечные вызовы )   memfrob  (3)   ( Linux man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

memfrob - шифрует область памяти
   
 СИНТАКСИС 

 #include < string.h > 

 void *memfrob(void * s , size_t  n ); 
 

   
 ОПИСАНИЕ 

Функция  memfrob()  шифрует первые  n  байтов области памяти  s 
с помощью операции "исключающее или" (XOR) каждого символа с числом 42.
Обратного эффекта можно добиться использованием  memfrob()  
в шифрованной области памяти.
 

Заметим, что эта функция не является настоящей программой шифрования,
так как константа XOR-операции строго определена и предназначена только
для скрытия строк.
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Функция  memfrob()  возвращает указатель на шифрованную область памяти.
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

Функция  memfrob()  встречается только в  библиотеках Linux C Library и 
GNU C Library.
   
 СМ. ТАКЖЕ 

 strfry (3)

 

 
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