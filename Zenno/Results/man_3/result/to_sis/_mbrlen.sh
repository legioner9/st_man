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
 
 
 
 mbrlen (3)   mbrlen  (3)   ( Solaris man: Библиотечные вызовы )   mbrlen  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  mbrlen  (3)   ( Русские man: Библиотечные вызовы )   mbrlen  (3)   ( Linux man: Библиотечные вызовы )   mbrlen  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

mbrlen - определяет количество байтов в последующем многобайтовом символе
   
 СИНТАКСИС 

 #include < wchar.h > 

 size_t mbrlen(const char * s , size_t  n , mbstate_t * ps ); 
 

   
 ОПИСАНИЕ 

Функция  mbrlen  проверяет, в лучшем случае,
 n  байтов в многобайтовой строке, начинающейся с  s ,
и извлекает из нее следующий полный многобайтовый символ.
Обновляется статус смещения  *ps . Если многобайтовый символ "непустой", 
то возвращается количество байтов, которые были взяты из  s .
Если многобайтовый символ является "пустым", то 
статус смещения  *ps  становится исходным и возвращается 0.
 

Если в количество  n  байтов, начинающихся с  s , не входит 
полный многобайтовый символ, то  mbrlen  возвращает  (size_t)(-2) .
Такое может случиться даже при  n  >=  MB_CUR_MAX ,
если многобайтовая строка содержит лишние последовательности сдвига.
 

Если многобайтовая строка, начинающаяся с  s ,
содержит неправильную многобайтовую последовательность перед
последующим полным символом, то  mbrlen  возвращает
 (size_t)(-1)  и меняет значение переменной  errno  на  EILSEQ . 
В этом случае влияние на  *ps  является неопределенным.
 

Если  s  является NULL-указателем, то вместо него используется
статическое анонимное смещение, известное только функции mbrlen.
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Функция  mbrlen  возвращает количество байтов, выделенных из многобайтовой
последовательности, начинающейся с  s  (если был распознан ненулевой
широкий символ).
Возвращается 0, если был распознан нулевой широкий символ.
Если была обнаружена неправильная многобайтовая последовательность,
то возвращается (size_t)(-1) и значение переменной  errno  меняется
на значение  EILSEQ .
Если не получилось выделить полный многобайтовый символ,
то возвращается (size_t)(-2); при этом считается, что  n  должно увеличиться.
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

ISO/ANSI C, UNIX98
   
 СМ. ТАКЖЕ 

 mbrtowc (3)

   
 ЗАМЕЧАНИЯ 

Поведение  mbrlen  зависит от категории LC_CTYPE текущей локали.
 

 
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