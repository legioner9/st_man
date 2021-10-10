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
 
 
 
 ausearch_set_stop (3) >>  ausearch_set_stop  (3)   ( Русские man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

  ausearch_set_stop - установка курсора при поиске
   
 СИНТАКСИС 

 #include < auparse.h > 

 
int ausearch_set_stop(auparse_state_t *au, austop_t where);
 
   
 ОПИСАНИЕ 

 
ausearch_set_stop определяет, где остановится внутренний курсор, когда условие поиска будет выполнено. Возможные значения:
 
 
 
 AUSEARCH_STOP_EVENT 

 
  поместить курсор в первое поле первой записи найденного события.
 AUSEARCH_STOP_RECORD 

 
  поместить курсор в первое поле записи найденного события.
 AUSEARCH_STOP_FIELD 

 
  останавливает на текущем поле при соответствии условиям поиска.
 
 

 
   
 ВОЗВРАЩАЕМОЕ ЗНАЧЕНИЕ 

 
Возвращает -1 при ошибке, в остальных случаях 0.
 
   
 СМ. ТАКЖЕ 

 
 ausearch_add_item (3),

 ausearch_add_regex (3),

 ausearch_clear (3),

 ausearch_next_event (3).

 
   
 АВТОР 

Стив Граб (Steve Grubb)
 
   
 ПЕРЕВОД 

Перевод с английского Vsevolod Khalizev < vkhalizev@gmail.com > 2007

 
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