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
 
 
 
 fflush (3)   fflush  (3)   ( Solaris man: Библиотечные вызовы )   fflush  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  fflush  (3)   ( Русские man: Библиотечные вызовы )   fflush  (3)   ( Linux man: Библиотечные вызовы )   fflush  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

fflush - "сбрасывает" буферы потока
   
 СИНТАКСИС 

 #include < stdio.h > 

 
 int fflush(FILE * stream ); 

   
 ОПИСАНИЕ 

Функция
 fflush 

принудительно записывает все буферизированные данные в
устройство вывода данных или корректирует поток
 stream 

посредством определенных для него функций записи.
При этом поток остается открытым.
 

Если аргумент
 stream 

указывает на
 NULL ,

то
 fflush 

"сбрасывает" данные
 всех 

потоков, открытых выводящим данным.
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

При обычном завершении работы возвращается нулевое значение. В противном случае
возвращается
 EOF ,

а в глобальную переменную
 errno 

вписывается код соответствующей ошибки.
   
 НАЙДЕННЫЕ ОШИБКИ 

 
 EBADF 

 
Поток
 stream 

просто не открыт или не открыт для записи.
 
 

Функция
 fflush 

при ошибках устанавливает значение переменной
 errno 

равным значению, определенному для процедуры
 write (2).

   
 ЗАМЕЧАНИЯ 

Обратите внимание, что 
 fflush ()

"сбрасывает" буферы, определенные в библиотеке C.
Чтобы гарантировать, что данные действительно
физически сохранены на диске, буферы ядра также должны
быть сохранены, например, функциями
 sync (2)

или
 fsync (2).

   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

Функция
 fflush 

соответствует стандарту ANSI X3.159-1989 (``ANSI C'').
   
 СМ. ТАКЖЕ 

 write (2),

 fclose (3),

 fopen (3),

 fsync (2),

 sync (2),

 write (2),

 setbuf (3)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 НАЙДЕННЫЕ ОШИБКИ 
 ЗАМЕЧАНИЯ 
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