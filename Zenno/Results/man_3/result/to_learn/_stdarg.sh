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
 
 
 
 stdarg (3)   stdarg  (3)   ( Solaris man: Библиотечные вызовы )   stdarg  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  stdarg  (3)   ( Русские man: Библиотечные вызовы )   stdarg  (3)   ( Linux man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

stdarg - переменные списки аргументов
   
 СИНТАКСИС 

 #include < stdarg.h > 

 
 void va_start(va_list  ap ,  last ); 

 

 type  va_arg(va_list  ap ,  type ); 

 

 void va_end(va_list  ap ); 

 

 void va_copy(va_list  dest , va_list  src ); 

   
 ОПИСАНИЕ 

Возможен вызов функции с различным количеством аргументов и разных
типов. В файле
 stdarg.h 

определяется тип
 va_list 

и описываются три макроса для обработки списка аргументов
с такими значениями и таких типов, которые неизвестны вызываемой функции.
 

Вызванная функция должна указать на объект типа
 va_list ,

который используется макросами
 va_start ,

 va_arg 

и
 va_end .

   
 va_start 

Макрос
 va_start 

должен вызываться в первую очередь, поскольку он инициализирует
 ap 

для последующего его использования макросами
 va_arg 

и
 va_end .

 

Параметр
 last 

является именем последнего параметра перед переменным списком аргументов;
например, именем последнего параметра, тип которого известен вызывающей функции.
 

Так как адрес этого параметра может быть использован в макросе
 va_start ,

то он не должен быть объявлен как зарегистрированная переменная, функция или
тип массива.
   
 va_arg 

Макрос
 va_arg 

возвращает выражение, которое имеет такой же тип и значение, как и
следующий по вызову аргумент. Параметр
 ap 

является
 va_list 

 ap , 

инициализированным с помощью макроса
 va_start .

Каждый вызов
 va_arg 

изменяет
 ap 

так, что следующий вызов возвращает последующий аргумент. Параметр
 type 

является типом, определенным таким образом,
что указатель на обьект этого типа может быть получен простым добавлением * к
 type .

 

Первый вызов макроса
 va_arg 

сразу после 
 va_start 

возвращает аргумент после
 last .

Последующие вызовы будут возвращать величины оставшихся аргументов.
 

Если нет следующего аргумента или если
 type 

несовместим с типом следующего аргумента, то могут возникнуть различные
ошибки.
 

Если
 ap 

передается функции, использующей
 va_arg( ap , type ), 

то значение
 ap 

будет неопределено после возвращения функции.
   
 va_end 

Каждый вызов
 va_start 

должен сопровождаться вызовом
 va_end 

в той же функции. После вызова
 va_end( ap ) 

переменная
 ap 

не определена. Возможны множественные пересечения списка,
обособленные скобками от
 va_start 

и
 va_end .

 va_end 

может быть и функцией и макросом.
   
 va_copy 


 va_list 

является указателем на стек функции с различным количеством аргументов.
В таких случаях используется выражение
 
         va_list aq = ap;
 

 

К сожалению, существуют системы, которые превращают его
в массив указателей (длиной 1), поэтому еще необходимо
 
         va_list aq;
        *aq = *ap;
 

 

И в завершении, в системах, передающих параметры
через регистры, возможно появится необходимость в
 va_start 

для выделения памяти, сохранению там параметров и
указателе на следующие параметры, поэтому может использоваться и
 va_arg .

 va_end 

высвободит память обратно.
Для уравновешивания этой ситуации в C99 добавлен макрос
 va_copy ,

после чего вышеописанные выражения могут выглядеть так:
 
         va_list aq;
        va_copy(aq, ap);
        ...
        va_end(aq);
 

 

Каждый вызов
 va_copy 

должен быть парным с вызовом
 va_end 

для каждой функции.
В некоторых системах вместо
 va_copy 

существует
 __va_copy .

   
 ПРИМЕРЫ ИСПОЛЬЗОВАНИЯ 

Функция
 foo 

принимает строку форматирующих символов и выводит аргументы,
ассоциированные с соответствующим символом по типу.
 
 #include < stdio.h >
#include < stdarg.h >

void foo(char *fmt, ...) {
        va_list ap;
        int d;
        char c, *p, *s;
        va_start(ap, fmt);
        while (*fmt)
                switch(*fmt++) {
                case 's':                       /* строка */
                        s = va_arg(ap, char *);
                        printf("строка %s\n", s);
                        break;
                case 'd':                       /* целое */
                        d = va_arg(ap, int);
                        printf("целое %d\n", d);
                        break;
                case 'c':                       /* символ */
                        /* необходимо указание типов, т.к. va_arg
                        воспринимает только полностью определенные типы */
                        c = (char) va_arg(ap, int);
                        printf("символ %c\n", c);
                        break;
                }
        va_end(ap);
}
 

 

   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

Макросы
 va_start ,

 va_arg 

и
 va_end 

соответствуют ANSI X3.159-1989 (``C89'').
C99 определяет макрос 
 va_copy .

   
 СОВМЕСТИМОСТЬ 

Эти макросы
 не 

являются совместимыми с более ранними реализациями.
Совместимые реализации можно найти в файле заголовков
 varargs.h .

   
 СРАВНЕНИЕ 

Исторически сложившийся синтаксис выглядит следующим образом:
 
 #include < varargs.h >

void foo(va_alist) va_dcl {
        va_list ap;

        va_start(ap);
        while(...) {
                ...
                x = va_arg(ap, type);
                ...
        }
        va_end(ap);
}
 

 

В некоторых системах
 va_end 

содержит завершающий символ '}' соответствующий '{' в
 va_start ,

таким образом, оба макроса заключены в одной функции.
   
 НАЙДЕННЫЕ ОШИБКИ 

В отличие от макроса
 varargs ,

макрос
 stdarg 

не позволяет программистам создавать функции без фиксированного
количества аргументов. В основном проблемы возникают при
конвертировании исходных кодов с
 varargs 

в коды
 stdarg ,

а также возникают некоторые проблемы с переменными функциями,
передающимим все свои аргументы функции, принимающей аргумент
 va_list  

(так, как это делает, например,
 vfprintf (3)).

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 
 va_start 
 va_arg 
 va_end 
 va_copy 
 
 ПРИМЕРЫ ИСПОЛЬЗОВАНИЯ 
 СООТВЕТСТВИЕ СТАНДАРТАМ 
 СОВМЕСТИМОСТЬ 
 СРАВНЕНИЕ 
 НАЙДЕННЫЕ ОШИБКИ 
 
 
 
 
 
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