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
 
 
 
 getgid (2)   getgid  (2)   ( Solaris man: Системные вызовы )   getgid  (2)   ( FreeBSD man: Системные вызовы ) >>  getgid  (2)   ( Русские man: Системные вызовы )   getgid  (2)   ( Linux man: Системные вызовы )   getgid  (3)   ( Solaris man: Библиотечные вызовы )   getgid  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

getgid, getegid - получить группу процесса
   
 ОБЗОР 

 #include < unistd.h > 

 

 #include < sys/types.h > 

 
 gid_t getgid(void); 

 

 gid_t getegid(void); 

   
 ОПИСАНИЕ 

 getgid 

возвращает действительный идентификатор группы текущего процесса.
 
 getegid 

возвращает еффективный идентификатор группы текущего процесса. 
 
Действительный идентификатор соответствует идентификатору вызывающего
процесса.  Эффективный идентификатор соответствует биту setuid на
исполняемом файле.
   
 ОШИБКИ 

Эти функции всегда завершаются успешно.
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

POSIX, BSD 4.3
   
 СМОТРИ ТАКЖЕ 

 setregid (2),

 setgid (2)

   
 ПЕРЕВОД 

Перевод Copyright (C) Alexey Mahotkin < alexm@hsys.msk.ru > 2000,
Виктор Вислобоков < corochoone@perm.ru > 2003

 
   Index 
 
 НАЗВАНИЕ 
 ОБЗОР 
 ОПИСАНИЕ 
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