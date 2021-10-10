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
 
 
 
 strstr (3)   strstr  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  strstr  (3)   ( Русские man: Библиотечные вызовы )   strstr  (3)   ( Linux man: Библиотечные вызовы )   strstr  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

strstr - найти подстроку
   
 СИНТАКСИС 

 #include < string.h > 

 char *strstr(const char * haystack , const char * needle ); 

 #define _GNU_SOURCE 
 #include < string.h > 

 char *strcasestr(const char * haystack , const char * needle ); 
 

   
 ОПИСАНИЕ 

Функция  strstr()  ищет первое вхождение подстроки  needle 
в строке  haystack . Завершающий символ `\0' не сравнивается.
 
Функция  strcasestr()  подобна функции  strstr() , но
игнорирует регистр символов у обоих аргументов.
   
 ВОЗВРАЩАЕМОЕ ЗНАЧЕНИЕ 

Эти функции возвращают указатель на начало подстроки, или
NULL, если подстрока не найдена.
   
 ОШИБКИ 

Ранние версии Linux libc (например, 4.5.26) не допускали пустого
аргумента  needle . Более поздние версии (например, 4.6.27) работают
правильно и возвращают  haystack , когда  needle  пуст.
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

Функция  strstr()  соответствует C89 и C99.
 
Функция  strcasestr()  является нестандартным расширением.
   
 СМОТРИ ТАКЖЕ 

 index (3),  memchr (3),  rindex (3),  strchr (3),

 strcasecmp (3),  strpbrk (3),  strsep (3),  strspn (3),

 strtok (3),  wcsstr (3)

   
 ПЕРЕВОД 

 Перевод с английского (C) 2000 Дмитрий Морожников
    ( dm@simplex.irkutsk.ru , 2:5070/141.3)

Обновление перевода  выполнил  Слава  Семушин  < php-coder@altlinux.ru >,
09.02.2007
 

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМОЕ ЗНАЧЕНИЕ 
 ОШИБКИ 
 СООТВЕТСТВИЕ СТАНДАРТАМ 
 СМОТРИ ТАКЖЕ 
 ПЕРЕВОД 
 
 
 
 
 
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