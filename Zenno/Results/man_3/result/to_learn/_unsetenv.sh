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
 
 
 
 unsetenv (3)   unsetenv  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня )   unsetenv  (1)   ( FreeBSD man: Команды и прикладные программы пользовательского уровня )   unsetenv  (3)   ( Solaris man: Библиотечные вызовы )   unsetenv  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  unsetenv  (3)   ( Русские man: Библиотечные вызовы )   unsetenv  (3)   ( Linux man: Библиотечные вызовы )   unsetenv  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

setenv - изменение или добавление переменной окружения
   
 СИНТАКСИС 

 #include < stdlib.h > 

 int setenv(const char * имя , const char * значение , int  overwrite ); 

 void unsetenv(const char * name ); 
 

   
 ОПИСАНИЕ 

Функция  setenv()  добавляет переменную  имя  к окружению со
значением  значение , если  имени  уже не существует. Если
 имя  уже существует в окружении, то ее значение изменяется на
 значение , если флаг  overwrite  не равен нулю, а если
 overwrite  равен нулю, то значение  имя  не изменяется.
 

Функция  unsetenv()  удаляет переменную  name  из окружения.
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Функция  setenv()  возвращает ноль при успешном завершении вызова и 
-1, если в памяти среды было недостаточно места.
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

BSD 4.3
   
 СМ. ТАКЖЕ 

 getenv (3),

 putenv (3),

 environ (5)

 

 
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