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
 
 
 
 nanosleep (2)   nanosleep  (2)   ( FreeBSD man: Системные вызовы ) >>  nanosleep  (2)   ( Русские man: Системные вызовы )   nanosleep  (2)   ( Linux man: Системные вызовы )   nanosleep  (3)   ( Solaris man: Библиотечные вызовы )   nanosleep  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

nanosleep - останавливает работу процесса на заданное время
   
 СИНТАКСИС 

 #include < time.h > 

 
 int nanosleep(const struct timespec * req , struct timespec * rem );

   
 ОПИСАНИЕ 

 nanosleep 

приостанавливает работу процесса как минимум на время, заданное параметром
 *req .

Функция может вернуть управление процессу ранее, если процесс
получил определенный сигнал. В этом случае функция возвращает значение -1
(при этом значение  errno  
становится равным
 EINTR )

и записывает оставшееся время в структуру, заданную
 rem ,

если
 rem 

не равен
 NULL .

Значение структуры
 *rem 

можно использовать для того, чтобы завершить заданную паузу путем
повторного вызова
 nanosleep .

В функции используется структура
 timespec ,

позволяющая задавать интервалы времени с точностью до наносекунды.
Эта структура описана в
 < time.h > 

и имеет следующую форму:
 
 
 
struct timespec
{
        time_t  tv_sec;                 /* секунды */
        long    tv_nsec;                /* наносекунды */
};

 

 

 

Значение поля наносекунд должно находиться в диапазоне от 0 до 999 999 999.
По сравнению с
 sleep (3)

и
 usleep (3)

 nanosleep 

не влияет на сигналы, стандартизирована в POSIX, позволяет задавать
более точные интервалы времени и позволяет более легким способом возобновить паузу
после прерывания ее сигналом.
При удачном завершении вызова возвращаемое значение равно нулю. При ошибке оно равно
-1, а переменной
 errno 

присваивается номер ошибки.
   
 НАЙДЕННЫЕ ОШИБКИ 

 
 EINTR 

 
Пауза была прервана неблокированым сигналом, отправленным процессу.
Оставшееся время записывается в структуру * rem  для того,
чтобы позволить ему еще раз вызвать
 nanosleep 

для возобновления паузы.
 EINVAL 

 
Значение
 tv_nsec 

не находится в интервале от 0 до 999 999 999, или
 tv_sec 

- отрицательное число.
 
   
 НАЙДЕННЫЕ ОШИБКИ 

Текущая реализация
 nanosleep 

базируется на стандартном механизме таймера в ядре, имеющем разрешение
в 1/ HZ  c (т.е, 10 мс в Linux/i386 и 1 мс в Linux/Alpha).
Таким образом,
 nanosleep 

всегда задерживает исполнение процесса как минимум на заданное время,
однако задержка может длиться на 10 мс дольше заданной. По этой же причине
значение, возвращаемое в случае, если процесс получит сигнал, округляется
в большую сторону, до 1/ HZ  с.
Некоторым приложениям требуется задание более точных пауз
(например, для контроля за оборудованием, требующим точных временных
интервалов работы), поэтому
 nanosleep 

может выдерживать более точные паузы. Если процесс протекает
в реальном времени (режимы
 SCHED_FIFO 

или
 SCHED_RR ),

то паузы продолжительностью до 2 мс выдерживаются, как пустые циклы, с точностью
до микросекунд.
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

POSIX.1b (ранее POSIX.4).
   
 СМ. ТАКЖЕ 

 sleep (3),

 usleep (3),

 sched_setscheduler (2),

 timer_create (2)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 НАЙДЕННЫЕ ОШИБКИ 
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