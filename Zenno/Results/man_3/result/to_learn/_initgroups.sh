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
 
 
 
 initgroups (3)   initgroups  (3)   ( Solaris man: Библиотечные вызовы )   initgroups  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  initgroups  (3)   ( Русские man: Библиотечные вызовы )   initgroups  (3)   ( Linux man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

initgroups - инициализирует вспомогательный групповой список доступа
   
 СИНТАКСИС 

 #include < grp.h > 
 #include < sys/types.h > 

 int initgroups(const char * user , gid_t  group ); 
 

   
 ОПИСАНИЕ 

Функция  initgroups()  инициализирует групповой список доступа
путем считывания базы данных группы  /etc/group  и использования
всех групп, компонентом которых является  user .
Также в список добавляется дополнительная группа  group  .
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Функция  initgroups()  возвращает 0 в случае нормального завершения работы
или -1 в случае ошибки.
   
 НАЙДЕННЫЕ ОШИБКИ 

 
 EPERM 

 
(вызываемый процесс не имеет достаточного количества прав, или привилегий);
 ENOMEM 

 
(недостаточно памяти для распределения структуры с информацией о группе).
 
   
 ФАЙЛЫ 

 /etc/group               файл базы данных о группах
 

   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

SVID 3, BSD 4.3
   
 ЗАМЕЧАНИЯ 

Прототи
 initgroups 

доступен только если определен
 _BSD_SOURCE 

(явно или неявно, компилированием с опцией -ansi или неопределением
_POSIX_SOURCE).
   
 СМ. ТАКЖЕ 

 getgroups (2),

 setgroups (2) 

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 НАЙДЕННЫЕ ОШИБКИ 
 ФАЙЛЫ 
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