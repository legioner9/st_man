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
 
 
 
 ttyname_r (3)   ttyname_r  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  ttyname_r  (3)   ( Русские man: Библиотечные вызовы )   ttyname_r  (3)   ( Linux man: Библиотечные вызовы )   ttyname_r  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

ttyname, ttyname_r - возвращает название терминала
   
 СИНТАКСИС 

 #include < unistd.h > 

 char *ttyname(int  fd ); 
 
 int ttyname_r(int  fd , char * buf , size_t  buflen ); 
 

   
 ОПИСАНИЕ 

Функция
 ttyname ()

возвращает указатель на полное имя устройства терминала, заканчивающееся
на NUL, открытого на описателе файла  fd , или  NULL  при ошибках
(например, если  fd  не подключен к терминалу). 
Возвращаемое значение может указывать на статические данные, которые
могут быть перезаписаны следующим вызовом.
Функция
 ttyname_r ()

сохраняет полный путь в буфере
 buf 

длиной
 buflen .

   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Функция
 ttyname ()

возвращает указатель на полный путь при нормальном завершении работы.
При ошибках возвращается
 NULL 

а переменная
 errno 

устанавливается соответственно ошибке.
Функция
 ttyname_r ()

возвращает 0 при нормальном завершении работы, иначе возвращается номер ошибки.
   
 НАЙДЕННЫЕ ОШИБКИ 

Значения, хранящиеся в
 errno 

после сбоя
 ttyname ()

или возвращаемые после ошибок в
 ttyname_r ():

 
 EBADF 

 
Плохой описатель файла.
 ENOTTY 

 
Описатель файла не ссылается на терминальное устройство.
 ERANGE 

 
 buflen 

был слишком мал для хранения полного пути.
 
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

POSIX.1

   
 СМ. ТАКЖЕ 

 fstat (2),

 isatty (3)

 

 
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