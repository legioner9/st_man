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
 
 
 
 gshadow (5) >>  gshadow  (5)   ( Русские man: Форматы файлов )   gshadow  (5)   ( Linux man: Форматы файлов ) 


   
 НАЗВАНИЕ 

gshadow - файл с защищаемой информацией о группах
   
 ОПИСАНИЕ 

 

Файл
 /etc/gshadow 
содержит защищаемую информацию о группах. Он состоит из строк с полями, отделёнными друг от друга двоеточием. Поля:
 
 
*имя группы
 

 
 
*шифрованный пароль
 

 
 
*список администраторов группы, перечисленных через запятую
 

 
 
*список членов группы, перечисленных через запятую
 

 

Поля с именем группы и пароль должны быть заполнены. Шифрованный пароль состоит из разрешённых 64 символов с a по z, с A по Z, с 0 по 9, \. и /. Подробней о пароле смотрите на странице руководства
 crypt (3). Если поле пароля содержит строку, которая не удовлетворяет требованиям
 crypt (3), например содержит ! или *, то пользователь не сможет использовать этот unix пароль для регистрации с учётом настроек
 pam (7).
 

Данная информация заменяет любой пароль файла
 /etc/group .
 

Этот файл должен быть недоступен обычному пользователю, если нужно обеспечить безопасность паролей.
   
 ФАЙЛЫ 

 

 /etc/group 
 
содержит информацию о группах
 

 

 /etc/gshadow 
 
содержит защищаемую информацию о группах
 

   
 СМОТРИТЕ ТАКЖЕ 

 

 
 group (5),
 gpasswd (5),
 newgrp (1).
 

 
   Index 
 
 НАЗВАНИЕ 
 ОПИСАНИЕ 
 ФАЙЛЫ 
 СМОТРИТЕ ТАКЖЕ 
 
 
 
 
 
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