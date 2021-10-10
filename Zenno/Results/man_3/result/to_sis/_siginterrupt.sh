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
 
 
 
 siginterrupt (3)   siginterrupt  (3)   ( Solaris man: Библиотечные вызовы )   siginterrupt  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  siginterrupt  (3)   ( Русские man: Библиотечные вызовы )   siginterrupt  (3)   ( Linux man: Библиотечные вызовы )   siginterrupt  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

siginterrupt - позволяет сигналам прерывать системные вызовы
   
 СИНТАКСИС 

 #include < signal.h > 

 int siginterrupt(int  sig , int  flag ); 
 

   
 ОПИСАНИЕ 

Функция  siginterrupt()  изменяет поведение системного вызова 
после его прерывания сигналом  sig .  Если значение аргумента  flag  
ложно (0), то системный вызов будет запущен заново при его прерывании сигналом
 sig .  Это поведение установлено по умолчанию. Когда определяется другой сигнал
при помощи функции  signal (2), то системный вызов прерывается по умолчанию.
 

Если значение аргумента  flags  истинно (1) и никаких данных не передается, то
системный вызов, прерванный сигналом  sig , возвратит значение -1 ,
а глобальной переменной  errno  будет присвоено значение  EINTR .
 

Если значение аргумента  flags  истинно (1) и передача данных осуществляется, то
системный вызов будет прерван, а затем им будет возвращено значение, указывающее на объем
переданных данных.
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Функция  siginterrupt()  при успешном завершении возвращает 0 и -1,
если номер сигнала  sig  неправилен.
   
 НАЙДЕННЫЕ ОШИБКИ 

 
 EINVAL 

 
- указанный номер сигнала неправилен.
 
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

BSD 4.3
   
 СМ. ТАКЖЕ 

 signal (2)

 

 
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