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
 
 
 
 wait3 (2)   wait3  (2)   ( FreeBSD man: Системные вызовы ) >>  wait3  (2)   ( Русские man: Системные вызовы )   wait3  (2)   ( Linux man: Системные вызовы )   wait3  (3)   ( Solaris man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

wait3, wait4 - ожидает завершения работы процесса (стиль BSD)
   
 СИНТАКСИС 

 #include < sys/types.h > 
 #include < sys/time.h > 
 #include < sys/resource.h > 
 #include < sys/wait.h > 

 pid_t wait3(int * status , int  options , 
       struct rusage * rusage ); 

 pid_t wait4(pid_t  pid , int * status , int  options , 
       struct rusage * rusage ); 
 

   
 ОПИСАНИЕ 

Функция
 wait3 

приостанавливает исполнение текущего процесса до того, как дочерний процесс завершит
свою работу, или он не получит сигнал, прекращающий его работу, или не будет произведен
вызов обработчика прерывания. Если дочерний процесс уже прекратил
свою работу на момент вызова этой функции (такой процесс называется
"зомби" ("zombie")), то функция немедленно возвращается. Все системные
ресурсы, использованные дочерним процессом, будут освобождены.
Функция
 wait4 

приостанавливает исполнение текущего процесса до того, как свою
работу завершит дочерний процесс с номером
 pid ,

или этот процесс не получит сигнал, прекращающий его работу, или не будет
произведен вызов обработчика прерывания. Если дочерний процесс
 pid 

уже прекратил свою работу на момент вызова этой функции (такой процесс
называется "зомби"), то функция немедленно возвращается. Все системные
ресурсы, использованные дочерним процессом, будут освобождены.
Значение параметра
 pid 

может быть следующим:
 
 < -1 
- ожидание любого дочернего процесса, идентификатор группы
процессов которого равен абсолютному значению
 pid .

 -1 
- ожидание любого дочернего процесса; это эквивалентно вызову
 wait3 .

 0 
- ожидание любого дочернего процесса, идентификатор группы
процессов которого равен идентификатору группы процессов текущего процесса.
 > 0 
- ожидание дочернего процесса, идентификатор которого равен
 pid .

 
 

Параметр
 options 

состоит из комбинации следующих флагов:
 
 WNOHANG 

 
- немедленно вернуть управление вызывающему процессу, если
нет дочерних процессов, попадающих под действие функции.
 WUNTRACED 

 
- вернуться, если существуют остановленные дочерние процессы,
а их статус еще не получен.
 
 

Если
 status 

не равен
 NULL ,

то
 wait3 

или
 wait4 

сохранят в памяти информацию о процессе в виде структуры
 status .

 

Эта информация может быть обработана следующими макросами
(эти макросы используют в качестве аргумента буфер stat ( int )
--- не указатель на буфер!):
 
 WIFEXITED( status ) 

 
не равен 0, если дочерний процесс корректно завершил работу.
 WEXITSTATUS( status ) 

 
возвращает 8 последних значащих битов кода возврата завершенного
дочернего процесса, который можно задать в качестве параметра
к функции
 exit() 

или в качестве параметра оператора
 return 

в функции main программы. Этот макрос работает только
в том случае, если
 WIFEXITED 

возвратил не 0.
 WIFSIGNALED( status ) 

 
возвращает TRUE, если дочерний процесс прекратил свою работу из-за
того, что получил сигнал, который не был обработан.
 WTERMSIG( status ) 

 
возвращает номер сигнала, вызвавшего прекращение работы дочернего
процесса. Этот макрос работает только
в том случае, если
 WIFSIGNALED 

возвратил не 0.
 WIFSTOPPED( status ) 

 
возвращает TRUE, если дочерний процесс, использовавший return для
возврата из функции, на настоящий момент остановлен; это возможно 
только в том случае, если функция была вызвана с флагом
 WUNTRACED .

 WSTOPSIG( status ) 

 
возвращает номер сигнала, вызвавшего остановку дочернего процесса. Этот
макрос работает только в том случае, если
 WIFSTOPPED 

возвратил не 0.
 
 

Если
 rusage 

не равен
 NULL ,

то в него будет записана структура
 struct   rusage ,

заданная в
 < sys/resource.h > ,

заполненная соответствующей информацией.
Для подробностей смотрите
 getrusage (2).

   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Идентификатор дочернего процесса, прекратившего
свою работу, возвращает -1 при ошибке (в частности, если
не существует завершивших свою работу процессов
заданного вида)
или 0, если был задан флаг
 WNOHANG ,

а такого дочернего процесса пока нет.
В последних двух случаях в переменную
 errno 

заносится код ошибки.
   
 НАЙДЕННЫЕ ОШИБКИ 

 
 ECHILD 

 
Нет дочерних процессов заданного вида, завершивших свою работу.
 EINTR 

 
Флаг
 WNOHANG 

не был установлен, и вызывающим процессом был
получен неблокируемый сигнал или сигнал
 SIGCHLD .

 
   
 ЗАМЕЧАНИЯ 

Использование
 < sys/time.h > 

сейчас уже не требуется, но улучшает портируемость.
(В самом деле,
 < sys/resource.h > 

определяет структуру
 rusage 

с полями типа
 struct timeval 

определенными в
 < sys/time.h > .)

 

Прототип этих функций доступен, если только определен
 _BSD_SOURCE 

(непосредственно или неявно, если компилирование производится
с флагом -ansi или если не определено _POSIX_SOURCE).
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

SVr4, POSIX.1
   
 СМ. ТАКЖЕ 

 signal (2),

 getrusage (2),

 wait (2),

 signal (7)

 

 
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