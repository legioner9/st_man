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
 
 
 
 audit_update_watch_perms (3) >>  audit_update_watch_perms  (3)   ( Русские man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

audit_update_watch_perms - обновляет права команды watch
   
 СИНТАКСИС 

 #include < libaudit.h > 

 
int audit_update_watch_perms(struct audit_rule_data *rule, int perms);
 
   
 ОПИСАНИЕ 

 
audit_update_watch_perms добавляет проверку прав команды watch. Доступны следующие права, которые могут объединяться логическим оператором ИЛИ: AUDIT_PERM_EXEC, AUDIT_PERM_WRITE, AUDIT_PERM_READ, AUDIT_PERM_ATTR.
 
   
 ВОЗВРАЩАЕМОЕ ЗНАЧЕНИЕ 

 
Возвращает число < 0 при ошибке, в остальных случаях 0.
 
   
 СМ. ТАКЖЕ 

 
 audit_add_rule_data (3),

 audit_add_watch (3).

 
   
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