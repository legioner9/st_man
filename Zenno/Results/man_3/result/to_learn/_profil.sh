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
 
 
 
 profil (3)   profil  (2)   ( Solaris man: Системные вызовы )   profil  (2)   ( FreeBSD man: Системные вызовы ) >>  profil  (3)   ( Русские man: Библиотечные вызовы )   profil  (3)   ( Linux man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

profil -  выполняет профилирование времени
   
 СИНТАКСИС 

 #include < unistd.h > 

 
 int profil(u_short * buf , size_t  bufsiz , size_t  offset , u_int  scale ); 

   
 ОПИСАНИЕ 

Эта функция позволяет определить, какая часть программы занимает
наибольшую часть программного времени. Аргумент
 buf 

указывает на
 bufsiz 

байтов ядра. Каждые виртуальные 10 миллисекунд проверяется
пользовательский счетчик (PC): вычитается
 offset ,

а результат умножается на
 scale 

и делится на 65536.
Если результирующая величина меньше, чем
 bufsiz ,

то запись в
 buf 

увеличивается соответственно.
Если величина
 buf 

равна NULL, то профилирование отключено.
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Всегда возвращается 0.
   
 НАЙДЕННЫЕ ОШИБКИ 

 profil 

(функция не может быть использована в программах, использующих таймеры
 ITIMER_PROF ). 

Использование профилирования на уровне ядра дает более точные результаты.
Libc 4.4 содержит функции, обеспечивающие Вас профилированием системных вызовов.
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

Похоже на вызов в SVr4 (но не POSIX.1).
   
 СМ. ТАКЖЕ 

 gprof (1),

 setitimer (2),

 signal (2),

 sigaction (2)

 

 
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