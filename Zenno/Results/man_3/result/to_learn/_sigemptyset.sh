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
 
 
 
 sigemptyset (3)   sigemptyset  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  sigemptyset  (3)   ( Русские man: Библиотечные вызовы )   sigemptyset  (3)   ( Linux man: Библиотечные вызовы )   sigemptyset  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

sigemptyset, sigfillset, sigaddset, sigdelset, sigismember - операции над
наборами сигналов POSIX.
   
 СИНТАКСИС 

 #include < signal.h > 

 
 int sigemptyset(sigset_t * set ); 

 
 int sigfillset(sigset_t * set ); 

 
 int sigaddset(sigset_t * set , int  signum ); 

 
 int sigdelset(sigset_t * set , int  signum ); 

 
 int sigismember(const sigset_t * set , int  signum ); 

   
 ОПИСАНИЕ 

Функции 
 sigsetops (3)

позволяют производить операции над наборами сигналов POSIX.
 

 sigemptyset 

инициализирует набор сигналов, указанный в
 set ,

и "очищает" его от всех сигналов.
 

 sigfillset 

полностью инициализирует набор
 set ,

в котором содержатся все сигналы.
 

 sigaddset  

и
 sigdelset 

добавляют  сигналы
 signum 

к
 set  

и удаляют эти сигналы из набора соответственно.
 

 sigismember 

проверяет, является ли
 signum 

членом 
 set .

   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

 sigemptyset ,  sigfullset ,  sigaddset 

и
 sigdelset  

при удачном завершении возвращают 0 и -1 при ошибках.
 

 sigismember 

возвращает 1, если
 signum 

является членом
 set ;

возвращает 0, если
 signum 

не является членом, а -1 возвращается при ошибках.
   
 НАЙДЕННЫЕ ОШИБКИ 

 
 EINVAL :

 
 sig 

является неправильным сигналом.
 
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

POSIX
   
 СМ. ТАКЖЕ 

 sigaction (2),

 sigpending (2),

 sigprocmask (2),

 sigsuspend (2)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 НАЙДЕННЫЕ ОШИБКИ 
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