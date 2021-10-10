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
 
 
 
 wctob (3)   wctob  (3)   ( Solaris man: Библиотечные вызовы )   wctob  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  wctob  (3)   ( Русские man: Библиотечные вызовы )   wctob  (3)   ( Linux man: Библиотечные вызовы )   wctob  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

wctob - отображает широкий символ в виде одного байта
   
 СИНТАКСИС 

 #include < wchar.h > 

 int wctob(wint_t  c ); 
 

   
 ОПИСАНИЕ 

Функция  wctob  проверяет, может ли многобайтовое представление
широкого символа  c  состоять из одного байта. Если это так, то
возвращается данный байт.
 

   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Функция  wctob  возвращает однобайтное представление широкого
символа  c , если оно существует, или EOF в ином случае.
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

ISO/ANSI C, UNIX98
   
 СМ. ТАКЖЕ 

 wctomb (3)

   
 ЗАМЕЧАНИЯ 

Поведение функции  wctob  зависит от категории LC_CTYPE текущей системной
локали.
 

Никогда не используйте эту функцию. Она не поможет Вам в написании
программ с корректной интернациональной раскладкой. Используйте вместо
нее функцию  wctomb . Правильно написанная программа не должна
различать многобайтные и однобайтные символы.
 

 
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