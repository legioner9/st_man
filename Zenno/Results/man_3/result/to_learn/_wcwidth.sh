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
 
 
 
 wcwidth (3)   wcwidth  (3)   ( Solaris man: Библиотечные вызовы )   wcwidth  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  wcwidth  (3)   ( Русские man: Библиотечные вызовы )   wcwidth  (3)   ( Linux man: Библиотечные вызовы )   wcwidth  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

wcwidth - определяет количество колонок, необходимые широкому символу
   
 СИНТАКСИС 

 #include < wchar.h > 

 int wcwidth(wchar_t  c ); 
 

   
 ОПИСАНИЕ 

Функция  wcwidth  возвращает количество колонок, необходимое для
представления широкого символа  c . Если  c  - это печатный широкий
символ, то величина всегда больше нуля. Если  c  - это L'\0', то
возвращаемая величина равна нулю. Иначе возвращается -1.
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Функция  wcwidth  возвращает количество колонок для  c .
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

UNIX98. POSIX.1-2001. 
Заметим, что в glibc до версии 2.2.5 использовался прототип
 

 int wcwidth(wint_t  c ); 
 

   
 СМ. ТАКЖЕ 

 wcswidth (3),

 iswprint (3)

   
 ЗАМЕЧАНИЯ 

Поведение  wcwidth  зависит от категории LC_CTYPE текущей системной локали.
 

 
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