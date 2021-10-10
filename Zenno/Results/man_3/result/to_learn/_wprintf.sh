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
 
 
 
 wprintf (3)   wprintf  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  wprintf  (3)   ( Русские man: Библиотечные вызовы )   wprintf  (3)   ( Linux man: Библиотечные вызовы )   wprintf  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

wprintf, fwprintf, swprintf, vwprintf, vfwprintf, vswprintf - форматированный
вывод широких символов
   
 СИНТАКСИС 

 #include < stdio.h > 
 #include < wchar.h > 

 int wprintf(const wchar_t * format , ...); 
 int fwprintf(FILE * stream , const wchar_t * format , ...); 
 int swprintf(wchar_t * wcs , size_t  maxlen , 
               const wchar_t * format , ...); 

 #include < stdarg.h > 

 int vwprintf(const wchar_t * format , va_list  args ); 
 int vfwprintf(FILE * stream , const wchar_t * format , va_list  args ); 
 int vswprintf(wchar_t * wcs , size_t  maxlen , 
                const wchar_t * format , va_list  args ); 
 

   
 ОПИСАНИЕ 

Семейство функций  wprintf  является эквивалентом семейства  printf  
для работы с широкими символами. Функции из этого семейства производят
вывод широких символов.
 

Функции  wprintf  и  vwprintf  производят вывод широких символов в
поток  stdout .  stdout  должен быть открыт не для байтовых операций;
см. функцию  fwide , где содержится более полная об этом информация.
 

Функции  fwprintf  и  vfwprintf  производят вывод широких символов в
поток  stream .  stream  должен быть открыт не для байтовых операций;
см. функцию  fwide , где содержится более полная об этом информация.
 

Функции  swprintf  и  vswprintf  производят вывод широких символов
в массив широких символов.
Программист должен быть уверен, что в  wcs  достаточно места для  maxlen 
широких символов.
 

Все эти функции очень похожи на  printf ,  vprintf ,  fprintf ,
 vfprintf ,  sprintf ,  vsprintf , но отличаются от них в следующем:
 
 * 

 
Строка  format  представляет собой строку широких символов.
 * 

 
Вывод функций представляет собой широкие символы, а не байты.
 * 

 
 swprintf  и  vswprintf  имеют аргумент  maxlen , а
 sprintf  и  vsprintf  - нет.  snprintf  и  vsnprintf 
имеют аргумент  maxlen , но не возвращают -1 при переполнении буфера
в системах Linux.
 
 

Правила преобразования символов  c  и  s  различны:
 
 c 

 
Если модификатора
 l 

нет, то аргумент
 int 

преобразуется в широкий символ с помощью вызова функции
 btowc ;

затем полученный широкий символ записывается.
Если модификатор
 l 

существует, то записывается аргумент (широкий символ)
 wint_t .

 s 

 
Если модификатор
 l 

отсутствует, то: аргумент
 `` const char * ''

ожидается в виде указателя на массив элементов типа "символ" (указателя на
строку), содержащего многобайтовую символьную последовательность.
Символы массива будут преобразованы в широкие символы последовательным
вызовом функции 
 mbrtowc 

с учетом первоначального состояния. Результирующие широкие символы будут
записаны последовательно до завершающего нулевого символа (но не включая
его). Если количество символов определено, то записывается количество
символов, меньшее определенного числа или равное ему. Обратите внимание, что
количество символов определяет число
 широких символов ,

а не
 байтов 

или
 позиций печати ,

которые будут записаны. Массив должен содержать завершающий нулевой байт
на случай, если определенное в вызове количество байтов окажется
недостаточным, то есть при конвертировании широкого символа возникнет
ситуация, когда размер полученной последовательности слишком велик для
размещения ее в массиве.
-- Если модификатор
 l 

присутствует: аргумент
 `` const wchar_t * ''

ожидается в виде указателя на массив элементов типа "символ" (указателя
на строку), содержащего многобайтовую символьную последовательность.
Массив должен содержать завершающий нулевой байт на случай, если
определенное в вызове количество байтов окажется недостаточным, то есть
при конвертировании широкого символа возникнет ситуация, когда размер
полученной последовательности слишком велик для размещения ее в массиве.
 
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Функции возвращают количество записанных широких символов, кроме
завершающего нулевого символа для функций  swprintf  и
 vswprintf . В случае ошибки возвращается -1.
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

ISO/ANSI C, UNIX98
   
 СМ. ТАКЖЕ 

 printf (3),

 fprintf (3),

 snprintf (3),

 fputwc (3),

 fwide (3),

 wscanf (3)

   
 ЗАМЕЧАНИЯ 

Поведение  wprintf  зависит от категории LC_CTYPE текущей системной локали.
 

Если строка  format  содержит широкие символы не формата ASCII, то
программа будет работать корректно, только если категория LC_CTYPE текущей
системной локали в момент выполнения действия совпадает с категорией
LC_CTYPE текущей системной локали в момент компиляции. Это происходит
потому, что представление
 wchar_t 

зависит от платформы и локали. GNU libc отображает широкие символы,
используя универсальную кодовую таблицу Unicode (ISO-10646), но другие 
платформы могут не следовать этому. Кроме того, использование
универсальных  имен символов ISO C99 в форме \unnnn не решает этой
проблемы. Следовательно, в интернационализированных программах строка
 format   должна содержать только широкие символы из множества ASCII
или они должны быть сконструированы во время выполнения в стиле i18n
(т.е с использованием
 gettext 

или
 iconv 

с последующим
 mbstowcs ).

 

 
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