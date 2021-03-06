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
 
 
 
 group (5)   group  (4)   ( Solaris man: Специальные файлы /dev/* )   group  (4)   ( Русские man: Специальные файлы /dev/* )   group  (5)   ( FreeBSD man: Форматы файлов ) >>  group  (5)   ( Русские man: Форматы файлов )   group  (5)   ( Linux man: Форматы файлов ) Ключ  group  обнаружен в базе ключевых слов. 
   
 ИМЯ 

group - файл групп пользователей
   
 ОПИСАНИЕ 

 /etc/group  это ASCII файл, который описывает группы, членами
которых являются пользователи. В каждой строке файла содержится одна
запись, следующего формата:
 
 
group_name:password:GID:user_list
 

 
Вот описания этих полей:
 
 group_name 
это имя конкретной группы.
 password 
(в зашифрованном виде) пароль группы.  Если это поле пустое, то
никакой пароль не нужен.
 GID 
цифровой идентификатор (ID) группы.
 user_list 
разделённые запятыми имена всех пользователей, которые являются членами
данной группы.
 
   
 ЗАМЕЧАНИЕ ПЕРЕВОДЧИКА 

В  user_list  не указываются те пользователи, для которых данная
группа является первичной. Таким образом в  user_list  указаны не
все пользователи, которые являются членами данной группы.
   
 ФАЙЛЫ 

/etc/group
   
 СМОТРИ ТАКЖЕ 

 login (1),

 newgrp (1),

 passwd (5)

   
 ПЕРЕВОД 

Перевёл с английского Виктор Вислобоков < corochoone@perm.ru > 2004
 

 
   Index 
 
 ИМЯ 
 ОПИСАНИЕ 
 ЗАМЕЧАНИЕ ПЕРЕВОДЧИКА 
 ФАЙЛЫ 
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