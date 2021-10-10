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
 
 
 
 wctomb (3)   wctomb  (3)   ( Solaris man: Библиотечные вызовы )   wctomb  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  wctomb  (3)   ( Русские man: Библиотечные вызовы )   wctomb  (3)   ( Linux man: Библиотечные вызовы )   wctomb  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

wctomb - преобразование широкого символа в многобайтовую последовательность
   
 СИНТАКСИС 

 #include < stdlib.h > 

 int wctomb(char * s , wchar_t  wc ); 
 

   
 ОПИСАНИЕ 

Если  s  не равен NULL, то функция  wctomb  преобразует широкий
символ  wc  в его многобайтовое представление и сохраняет его в
начале массива символов, на который указывает  s . Изменяется
переменная смещения, которая хранится в статической  переменной,
известной только функции wctomb, затем возвращается длина полученного
многобайтового представления, т.е. число байтов, записанных в  s .
 

Программист должен убедиться, что в  s  существует достаточно места
хотя бы для записи  MB_CUR_MAX  символов.
 

Если  s  равен NULL, то функция  wctomb  обнуляет состояние
смещения (известное только этой функции), возвращая его начальное
положение; ненулевое значение возвращается, если кодировка имеет
необычное смещение; ноль будет возвращен, если кодировка не имеет
смещения.
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Если  s  не равен NULL, то функция  wctomb  возвращает
количество байтов, записанных в  s . Если  wc  не может быть
приведен в виде многобайтовой последовательности (в соответствии с
текущей системной локалью), то возвращается -1.
 

В случае, когда  s  равен NULL, функция  wctomb  возвращает не
ноль, если кодировка имеет необычное смещение; или ноль, если кодировка
не имеет смещения.
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

ISO/ANSI C, UNIX98
   
 СМ. ТАКЖЕ 

 wcrtomb (3),

 wcstombs (3),

 MB_CUR_MAX (3)

   
 ЗАМЕЧАНИЯ 

Поведение функции  wctomb  зависит от категории LC_CTYPE текущей 
системной локали.
 

Функция  wcrtomb  предоставляет Вам многофункциональный интерфейс
с теми же возможностями.
 

 
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