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
 
 
 
 sched_setparam (2)   sched_setparam  (2)   ( FreeBSD man: Системные вызовы ) >>  sched_setparam  (2)   ( Русские man: Системные вызовы )   sched_setparam  (2)   ( Linux man: Системные вызовы )   sched_setparam  (3)   ( Solaris man: Библиотечные вызовы )   sched_setparam  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

sched_setparam, sched_getparam - получает и устанавливает параметры планировщика
   
 СИНТАКСИС 

 #include < sched.h > 

 
 int sched_setparam(pid_t  pid , const struct sched_param * p );
 
int sched_getparam(pid_t  pid , struct sched_param * p );
 
 
 struct sched_param {
    ...
    int  sched_priority ;
    ...
};

 

   
 ОПИСАНИЕ 

 sched_setparam 

устанавливает параметры планирования процесса с номером  pid 
согласно алгоритму его планирования. Если  pid  равен нулю, то
устанавливаются параметры вызывающего процесса. Тип и значение аргумента
 p  зависит от алгоритма планировщика. В данный момент в
Linux поддерживаются следующие виды планирования:
 SCHED_FIFO ,

 SCHED_RR ,

и 
 SCHED_OTHER. 

 sched_getparam 

получает текущие параметры планирования процесса  pid .
Если  pid  равен нулю, то возвращаются параметры вызывающего
процесса.
 sched_setparam 

проверяет соответствие значения аргумента  p  алгоритму планирования
заданного процесса. Параметр  p->sched_priority  должен находиться в
диапазоне, начинающемся со значения, возвращаемого  sched_get_priority_min , 
и заканичивающемся значением, возвращаемым  sched_get_priority_max .
В POSIX-системах, в которых существуют функции
 sched_setparam 

и
 sched_getparam ,

в < unistd.h >, задается определение
 _POSIX_PRIORITY_SCHEDULING .

   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

При удачном завершении вызова возвращаемое значение равно нулю. При ошибке возвращается
-1, а переменной
 errno 

присваивается номер ошибки.
   
 НАЙДЕННЫЕ ОШИБКИ 

 
 ESRCH 

 
Процесса с номером  pid  не существует.
 EPERM 

 
Процесс не имеет достаточного количества прав на вызов функции.
Эффективный идентификатор пользователя процесса, вызывающего
 sched_setparam ,

должен быть равен эффективному или обычному идентификатору
пользователя процесса с номером
 pid 

либо быть суперпользовательским.
 EINVAL 

 
Параметр  p  не соответствует алгоритму планировщика
данного процесса.
 
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

POSIX.1b (бывший POSIX.4)
   
 СМ. ТАКЖЕ 

 sched_setscheduler (2),

 sched_getscheduler (2),

 sched_get_priority_max (2),

 sched_get_priority_min (2),

 sched_setaffinity (2),

 sched_getaffinity (2),

 nice (2),

 setpriority (2),

 getpriority (2),

 

В руководстве
 sched_setscheduler (2)

есть описание системы планировщика в Linux.
 

 Programming for the real world - POSIX.4 

by Bill O. Gallmeister, O'Reilly & Associates, Inc., ISBN 1-56592-074-0
 

 IEEE Std 1003.1b-1993 

(Стандарт POSIX.1b)
 

 ISO/IEC 9945-1:1996 

 

 
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