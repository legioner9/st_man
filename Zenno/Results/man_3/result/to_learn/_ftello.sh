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
 
 
 
 ftello (3)   ftello  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  ftello  (3)   ( Русские man: Библиотечные вызовы )   ftello  (3)   ( Linux man: Библиотечные вызовы )   ftello  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

fseeko, ftello - изменить положение следующей операции в потоке
   
 СИНТАКСИС 

 #include < stdio.h > 

 int fseeko(FILE * stream , off_t  offset , int  whence ); 

 off_t ftello(FILE * stream ); 
 .fi 
   
 ОПИСАНИЕ 

Функции  fseeko()  и  ftello()  идентичны функциям
 fseek()  и  ftell()  (см.
 fseek (3)),

соответственно, за исключением того, что аргумент  offset  функции
 fseeko()  и возвращаемое значение функции  ftello()  вместо
типа  long  имеют тип  off_t .
 

На многих архитектурах  off_t  и  long  являются 32-битным
типами, но при компиляции с
 
 #define _FILE_OFFSET_BITS 64
 

 

тип  off_t  будет 64-битным.
   
 ЗАМЕЧАНИЯ 

Эти функции можно найти на системах, совместимых с SysV.
Они отсутствуют в libc4, libc5 и glibc 2.0, но появились в glibc
начиная с версии 2.1.
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

Функции
 fseeko 

и
 ftello 

соответствуют SUSv2.
   
 СМ. ТАКЖЕ 

 fseek (3)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
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