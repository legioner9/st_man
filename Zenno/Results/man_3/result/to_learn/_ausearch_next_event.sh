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
 
 
 
 ausearch_next_event (3) >>  ausearch_next_event  (3)   ( Русские man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

ausearch_next_event - ищет следующее событие, совпадающее с критериями поиска
   
 СИНТАКСИС 

 #include < auparse.h > 

 
int ausearch_next_event(auparse_state_t *au);
 
   
 ОПИСАНИЕ 

 
ausearch_next_event сканирует источник и проверяет каждое поле события на соответствие c заданными критериями. Сравнение происходит на уровне записей.
 
   
 ВОЗВРАЩАЕМОЕ ЗНАЧЕНИЕ 

 
Возвращает:
  -1 - ошибка;
   0 - совпадение не найдено;
   1 - совпадение найдено.
 
   
 СМ. ТАКЖЕ 

 
 ausearch_add_item (3),

 ausearch_add_regex (3),

 ausearch_set_stop (3).

 
   
 АВТОР 

Стив Граб (Steve Grubb)
 
   
 ПЕРЕВОД 

Перевод с английского Alexander Glebov < 7th_zone@rambler.ru > 2007
 

 
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