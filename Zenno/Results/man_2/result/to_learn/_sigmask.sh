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
 
 
 
 sigmask (2)   sigmask  (2)   ( FreeBSD man: Системные вызовы ) >>  sigmask  (2)   ( Русские man: Системные вызовы )   sigmask  (2)   ( Linux man: Системные вызовы )   sigmask  (3)   ( Linux man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

sigblock, siggetmask, sigsetmask, sigmask - работают с маской сигналов
   
 СИНТАКСИС 

 #include < signal.h > 

 
 int sigblock(int  mask ); 

 
 int siggetmask(void); 

 
 int sigsetmask(int  mask ); 

 
 int sigmask(int  signum ); 

   
 ОПИСАНИЕ 

Этот интерфейс устарел с появлением
 sigprocmask (2).

Системный вызов
 sigblock 

добавляет сигналы, заданные в маске
 mask ,

к набору сигналов, передача которых блокируется.
 

Системный вызов
 sigsetmask 

заменяет набор блокируемых сигналов новым, заданным в
 mask .

Блокируются сигналы, соответствующий бит которых в аргументе
 mask 

равен 1.
 

Текущий набор блокируемых сигналов можно получить при помощи
 siggetmask .

 

Макрос
 sigmask 

существует для формирования маски определенного сигнала
 signum .

   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

 siggetmask 

возвращает текущий набор блокируемых сигналов.
 sigsetmask  

и
 sigblock 

возвращают предыдущее состояние маски сигналов.
   
 ЗАМЕЧАНИЯ 

Прототипы этих функций доступны только в том случае,
если в одном из системных файлов задано определение
 _BSD_SOURCE .

 

Невозможно заблокировать сигналы
 SIGKILL 

или
 SIGSTOP :

это ограничение, предопределенное системой, является строгим.
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

4.4BSD. Эти функции впервые появились в BSD 4.3 и оказались не очень
удобны. В новых программах лучше использовать POSIX-методику работы 
с сигналами.
   
 СМ. ТАКЖЕ 

 kill (2),

 sigprocmask (2),

 signal (7)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 ЗАМЕЧАНИЯ 
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