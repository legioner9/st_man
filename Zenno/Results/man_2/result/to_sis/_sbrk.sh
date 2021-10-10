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
 
 
 
 sbrk (2)   sbrk  (2)   ( Solaris man: Системные вызовы )   sbrk  (2)   ( FreeBSD man: Системные вызовы ) >>  sbrk  (2)   ( Русские man: Системные вызовы )   sbrk  (2)   ( Linux man: Системные вызовы ) 
   
 ИМЯ 

brk, sbrk - изменение размера сегмента данных
   
 ОБЗОР 

 #include < unistd.h > 

 
 int brk(void * end_data_segment ); 

 
 void *sbrk(intptr_t  increment ); 

   
 ОПИСАНИЕ 

 brk 

устанавливает конец сегмента данных в значение, указанное в
аргументе
 end_data_segment ,

когда это значение является приемлимым, система симулирует
нехватку памяти и процесс не достигает своего максимально
возможного размера сегмента данных (см.
 setrlimit (2)).

 
 sbrk 

увеличивает пространство данных программы на
 increment 

байт.
 sbrk 

не является системным вызовом, он просто является
обёрткой (wrapper), которую использует библиотека C.
Вызов
 sbrk 

с инкрементом 0 может быть использован, чтобы найти
текущее местоположения прерывания программы.
   
 ВОЗВРАЩАЕМОЕ ЗНАЧЕНИЕ 

В случае успеха
 brk 

возвращает ноль, а
 sbrk 

возвращает указатель на начало новой области. В случае
ошибки возвращается -1 is и значение
 errno 

устанавливается в
 ENOMEM .

   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

BSD 4.3
 
 brk  и  sbrk 

не определены в стандарте на язык C и умышленно исключёны из
стандарта POSIX.1 (см. параграфы B.1.1.1.3 и B.8.3.3).
   
 ЗАМЕЧАНИЯ 

Некоторые системы используют разные типы для параметров
 sbrk ().

Общими являются  int ,  ssize_t ,  ptrdiff_t ,  intptr_t .



XPGv6 описывает, что эта функция устарела.
   
 СМОТРИ ТАКЖЕ 

 execve (2),

 getrlimit (2),

 malloc (3)

   
 ПЕРЕВОД 

Перевёл с английского Виктор Вислобоков < corochoone@perm.ru > 2003
 

 
   Index 
 
 ИМЯ 
 ОБЗОР 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМОЕ ЗНАЧЕНИЕ 
 СООТВЕТСТВИЕ СТАНДАРТАМ 
 ЗАМЕЧАНИЯ 
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