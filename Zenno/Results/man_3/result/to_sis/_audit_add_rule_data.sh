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
 
 
 
 audit_add_rule_data (3) >>  audit_add_rule_data  (3)   ( Русские man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

audit_add_rule_data - добавить новое правило аудита
   
 СИНТАКСИС 

 #include < libaudit.h > 

 
int audit_add_rule_data (int fd, struct audit_rule_data *rule, int flags, int action);

   
 ОПИСАНИЕ 


Функция audit_add_rule добавляет новое правило аудита в определённый фильтр событий ядра. Фильтр указывается флагами в передаваемых аргументах. Допустимые значения флагов (flags):

 
 * 
AUDIT_FILTER_USER - применить правило к сообщениям пространства пользователя.
 * 
AUDIT_FILTER_TASK - применить правило при создании задачи (не к системному вызову).
 * 
AUDIT_FILTER_ENTRY - применить правило при выполнении системного вызова.
 * 
AUDIT_FILTER_WATCH - применить правило при обращении к файловой системе.
 * 
AUDIT_FILTER_EXIT - применить правило по завершении выполнения системного вызова.
 * 
AUDIT_FILTER_TYPE - применить правило при выполнении функции audit_log_start.
 
 


 

Правило (rule) может принимать следующее значение:

 
 * 
AUDIT_NEVER - не порождать никакой информации если правило соответствует.
 * 
AUDIT_ALWAYS - создать запись события аудита при соответствии правила.
 
 


   
 ВОЗВРАЩАЕМОЕ ЗНАЧЕНИЕ 


При ошибке возвращает значение <= 0. Иначе, порядковый номер сообщения netlink. Также эта функция может вернуть любую ошибку, которая может произойти при вызове функции sendto.

   
 СМ. ТАКЖЕ 


 audit_delete_rule_data (3),

 audit_add_watch (3),

 auditctl (8).


   
 АВТОР 

Стив Граб (Steve Grubb)

   
 ПЕРЕВОД 

Перевод с английского Василий Коломеец < boojuman@gmail.com > 2007

 
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