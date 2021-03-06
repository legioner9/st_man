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
 
 
 
 realloc (3)   realloc  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  realloc  (3)   ( Русские man: Библиотечные вызовы )   realloc  (3)   ( Linux man: Библиотечные вызовы )   realloc  (3)   ( POSIX man: Библиотечные вызовы )   realloc  (9)   ( FreeBSD man: Ядро ) 
   
 НАЗВАНИЕ 

calloc, malloc, free, realloc - распределяет и освобождает динамическую память
   
 СИНТАКСИС 

 #include < stdlib.h > 

 void *calloc(size_t  nmemb , size_t  size ); 
 void *malloc(size_t  size ); 
 void free(void  *ptr ); 
 void *realloc(void  *ptr , size_t  size ); 
 

   
 ОПИСАНИЕ 

 calloc() 

распределяет память для массива размером
 nmemb ,

каждый элемент которого равен
 size 

байтов, и возвращает указатель на распределенную память.
Память при этом "очищается".
 

 malloc() 

распределяет
 size 

байтов и возвращает указатель на распределенную память.
Память при этом не "очищается".
 

 free() 

освобождает место в памяти, на которое указывает 
 ptr ,

возвращенный, по-видимому, предшествующим вызовом функций
 malloc() ,

 calloc() 

или
 realloc() .

Иначе (или если уже вызывался
 free( ptr ) )

дальнейший ход событий непредсказуем.
Если
 ptr 

равен
 NULL ,

то не выполняется никаких действий.
 

 realloc() 

меняет размер блока памяти, на который указывает
 ptr, 

на размер, равный
 size 

байтов.
Содержание будет неизменным в пределах наименьшего из старых и новых размеров,
а новая распределенная память будет неинициализирована. Если
 ptr 

равно
 NULL ,

то данный вызов эквивалентен
 malloc(size) ;

если размер равен нулю, то данный вызов эквивалентен
 free( ptr ) .

Если только
 ptr 

не равен
 NULL ,

он, по-видимому, возвращен более ранним вызовом
 malloc() ,

 calloc() 

или
 realloc() .

   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Для 
 calloc()  и  malloc() 

возвращаемые значения являются указателем на память, которая должным
образом распределена для каждого типа переменных; или
 NULL ,

если запрос завершился некорректно.
 

 free() 

не возвращает значений.
 

 realloc() 

возвращает указатель на память,
которая должным образом повторно распределена для каждого типа переменных
и может отличаться от
 ptr ,

или возвращает
 NULL ,

если запрос завершился с ошибкой. Если
 size 

был равен нулю, то возвращается либо NULL, либо указатель, который может
быть передан
 free ().

Если
 realloc() 

не выполнена, то блок памяти остается нетронутым:
он не "очищается" и не перемещается.
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

ANSI-C
   
 СМ. ТАКЖЕ 

 brk (2),

 posix_memalign (3)

   
 ЗАМЕЧАНИЯ 

Стандарт Unix98 требует, чтобы функции
 malloc() ,

 calloc() ,

и 
 realloc ()

изменяли значение переменной
 errno 

на значение ENOMEM при ошибках. 
Glibc допускает, что это уже реализовано
(и что остальные версии glibc этих программ также не изменяют переменную errno);
если Вы используете частное выполнение функции malloc, которая не изменяет
 errno ,

то некоторые библиотеки процедур могут закончить работу с ошибкой
без указания причины ошибки в переменной
 errno .

 

Аварийные ситуации в
 malloc() ,

 free() 

или
 realloc() 

почти всегда связаны с искажением данных кучи, например, с переполнением
больших распределенных участков памяти или "освобождением" одного и того
же указателя дважды.
 

Последние версии Linux библиотеки libc (более поздние по сравнению с
5.4.23) и GNU библиотеки libc (2.x) включают в себя реализации malloc,
которые настраиваются с помощью переменных окружения. Когда включен
 MALLOC_CHECK_ ,

то используется специальная (менее эффективная) реализация, устойчивая к
простейшим ошибкам, например, к двойным вызовам
 free() 

с теми же параметрами или превышению единственного байта (off-by-one
bugs). Защититься от всех подобных ошибок, конечно, не получится, к тому
же в этом случае могут происходить потери данных памяти. Если 
 MALLOC_CHECK_ 

установлено равным нулю, то любое замеченное повреждение кучи незаметно игнорируется;
если это значение установлено равным 1, то на stderr выводится сообщение об ошибке;
а если устанавливаемое значение равно 2-м, то немедленно вызывается
 abort ().

Это может быть полезно, так как иначе сбой может произойти гораздо позднее
и настоящую причину ошибки будет очень трудно обнаружить.
 

Linux следует крайне самоуверенной стратегии распределения памяти.
Это означает, что когда
 malloc() 

возвращает ненулевое значение, нет никаких гарантий, что память в
действительности доступна. Если обнаружится, что системе не хватает памяти,
то один или несколько процессов будут подло убиты OOM.
 

 
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