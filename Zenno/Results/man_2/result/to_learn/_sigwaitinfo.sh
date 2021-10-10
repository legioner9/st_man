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
 
 
 
 sigwaitinfo (2)   sigwaitinfo  (2)   ( FreeBSD man: Системные вызовы ) >>  sigwaitinfo  (2)   ( Русские man: Системные вызовы )   sigwaitinfo  (2)   ( Linux man: Системные вызовы )   sigwaitinfo  (3)   ( Solaris man: Библиотечные вызовы )   sigwaitinfo  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

sigwaitinfo, sigtimedwait - синхронно ожидают запрошенные сигналы
   
 СИНТАКСИС 

 #include < signal.h > 

 
 int sigwaitinfo(const sigset_t * set , siginfo_t * info ); 

 
 int sigtimedwait(const sigset_t * set , siginfo_t * info ,  

 const struct timespec  timeout ); 

   
 ОПИСАНИЕ 

 sigwaitinfo ()

приостанавливает исполнение вызывающего процесса до тех пор, пока
не получен один из сигналов из набора
 set .

(Если один из сигналов в
 set 

уже ожидает обработки вызывающим процессом, то
 sigwaitinfo ()

завершит работу немедленно с возвратом информации об этом сигнале.)
 
 sigwaitinfo ()

удаляет доставленный сигнал из списка сигналов для обработки вызывающего
процесса и возвращает номер сигнала как результат работы фукнции.
Если аргумент
 info 

не равен
 NULL ,

то он возвращает структуру типа
 siginfo_t 

(см.
 sigaction (2)),

содержащую информацию о сигнале.
 

Сигналы, возвращенные через
 sigwaitinfo ()

доставляются обычным порядком; см.
 signal (7)

для более подробных деталей.
 

 sigtimedwait ()

работает аналогично
 sigwaitinfo (),

за исключением того, что он имеет дополнительный аргумент
 timeout ,

включающий помещение верхней границы времени, на которое
процесс был приостановлен.
Этот аргумент имеет следующий тип:
 

 struct timespec {
    long    tv_sec;         /* секунды */
    long    tv_nsec;        /* наносекунды */
}
 


 
Если оба поля структуры определены в 0, то исполняется poll:
 sigtimedwait ()

немедленно завершает работу, либо с информацией о сигнале,
предназначенном вызывающему, либо с ошибкой если ни один из сигналов в наборе
 set 

не был для него предназначен
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

При нормальном завершении работы и
 sigwaitinfo ()

и
 sigtimedwait ()

возвращают номер сигнала (т.е. значение больше нуля).
При ошибках оба вызова возвращают -1 и переменная
 errno 

устанавливается соответственно ошибке.
   
 НАЙДЕННЫЕ ОШИБКИ 

 
 EAGAIN 

 
Ни одного сигнала в указанном наборе
 set 

не было доставлено за время
 timeout ,

указанном для
 sigtimedwait ().

 EINVAL 

 
 timeout 

некорректно.
 EINTR 

 
Ожидание было прервано обработчиком сигнала.
(Этот обработчик был для другого сигнала, не из набора
 set .)

 
   
 ЗАМЕЧАНИЯ 

При обычном использовании вызывающий блокирует сигналы в наборе
 set 

через соответствующие вызовы
 sigprocmask ()

(так, чтобы поведение по умолчанию для этих сигналов не сработало,
если они доставлены межде успешными вызовами
 sigwaitinfo ()

или
 sigtimedwait()) 

и не устанавливает обработчики для этих сигналов.
 

POSIX оставляет неопределенным значение
 NULL 

аргумента
 timeout 

для
 sigtimedwait (),

допуская возможность того, что он имеет такое же значение, как и вызов к
 sigwaitinfo (),

в самом деле это именно так в Linux.
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

POSIX 1003.1-2001
   
 СМ. ТАКЖЕ 

 kill (2),

 sigaction (2),

 signal (2),

 sigpending (2),

 sigprocmask (2),

 sigqueue (2),

 signal (7),

 sigsetops (3)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 НАЙДЕННЫЕ ОШИБКИ 
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