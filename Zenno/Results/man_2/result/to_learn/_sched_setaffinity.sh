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
 
 
 
 sched_setaffinity (2) >>  sched_setaffinity  (2)   ( Русские man: Системные вызовы )   sched_setaffinity  (2)   ( Linux man: Системные вызовы ) 
   
 НАЗВАНИЕ 

sched_setaffinity, sched_getaffinity - устанавливает и получает процессорную маску соответствия для процесса
   
 СИНТАКСИС 

 #include < sched.h > 

 
 int sched_setaffinity(pid_t  pid , unsigned int  len , unsigned long * mask ); 
 
 int sched_getaffinity(pid_t  pid , unsigned int  len , unsigned long * mask ); 
 
   
 ОПИСАНИЕ 

 sched_setaffinity 

устанавливает процессорную маску соответствия для процесса с идентификатором
 pid .

Если
 pid 

равен нулю, то берется текущий процесс.
 
Маска соответствия является битовой маской, хранящейся в
 mask .

Младший значимый бит соответствует первому логическому номеру процессора
в системе, а самый старший значимый бит соответствует последнему логическому
номеру процессора в системе. 
Установка бита соответствует легальному режиму работы процессора, а
снятие бита определяет не соответствие режиму работы процессора.
Другими словами, процесс привязан и будет работать только на тех процессорах,
для которых выставлен соответствующий бит. Обычно в маске установлены все биты.
 
Аргумент 
 len 

является длиной данных, на которые указывает
 mask .

Обычно это размер слова в системе. Для совместимости с будущими версиями ядер Linux
(и так как этот размер может изменяться) поддерживаемая битовая маска должна быть
не меньше маски соответствия, хранящейся в ядре.
 
Функция
 sched_getaffinity 

записывает на указатель, полученный от
 mask 

размер
 len 

маски соответствия процесса
 pid .

Если
 pid 

равен нулю, то возвращается маска текущего процесса.
 
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

При нормальном завершении работы
 sched_setaffinity 

и
 sched_getaffinity 

возвращают 0.
При ошибках возвращается -1 и 
 errno                                        

устанавливается соответственно ошибке.
 
   
 НАЙДЕННЫЕ ОШИБКИ 

 
 EFAULT 

 
Указанный адрес памяти некорректен.
 ESRCH 

 
Процесс, чей идентификатор ID равен  pid  не может быть найден.
 EPERM 

 
Вызывающий процесс не имеет достаточных прав и привилегий.
Процесс, вызывающий
 sched_setaffinity ,

должен иметь действующий идентификатор пользователя uid, 
равный euid или uid процесса, идентифицируемого по
 pid ,

или должен обладать возможностью
 CAP_SYS_NICE .

 
 EINVAL 

 
Битовая маска соответствия
 mask 

не содержит процессоров, физически присутствующих в сиситеме, или длина
 len 

меньше, чем размер маски соответствия, используемой ядром.
 
   
 ПРИМЕЧАНИЯ ПО ИСТОРИИ 

Системные вызовы affinity были представлены в ядре Linux 2.5.8.
 
   
 СМ. ТАКЖЕ 

 sched_setscheduler (2),

 sched_getscheduler (2),

 sched_get_priority_max (2),

 sched_get_priority_min (2),

 nice (2),

 setpriority (2),

 getpriority (2),

 

 sched_setscheduler (2)

имеет описание схемы расписаний Linux.
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 НАЙДЕННЫЕ ОШИБКИ 
 ПРИМЕЧАНИЯ ПО ИСТОРИИ 
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