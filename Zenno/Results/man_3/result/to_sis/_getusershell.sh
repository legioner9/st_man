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
 
 
 
 getusershell (3)   getusershell  (3)   ( Solaris man: Библиотечные вызовы )   getusershell  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  getusershell  (3)   ( Русские man: Библиотечные вызовы )   getusershell  (3)   ( Linux man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

getusershell, setusershell, endusershell - получают доступные оболочки пользователя
   
 СИНТАКСИС 

 #include < unistd.h > 

 char *getusershell(void); 

 void setusershell(void); 

 void endusershell(void); 
 

   
 ОПИСАНИЕ 

Функция 
 getusershell() 

возвращает последующую строку из файла 
 /etc/shells ,

открывая его в случае необходимости. Строка должна содержать путь к возможной
оболочке пользователя. Если 
 /etc/shells  

не существует или недоступен для чтения, то 
 getusershell() 

ведет себя так, как если бы в файле были перечислены
 /bin/sh  

и 
 /bin/csh .

 

Функция 
 setusershell()  

переходит к началу 
 /etc/shells .

 

Функция 
 endusershell()  

закрывает 
 /etc/shells .

   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Функция 
 getusershell() 

возвращает NULL по достижении конца файла.
   
 ФАЙЛЫ 

 /etc/shells
 

   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

BSD 4.3
   
 СМ. ТАКЖЕ 

 shells (5)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 ФАЙЛЫ 
 СООТВЕТСТВИЕ СТАНДАРТАМ 
 СМ. ТАКЖЕ 
 
 
 
 
 
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