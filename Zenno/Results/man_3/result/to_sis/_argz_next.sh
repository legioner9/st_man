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
 
 
 
 argz_next (3) >>  argz_next  (3)   ( Русские man: Библиотечные вызовы )   argz_next  (3)   ( Linux man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

argz_add, argz_add_sep, argz_append, argz_count, argz_create,
argz_create_sep, argz_delete, argz_extract, argz_insert,
argz_next, argz_replace, argz_stringify - функции для обработки списка argz
   
 СИНТАКСИС 

 
 #include < argz.h > 

 error_t 
 argz_add(char ** argz , size_t * argz_len , const char * str ); 

 error_t 
 argz_add_sep(char ** argz , size_t * argz_len , 
 
                     const char * str , int  delim ); 

 error_t 
 argz_append(char ** argz , size_t * argz_len , 
 
                     const char * buf , size_t  buf_len ); 

 size_t 
 argz_count(const char * argz , size_t  argz_len ); 

 error_t 
 argz_create(char * const  argv [], char ** argz , 
 
                     size_t * argz_len ); 

 error_t 
 argz_create_sep(const char * str , int  sep , char ** argz , 
 
                     size_t * argz_len ); 

 error_t 
 argz_delete(char ** argz , size_t * argz_len , char * entry ); 

 void 
 argz_extract(char * argz , size_t  argz_len , char  ** argv ); 

 error_t 
 argz_insert (char ** argz , size_t * argz_len , char * before , 
 
                     const char * entry ); 

 char * 
 argz_next(char * argz , size_t  argz_len , const char * entry ); 

 error_t 
 argz_replace(char ** argz , size_t * argz_len , const char * str , 
 
                     const char * with , unsigned int * replace_count ); 

 void 
 argz_stringify(char * argz , size_t  len , int  sep ); 

 

   
 ОПИСАНИЕ 

Эти функции являются специфичными для glibc.
 

Вектор argz является указателем на символьный буфер вместе с его длиной.
Запланированной интерпретацией символьного буфера является массив строк,
разделенных байтами NUL. Если длина ненулевая, то последний байт в буфере
должен быть NUL.
 

Эти функции предназначены для обработки векторов argz.
Пары (NULL,0) являются вектором argz и, наоборот векторы argz длиной 0
должны иметь указатель NULL. Распределение непустых векторов argz
осуществляется через использование
 malloc (3),

так что потом может использоваться
 free (3)

для их высвобождения.
 

 argz_add() 

добавляет строку
 str 

в конец массива
* argz ,

и обновляет
* argz 

и
* argz_len .

 

 argz_add_sep() 

похоже, но разделяет строку
 str 

в подстроки, разделенные символом
 delim .

Например, можно использовать это для путей поиска Unix с разделителем ':'.
 

 argz_append() 

добавляет вектор argz
( buf , buf_len )

после
(* argz ,* argz_len )

и обновляет
* argz 

и
* argz_len .

(Таким образом,
* argz_len 

будет увеличено на
 buf_len .)

 

 argz_count() 

подсчитывает число строк, то есть число байтов NUL в
( argz , argz_len ).

 

 argz_create() 

преобразует аргумент вектора
 argv 

в стиле Unix, заканчивающийся на (char *) 0, в вектор argz
(* argz ,* argz_len ).

 

 argz_create_sep() 

преобразует строку, заканчивающуюся на NUL
 str 

в вектор argz
(* argz ,* argz_len )

разделяя его при каждой встрече разделителя
 sep .

 

 argz_delete() 

удаляет подстроки, на которые указывают
 entry 

из вектора argz
(* argz ,* argz_len )

и обновляет
* argz 

и
* argz_len .

 

 argz_extract() 

является противоположностью для
 argz_create() .

Берется вектор argz
( argz , argz_len )

и заполняет массив, начиная с
 argv 

указателями на подстроки и завершая его NULL,
тем самым создавая вектор argv в стиле Unix.
Массив
 argv 

должен иметь пространство для
 argz_count ( argz , argz_len ) + 1

указателей.
 

 argz_insert() 

является противоположностью для
 argz_delete() .

Она вставляет аргумент
 entry 

с позиции
 before 

в вектор argz
(* argz ,* argz_len )

и обновляет
* argz 

и
* argz_len .

Если
 before 

равно NULL, то
 entry 

будет вставлено в конец.
 

 argz_next() 

является функцией для прохода через argz на следующий вектор.
Если
 entry 

равно NULL, то возвращается первый элемент. Иначе возвращается
следующий элемент. Если последующего элемента нет, то возвращается NULL.
 

 argz_replace() 

заменяет каждую найденную строку
 str 

на
 with ,

перераспределяя argz при необходимости. Если
 replace_count 

не равно NULL, то
* replace_count 

будет увеличено на число этих вхождений.
 

 argz_stringify() 

является противоположностью для
 argz_create_sep() .

Она преобразует вектор argz в обычные строки, заменяя все NUL
за исключением последнего за позицией
 sep .

   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Все функции argz, реализующие распределение памяти, возвращают данные
типа  error_t , причем возвращают  0  при нормальном завершении работы
и  ENOMEM  при ошибках.
   
 НАЙДЕННЫЕ ОШИБКИ 

Векторы argz без завершающего NUL могут привести к ошибке "Segmentation Fault".
   
 ЗАМЕЧАНИЯ 

Эти функции являются расширением GNU. Работайте с ними аккуратно.
   
 СМ. ТАКЖЕ 

 envz (3)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 НАЙДЕННЫЕ ОШИБКИ 
 ЗАМЕЧАНИЯ 
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