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
 
 
 
 sigpause (2)   sigpause  (2)   ( FreeBSD man: Системные вызовы ) >>  sigpause  (2)   ( Русские man: Системные вызовы )   sigpause  (2)   ( Linux man: Системные вызовы )   sigpause  (3)   ( Linux man: Библиотечные вызовы )   sigpause  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

sigpause - автоматически разблокирует сигналы и ждет прерывания своей работы
   
 СИНТАКСИС 

 #include < signal.h > 

 
 int sigpause(int  sigmask ); 

   
 ОПИСАНИЕ 

Этот интерфейс устарел с появлением
 sigsuspend (2).

 sigpause 

устанавливает маску
 sigmask 

в наборе заблокированных сигналов и ждет прихода одного из них;
по возвращении из функции маска заблокированных сигналов восстанавливается.
Значение
 

 sigmask 

обычно бывает равно нулю, что означет необходимость
разблокирования всех сигналов.
 sigpause 

всегда прекращает свою работу в случае ее прерывания, возвращая значение, равное -1,
и устанавливая значение переменной
 errno 

равным
 EINTR .

   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

4.4BSD. Вызов этой функция впервые был описан в BSD 4.3 и оказался не очень
действенным. В новых программах лучше использовать POSIX-методику работы с
сигналами.
   
 СМ. ТАКЖЕ 

 sigsuspend (2),

 kill (2),

 sigaction (2),

 sigprocmask (2),

 sigblock (2),

 sigvec (2)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
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