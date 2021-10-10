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
 
 
 
 acct (5)   acct  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня )   acct  (2)   ( Solaris man: Системные вызовы )   acct  (2)   ( FreeBSD man: Системные вызовы )   acct  (2)   ( Русские man: Системные вызовы )   acct  (2)   ( Linux man: Системные вызовы )   acct  (5)   ( FreeBSD man: Форматы файлов ) >>  acct  (5)   ( Русские man: Форматы файлов )   acct  (5)   ( Linux man: Форматы файлов ) 
   
 ИМЯ 

acct - выполнение файла учёта
   
 ОБЗОР 

 #include < sys/acct.h > 

   
 ОПИСАНИЕ 

Если ядро было собрано с включеной опцией учёта процессов, то
системный вызов
 
acct("/somewhere/accountingfile");
 

запустит учёт процессов. Каждый раз при завершении процесса в
файл учёта будет добавляться соответствующая этому процессу запись.
Структура учёта
 struct acct 

также описывается в файле
 /usr/include/linux/acct.h .

   
 СМОТРИ ТАКЖЕ 

 sa (1),

 acct (2)

   
 ПЕРЕВОД 

Перевёл с английского Виктор Вислобоков < corochoone@perm.ru > 2004
 

 
   Index 
 
 ИМЯ 
 ОБЗОР 
 ОПИСАНИЕ 
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