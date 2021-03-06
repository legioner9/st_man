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
 
 
 
 socketpair (2)   socketpair  (2)   ( FreeBSD man: Системные вызовы ) >>  socketpair  (2)   ( Русские man: Системные вызовы )   socketpair  (2)   ( Linux man: Системные вызовы )   socketpair  (3)   ( Solaris man: Библиотечные вызовы )   socketpair  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

socketpair - создает пару объединенных сокетов
   
 СИНТАКСИС 

 #include < sys/types.h > 

 

 #include < sys/socket.h > 

 
 int socketpair(int  d , int  type , int  protocol , int  sv [2]); 

   
 ОПИСАНИЕ 

Функция
 socketpair 

создает пару неименованых связанных сокетов в заданном домене
 d 

типа
 type ,

используя (при необходимости) заданный протокол
 protocol .

Описатели заданных сокетов возвращаются в
 sv [0]

и
 sv [1].

Никаких различий между этими двумя сокетами нет.
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

При удачном завершении возвращается 0. При ошибке возвращается
-1, а переменной
 errno 

присваивается номер ошибки.
   
 НАЙДЕННЫЕ ОШИБКИ 

 
 EMFILE 

 
Слишком много файловых описателей открыто процессом.
 EAFNOSUPPORT 

 
Заданное семейство адресов не поддерживается в этой машине.
 EPROTONOSUPPORT 

 
Заданный протокол не поддерживается в этой машине.
 EOPNOTSUPP 

 
Заданный протокол не поддерживает создание пар сокетов.
 EFAULT 

 
Адрес
 sv 

не ссылается на адресное пространство процесса.
 
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

4.4BSD (функция
 socketpair 

впервае появилась в 4.2BSD). В общем случае эта
функция переносима с не-BSD систем и в них (включая варианты System V).
   
 ЗАМЕЧАНИЯ 

В Linux единственным поддерживаемым доменом для этого вызова является
 AF_UNIX 

(или его синоним
 AF_LOCAL ).

(Большинство реализаций имеют такие же ограничения.)
   
 СМ. ТАКЖЕ 

 read (2),

 write (2),

 pipe (2),

 socket (2),

 unix (7)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 НАЙДЕННЫЕ ОШИБКИ 
 СООТВЕТСТВИЕ СТАНДАРТАМ 
 ЗАМЕЧАНИЯ 
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