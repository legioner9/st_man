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
 
 
 
 catgets (3)   catgets  (3)   ( Solaris man: Библиотечные вызовы )   catgets  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  catgets  (3)   ( Русские man: Библиотечные вызовы )   catgets  (3)   ( Linux man: Библиотечные вызовы )   catgets  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

catgets - получает сообщения из каталога сообщений
   
 СИНТАКСИС 

 

 #include < nl_types.h >
 

 

 char *catgets(nl_catd  catalog , int  set_number , 

 int  message_number , const char * message ); 

   
 ОПИСАНИЕ 

Функция
 catgets() 

читает сообщение номер
 message_number 

в наборе номеров
 set_number ,

из каталога сообщений, обозначенного как
 catalog ,

где
 catalog 

- это описатель каталога, возвращаемый функцией
 catopen (3).

Четвертый аргумент,
 message , 

является указателем на строку с сообщением по умолчанию, которое вернет
 catgets() 

в случае, если указанный каталог сообщений недоступен.
Текст сообщений хранится во внутреннем буфере и должен быть скопирован
приложением, если оно будет изменено или сохранено.
Возвращаемая строка всегда заканчивается нулевым байтом.
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

 

В случае успеха
 catgets() 

возвращает указатель на буфер, содержащий заканчивающуюся нулем строку
с сообщением. Если сообщение не найдено, то
 catgets() 

возвращает значение
 message .

   
 ЗАМЕЧАНИЯ 

Эта функция доступна только в  libc.so.4.4.4c и более поздних ее версий.
X/Open Portability Guide определяет более точные собщения об ошибках:
 message 

возвращается, если каталог
 catalog 

недоступен; а если возвращена пустая строка, то каталог доступен,
но не содержит данных о 
 message .

Эти две возможные ситуации, похоже, не учтены в XPG4.2, и
в случае ощибки всегда возвращается
 message .

   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

XPG4.2
   
 СМ. ТАКЖЕ 

 catopen (3),

 setlocale (3)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
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