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
 
 
 
 dup (2)   dup  (2)   ( Solaris man: Системные вызовы )   dup  (2)   ( FreeBSD man: Системные вызовы ) >>  dup  (2)   ( Русские man: Системные вызовы )   dup  (2)   ( Linux man: Системные вызовы )   dup  (3)   ( POSIX man: Библиотечные вызовы ) Ключ  dup  обнаружен в базе ключевых слов. 
   
 ИМЯ 

dup, dup2 - создать дубликат файлового дескриптора
   
 ОБЗОР 

 #include < unistd.h > 

 int dup(int  oldfd ); 
 int dup2(int  oldfd , int  newfd ); 
 

   
 ОПИСАНИЕ 

 dup  и  dup2 

создают копию файлового дескриптора
 oldfd .

 
Старый и новый дескрипторы можно использовать друг вместо друга.  Они
имеют общие блокировки, указатель позиции в файле и флаги; например,
если позиция в файле была изменена с помощью
 lseek ,

на одном из дескрипторов, то эта позиция также меняется и на втором.
 
Два дескриптора, однако, каждый имеют свой собственный флаг
закрыть-при-exec. 
 
 dup 

использует самый маленький свободный номер дескриптора.
 
 dup2 

делает  newfd  копией  oldfd , закрывая  newfd ,

если требуется.
   
 ВОЗВРАЩАЕМОЕ ЗНАЧЕНИЕ 

 dup  и  dup2 

возвращают новый дескриптор или -1, если произошла ошибка (в этом
случае
 errno 

устанавливается должным образом).
   
 ОШИБКИ 

 
 EBADF 

 
 oldfd 

не является открытым файловым дескриптором, или же
 newfd 

находится вне допустимого диапазона файловых дескрипторов.
 EMFILE 

 
Процесс уже открыл максимальное количество файлов и пытается открыть
еще один.
 EINTR 

 
Вызов
 dup2 

был прерван каким-либо сигналом.
 EBUSY 

 
(Только в Linux) Может случиться в
 dup2 

во время при условии состязательных вызовов open() и dup().
 
   
 ВНИМАНИЕ 

Ошибка, которую возвращает
 dup2 ,

отличается от той, что возвращает
 fcntl( ...,  F_DUPFD , ... ) ,

когда
 newfd 

находится вне допустимых пределов.  На некоторых системах
 dup2 

также иногда возвращает 
 EINVAL ,

как
 F_DUPFD .

   
 ОШИБКИ 

Если
 newfd 

был открыт, любые ошибки, которые могли бы случиться во время
 close () , 

теряются. Осторожный программист не будет использовать
 dup2 

не закрыв сперва
 newfd . 

   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

SVr4, SVID, POSIX, X/OPEN, BSD 4.3. SVr4 документирует дополнительные
коды ошибки EINTR и ENOLINK.  POSIX.1 добавляет EINTR.
Ошибка EBUSY является специфичной для Linux.
   
 СМОТРИ ТАКЖЕ 

 fcntl (2),  open (2),  close (2).

   
 ПЕРЕВОД 

Copyright (C) Alexey Mahotkin < alexm@hsys.msk.ru > 1999,
Виктор Вислобоков < corochoone@perm.ru > 2003
 

 
   Index 
 
 ИМЯ 
 ОБЗОР 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМОЕ ЗНАЧЕНИЕ 
 ОШИБКИ 
 ВНИМАНИЕ 
 ОШИБКИ 
 СООТВЕТСТВИЕ СТАНДАРТАМ 
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