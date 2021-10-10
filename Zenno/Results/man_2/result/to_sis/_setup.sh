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
 
 
 
 setup (2) >>  setup  (2)   ( Русские man: Системные вызовы )   setup  (2)   ( Linux man: Системные вызовы ) Ключ  setup  обнаружен в базе ключевых слов. 
   
 НАЗВАНИЕ 

setup - настраивает устройства, файловые системы, устанавливает корневую
файловую систему
   
 СИНТАКСИС 

 #include < unistd.h > 

 
 _syscall0(int, setup); 

 
 int setup(void); 

   
 ОПИСАНИЕ 

 setup 

вызывается один раз из
 linux/init/main.c .

Она вызывает функции инициализации устройств и файловых систем, встроенных в
ядро, и затем устанавливает корневую файловую систему.
 

Ни один из пользовательских процессов не может вызвать
 setup .

Любой пользовательский процесс даже с правами суперпользователя
будет получать сообщение об ошибке с кодом
 EPERM .

   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

 setup 

всегда возвращает -1 пользовательскому процессу.
   
 НАЙДЕННЫЕ ОШИБКИ 

 
 EPERM 

 
Возникает всегда во время пользовательского процесса.
 
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

Эта функция применяется только в Linux specific и поэтому не должна использоваться
в программах, предназначенных для переноса на другую платформу.
Начиная с Linux 2.1.121, эта функция болше не существует.
Последовательность вызова вариативна, она может иметь единственный параметр 
 void * BIOS  

в одном случае, а в другом -
единственный параметр
 int magic .

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 НАЙДЕННЫЕ ОШИБКИ 
 СООТВЕТСТВИЕ СТАНДАРТАМ 
 
 
 
 
 
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