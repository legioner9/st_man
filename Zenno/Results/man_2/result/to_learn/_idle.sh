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
 
 
 
 idle (2) >>  idle  (2)   ( Русские man: Системные вызовы )   idle  (2)   ( Linux man: Системные вызовы ) Ключ  idle  обнаружен в базе ключевых слов. 
   
 ИМЯ 

idle - делает процесс 0 простаиваемым
   
 ОБЗОР 

 #include < unistd.h > 

 
 int idle(void); 

   
 ОПИСАНИЕ 

 idle 

- это внутрениий системный вызов, используемый во время начальной
загрузки. Он помечает страницы процесса как выгружаемые на своппинг,
снижает его приоритет и входит в главную петлю планировщика.
 idle 

никогда не возвращает управление.
 

Только процесс 0 может вызывать
 idle .

Все пользовательские процессы, даже процессы с правами суперпользователя,
будут получать
 EPERM .

   
 ВОЗВРАЩАЕМОЕ ЗНАЧЕНИЕ 

 idle 

никогда не возвращает в процесс 0 и всегда возвращает -1 для
пользовательских процессов.
   
 ОШИБКИ 

 
 EPERM 

 
Всегда для пользовательских процессов.
 
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

Данная функция специфична для Linux и не должна использоваться в
программах, которые задуманы как переносимые.
   
 ЗАМЕЧАНИЯ 

Начиная с 2.3.13 этот системный вызов нигде не существует.
   
 ПЕРЕВОД 

Перевёл с английского Виктор Вислобоков < corochoone@perm.ru > 2003
 

 
   Index 
 
 ИМЯ 
 ОБЗОР 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМОЕ ЗНАЧЕНИЕ 
 ОШИБКИ 
 СООТВЕТСТВИЕ СТАНДАРТАМ 
 ЗАМЕЧАНИЯ 
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