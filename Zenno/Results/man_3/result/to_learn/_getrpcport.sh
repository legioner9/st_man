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
 
 
 
 getrpcport (3)   getrpcport  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  getrpcport  (3)   ( Русские man: Библиотечные вызовы )   getrpcport  (3)   ( Linux man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

getrpcport - получает номер порта RPC
   
 СИНТАКСИС 

 
 int getrpcport(host, prognum, versnum, proto)
        char *host;
        int prognum, versnum, proto;
 

   
 ОПИСАНИЕ 

Функция
 getrpcport() 

возвращает номер порта для версии
 versnum 

программы 
 prognum 

RPC, запущенной на машине 
 host 

и использующей протокол 
 proto .

Возвращает 0, если связаться с portmapper не удалось или если программа 
 prognum 

не зарегистрирована. Если программа
 prognum 

зарегистрирована, но имеет версию, отличающуюся от
 versnum ,

то номер порта все равно будет возвращен (для некоторых версий программ);
это показывает, что программа зарегистрирована.
Hесоответствие версий может быть обнаружено позже, при первом вызове службы.
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 
 
 
 
 
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