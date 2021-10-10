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
 
 
 
 auparse_get_field_int (3) >>  auparse_get_field_int  (3)   ( Русские man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

auparse_get_field_int - получение значения поля в формате int
   
 СИНТАКСИС 

 #include < auparse.h > 

 
int auparse_get_field_int(auparse_state_t *au);
 
   
 ОПИСАНИЕ  

 
auparse_get_field_int возвращает значение текущего поля текущей записи текущего события в формате int.
 
   
 ВОЗВРАЩАЕМОЕ ЗНАЧЕНИЕ  

 
Возвращает -1 если происходит ошибка и установлено соответствующее errno или значение поля если errno не установлен.
 
   
 СМ. ТАКЖЕ 

 
 auparse_get_field_str (3).

 
   
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