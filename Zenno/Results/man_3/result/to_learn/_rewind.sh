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
 
 
 
 rewind (3)   rewind  (3)   ( Solaris man: Библиотечные вызовы )   rewind  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  rewind  (3)   ( Русские man: Библиотечные вызовы )   rewind  (3)   ( Linux man: Библиотечные вызовы )   rewind  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

fgetpos, fseek, fsetpos, ftell, rewind - меняют положение операции в потоке
   
 СИНТАКСИС 

 #include < stdio.h > 

 
 int fseek(FILE * stream , long  offset , int  whence ); 

 

 long ftell(FILE * stream ); 

 

 void rewind(FILE * stream ); 

 

 int fgetpos(FILE * stream , fpos_t * pos ); 

 

 int fsetpos(FILE * stream , fpos_t * pos ); 

   
 ОПИСАНИЕ 

Функция
 fseek 

устанавливает позицию следующей операции ввода/вывода в потоке,
на который указывает аргумент
 stream .

Новая позиция получается прибавлением смещения
 offset 

байтов к начальной позиции, определяемой параметром
 whence .

Если
 whence 

определяется как
 SEEK_SET ,

 SEEK_CUR 

или
 SEEK_END ,

то смещение будет относиться к началу файла,
текущей позиции указателя или концу файла соответственно. Успешный вызов функции
 fseek 

"очищает" индикатор конца файла для потока и отменяет влияние функции
 ungetc (3)

на этот же поток.
 

Функция
 ftell 

получает текущее значение позиции в файле для потока, на который указывает
 stream .

 

Функция
 rewind 

устанавливает позицию в файле для потока, на который указывает
 stream , 

равную началу файла. Эта функция эквивалентна вызову
 

 
(void)fseek(stream, 0L, SEEK_SET),
 

 

хотя в этом случае "очищается" также индикатор ошибок (см.
 clearerr (3)).

 

Функции
 fgetpos 

и
 fsetpos 

равны по значению вызовам
 ftell 

и
 fseek 

(при этом значение положения (whence) установлено равным 
 SEEK_SET );

они сохраняют (или устанавливают) текущее значение смещения в файле
в объектах, определяемых
 pos , или берут эти значения из данных объектов. 

В некоторых не-UNIX системах объект
 fpos_t 

может быть сложным объектом, а данные функции могут быть единственным
способом быстро менять позицию в текстовом потоке.
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Функция
 rewind 

не возвращает значений.  При успешном завершении вызова
 fgetpos ,

 fseek ,

 fsetpos 

возвращают 0,
а
 ftell 

возвращает значение текущего смещения. В противном случае возвращается -1,
а в глобальную переменную
 errno 

записывается соответствующий код ошибки.
   
 НАЙДЕННЫЕ ОШИБКИ 

 
 EBADF 

 
В указанном потоке
 stream 

невозможно изменять позицию ввода/вывода в файле.
 EINVAL 

 
Параметр
 whence 

в
 fseek 

не является
 SEEK_SET ,

 SEEK_END 

или
 SEEK_CUR .

 
 

Фукнции
 fgetpos ,

 fseek ,

 fsetpos 

и
 ftell 

при ошибках устанавливают значение глобальной переменной
 errno 

равным значению, определенному в функциях
 fflush (3),

 fstat (2),

 lseek (2)

и
 malloc (3).

   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

Функции
 fgetpos ,

 fsetpos ,

 fseek ,

 ftell 

и
 rewind 

соответствуют стандарту ANSI X3.159-1989 (``ANSI C'').
   
 СМ. ТАКЖЕ 

 lseek (2),

 fseeko (3)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 НАЙДЕННЫЕ ОШИБКИ 
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