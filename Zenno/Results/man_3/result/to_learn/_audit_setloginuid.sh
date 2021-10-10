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
 
 
 
 audit_setloginuid (3) >>  audit_setloginuid  (3)   ( Русские man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

audit_setloginuid - установить значение loginuid процесса
   
 СИНТАКСИС 

 #include < libaudit.h > 

 
int audit_setloginuid(uid_t uid);
 
   
 ОПИСАНИЕ 

 
Эта функция устанавливает атрибут loginuid для процесса в соответствии со значением идентификатора пользователя (uid). Значение loginuid может быть установлено только программой, обладающей возможностями контроля аудита (CAP_AUDIT_CONTROL). Обычно это программа, запущенная с правами суперпользователя root.
 
Значение loginuid является частью выполняемой задачи и наследуется дочерними процессами. Оно используется для отслеживания прав доступа, которые имеет данная учётная запись пользователя. Все программы, являющиеся точками входа в систему, должны устанавливать правильные значения loginuid до смены идентификатора пользователя (uid) для того, чтобы события аудита должным образом соотносились с данным пользователем.
 
   
 ВОЗВРАЩАЕМОЕ ЗНАЧЕНИЕ 

 
Функция возвращает 0 в случае успешного завершения. Иначе возвращается значение отличное от нуля.
 
   
 СМ. ТАКЖЕ 

 
 audit_getloginuid (3),

 pam_loginuid (8).

 
   
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