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
 
 
 
 strnlen (3) >>  strnlen  (3)   ( Русские man: Библиотечные вызовы )   strnlen  (3)   ( Linux man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

strnlen - определяет длину строки фиксированной длины
   
 СИНТАКСИС 

 #include < string.h > 

 size_t strnlen(const char * s , size_t  maxlen ); 
 

   
 ОПИСАНИЕ 

Функция  strnlen  возвращает количество символов в строке, на
которую указывает  s , но не более  maxlen .
Завершающий символ '\0' не учитывается.
Функция  strnlen  обрабатывает только первые  maxlen 
символов в строке  s  и не работает с символами после  s+maxlen .
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Функция  strnlen  возвращает  strlen(s) , если длина строки меньше
 maxlen , или  maxlen , если в строке  s  среди первых символов
до  maxlen  не встретится символ '\0' .
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

Эта функция является дополнением к GNU.
   
 СМ. ТАКЖЕ 

 strlen (3)

 

 
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