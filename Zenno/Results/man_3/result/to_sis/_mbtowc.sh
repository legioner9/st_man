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
 
 
 
 mbtowc (3)   mbtowc  (3)   ( Solaris man: Библиотечные вызовы )   mbtowc  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  mbtowc  (3)   ( Русские man: Библиотечные вызовы )   mbtowc  (3)   ( Linux man: Библиотечные вызовы )   mbtowc  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

mbtowc - преобразует многобайтовую последовательность в широкий символ
   
 СИНТАКСИС 

 #include < stdlib.h > 

 int mbtowc(wchar_t * pwc , const char * s , size_t  n ); 
 

   
 ОПИСАНИЕ 

Основной случай выполнения данной функции - когда  s  не равно NULL и
 pwc  не равно NULL. В этом случае
функция  mbtowc  проверяет максимум  n  байтов
в многобайтовой строке (начиная с  s ), извлекает из нее последующий 
полный многобайтовый символ, преобразует его в широкий символ и
сохраняет его в  *pwc . 
Обновляется статус смещения  *ps , известный только функции mbtowc.
Если  s  не указывает на байт '\0', то возвращается количество
байтов, которые использовались в  s , в ином случае возвращается 0.
 

Если в число  n  байтов, начиная с  s , не входит полный многобайтовый
символ или если оно содержит неправильную многобайтовую последовательность,
то  mbtowc  возвращает  -1 . Такое может случиться даже при
 n  >=  MB_CUR_MAX , если многобайтовая строка содержит
лишние последовательности смещения.
 

Есть и другой случай, когда  s  не равно NULL, но  pwc  равно NULL.
Тогда функция  mbtowc  выполняется так, как описано выше,
за исключением того, что она не сохраняет 
преобразованные широкие символы в памяти.
 

Третий случай, когда  s  равно NULL. Тогда  pwc  и  n  игнорируются.
Функция  mbtowc  возвращает исходный статус смещения, известный только этой 
функции, также возвращается ненулевое значение, если кодировка имеет
необычный статус смещения. Функция возвращает ноль, если кодировка не имеет статуса.
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Если  s  не равно NULL, то функция  mbtowc  возвращает
количество использованных байтов, начиная с  s , 
или возвращает 0, если  s  указывает на нулевой байт,
-1 возвращается при ошибках и сбоях.
 

Если  s  равно NULL, то функция  mbtowc  возвращает ненулевое значение
(при том, что кодировка имеет необычный статус смещения), и возвращает ноль,
если кодировка не имеет статуса.
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

ISO/ANSI C, UNIX98
   
 СМ. ТАКЖЕ 

 mbrtowc (3),

 mbstowcs (3),

 MB_CUR_MAX (3)

   
 ЗАМЕЧАНИЯ 

Поведение  mbtowc  зависит от категории LC_CTYPE текущей локали.
 

Работа этой функции в нескольких подпроцессах небезопасна.
Функция  mbrtowc  предоставляет Вам более удобный интерфейс
при тех же функциональных возможностях.
 

 
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