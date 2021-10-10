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
 
 
 
 sched_get_priority_min (2)   sched_get_priority_min  (2)   ( FreeBSD man: Системные вызовы ) >>  sched_get_priority_min  (2)   ( Русские man: Системные вызовы )   sched_get_priority_min  (2)   ( Linux man: Системные вызовы )   sched_get_priority_min  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

sched_get_priority_max, sched_get_priority_min  - определяет диапазон статических приоритетов
   
 СИНТАКСИС 

 #include < sched.h > 

 
 int sched_get_priority_max(int  policy );
 
int sched_get_priority_min(int  policy );

   
 ОПИСАНИЕ 

 sched_get_priority_max  

возвращает максимальное значение приоритета, которое
можно использовать при задании алгоритма планирования
 policy .
 sched_get_priority_min  

возвращает минимальное значение приоритета, которое
можно использовать при задании алгоритма планировщика
 policy .  policy  может принимать значение
 SCHED_FIFO ,

 SCHED_RR ,

или
 SCHED_OTHER .

Процессам с большим (в числовом выражении) приоритетом выделяется процессорное
время в первую очередь, а затем - процессам с меньшими (в числовом выражении) 
приоритетами. Таким образом, значение, возвращаемое  sched_get_priority_max , 
будет большим по сравнению со значением, возвращаемым  sched_get_priority_min .
Linux позволяет устанавливать статические приоритеты от 1 до 99 для
процессов с алгоритмом  SCHED_FIFO  и  SCHED_RR  и приоритет 0
для  SCHED_OTHER . Интервалы, в которые входят значения приоритетов различных
алгоритмов планирования, не могут изменяться.
Эти интервалы могут быть различными в других POSIX-системах, поэтому для
переносимых программ лучше использовать виртуальный диапазон приоритетов 
и отражать его в реальный при помощи значений, полученных после вызова
 sched_get_priority_max  и  sched_get_priority_min .
POSIX.1b требует, чтобы максимальное и минимальное значения приоритетов
алгоритмов  SCHED_FIFO  и  SCHED_RR  различались, как минимум, на
32. В POSIX-системах, в которых есть функции
 sched_get_priority_max 

и
 sched_get_priority_min ,

в < unistd.h > задается системное определение
 _POSIX_PRIORITY_SCHEDULING .

   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

При удачном завершении вызова
 sched_get_priority_max 

и
 sched_get_priority_min 

возвращают максимальное/минимальное значение статического приоритета
процесса при заданном алгоритме планирования.
При ошибке возвращается -1, а переменной
 errno 

присваивается номер ошибки.
   
 НАЙДЕННЫЕ ОШИБКИ 

 
 EINVAL 

 
Параметр  policy  не соответствует ни одному из
определенных в системе алгоритмов планирования.
 
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

POSIX.1b (бывший POSIX.4).
   
 СМ. ТАКЖЕ 

 sched_setaffinity (2),

 sched_getaffinity (2),

 sched_setscheduler (2),

 sched_getscheduler (2),

 sched_setparam (2),

 sched_getparam (2)

 

В руководстве
 sched_setscheduler (2)

есть описание системы планировщика в Linux.
 

 Programming for the real world - POSIX.4 

Bill O. Gallmeister, O'Reilly & Associates, Inc., ISBN 1-56592-074-0
 

 IEEE Std 1003.1b-1993 

(Стандарт POSIX.1b).
 

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