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
 
 
 
 sched_rr_get_interval (2)   sched_rr_get_interval  (2)   ( FreeBSD man: Системные вызовы ) >>  sched_rr_get_interval  (2)   ( Русские man: Системные вызовы )   sched_rr_get_interval  (2)   ( Linux man: Системные вызовы )   sched_rr_get_interval  (3)   ( Solaris man: Библиотечные вызовы )   sched_rr_get_interval  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

sched_rr_get_interval  - определяет временной интервал SCHED_RR для заданного процесса
   
 СИНТАКСИС 

 #include < sched.h > 

 
 int sched_rr_get_interval(pid_t  pid , struct timespec * tp );
 
 
 struct timespec {
    time_t  tv_sec;     /* секунды */
    long    tv_nsec;    /* наносекунды */
};

 

   
 ОПИСАНИЕ 

 sched_rr_get_interval  

записывает квант времени процесса  pid  в структуру
 timespec  с адресом  tp .
Если значение pid  равно нулю, то в эту структуру записывается квант
времени вызывающего процесса.
Алгоритм планирования заданного процесса должен быть равен
 SCHED_RR .

Значение кванта времени нельзя изменять (по крайней
мере, в Linux 1.3.81).
В POSIX-системах, в которых существует функция
 sched_rr_get_interval ,

в < unistd.h > задается определение
 _POSIX_PRIORITY_SCHEDULING .

   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

При удачном завершении вызова возвращаемое значение равно нулю. При ошибке 
возвращается -1, а переменной
 errno 

присваивается номер ошибки.
   
 НАЙДЕННЫЕ ОШИБКИ 

 
 ESRCH 

 
Процесса с номером  pid  не существует.
 ENOSYS 

 
Этот системный вызов еще не реализован.
 
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

POSIX.1b (бывший POSIX.4).
   
 НАЙДЕННЫЕ ОШИБКИ 

В Linux 1.3.81  sched_rr_get_interval  возвращает ошибку ENOSYS, потому
что алгоритм планировщика SCHED_RR не полностью реализован и
протестирован.
   
 СМ. ТАКЖЕ 

В руководстве
 sched_setscheduler (2)

есть описание системы планирования в Linux.
 

 Programming for the real world - POSIX.4 

by Bill O. Gallmeister, O'Reilly & Associates, Inc., ISBN 1-56592-074-0
 

 IEEE Std 1003.1b-1993 

(Стандарт POSIX.1b, бывший POSIX.4)
 

 ISO/IEC 9945-1:1996 

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 НАЙДЕННЫЕ ОШИБКИ 
 СООТВЕТСТВИЕ СТАНДАРТАМ 
 НАЙДЕННЫЕ ОШИБКИ 
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