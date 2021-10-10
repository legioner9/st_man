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
 
 
 
 auparse_first_record (3) >>  auparse_first_record  (3)   ( Русские man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

auparse_first_record - установка курсора на первую запись
   
 СИНТАКСИС 

 #include < auparse.h > 

 
int auparse_first_record(auparse_state_t *au);
 
   
 ОПИСАНИЕ  

auparse_first_record устанавливает курсор на первую запись текущего события.
 
   
 ВОЗВРАЩАЕМОЕ ЗНАЧЕНИЕ  

 
Возвращает -1 если произошла ошибка, 0 при отсутствии данных события, или 1 при успехе.
 
   
 СМ. ТАКЖЕ 

 
 auparse_next_event (3),

 auparse_next_record (3).

 
   
 АВТОР 

Стив Граб (Steve Grubb)
 
   
 ПЕРЕВОД 

Перевод с английского Nataliya Smirnova < oohhh@list.ru > 2007

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ  
 ВОЗВРАЩАЕМОЕ ЗНАЧЕНИЕ  
 СМ. ТАКЖЕ 
 АВТОР 
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