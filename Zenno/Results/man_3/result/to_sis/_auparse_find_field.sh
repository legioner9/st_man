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
 
 
 
 auparse_find_field (3) >>  auparse_find_field  (3)   ( Русские man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

auparse_find_field - поиск поля по имени
   
 СИНТАКСИС 

 #include < auparse.h > 

 
const char *auparse_find_field(auparse_state_t *au, const char *name);
 
   
 ОПИСАНИЕ  

 
auparse_find_field сканирует все записи события до первого поля с указанным именем. Поиск начинается с текущего положения курсора. Название поля сохраняется для последующего поиска.
 
   
 ВОЗВРАЩАЕМОЕ ЗНАЧЕНИЕ  

 
Возвращает NULL если значение не найдено. Если происходит ошибка, устанавливается код ошибки для errno. В остальных случаях возвращает указатель на строку с именем этого поля.
 
   
 СМ. ТАКЖЕ 

 
 auparse_first_record (3),

 auparse_next_event (3),

 auparse_find_field_next (3).

 
   
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