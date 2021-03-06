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
 
 
 
 munlockall (2)   munlockall  (2)   ( FreeBSD man: Системные вызовы ) >>  munlockall  (2)   ( Русские man: Системные вызовы )   munlockall  (2)   ( Linux man: Системные вызовы )   munlockall  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

munlockall - разрешает страничный обмен в памяти вызывающего процесса
   
 СИНТАКСИС 

 #include < sys/mman.h > 

 int munlockall(void);
 

   
 ОПИСАНИЕ 

 munlockall 

разрешает обмен всех страниц памяти, находящихся
в адресном пространстве вызывающего процесса.
Блокировка памяти не попадает в стек, т.е., страницы, блокированные несколько
раз при помощи функций
 mlock 

или
 mlockall ,

будут разблокированы одним вызовом
 munlock 

(с соответствующими параметрами) или
 munlockall .

Страницы, помещенные в несколько областей памяти или принадлежащие
нескольким процессам, будут заблокированы в памяти до тех пор, пока
они заблокированы хотя бы в одной из областей памяти или одним процессом.
В POSIX-системах, в которых доступны
 mlock 

и
 munlock, 

в файле < unistd.h > задана константа
 _POSIX_MEMLOCK_RANGE .

   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

При удачном завершении вызова возвращаемое значение равно нулю. При ошибке оно равно
-1, а переменной
 errno 

присваивается номер ошибки.
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

POSIX.1b, SVr4
   
 СМ. ТАКЖЕ 

 mlockall (2),

 mlock (2),

 munlock (2)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
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