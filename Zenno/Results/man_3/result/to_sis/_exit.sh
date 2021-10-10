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
 
 
 
 exit (3)   exit  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня )   exit  (1)   ( FreeBSD man: Команды и прикладные программы пользовательского уровня )   exit  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня )   exit  (1)   ( POSIX man: Команды и прикладные программы пользовательского уровня )   exit  (2)   ( Solaris man: Системные вызовы )   exit  (2)   ( Русские man: Системные вызовы )   exit  (2)   ( Linux man: Системные вызовы )   exit  (3)   ( Solaris man: Библиотечные вызовы )   exit  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  exit  (3)   ( Русские man: Библиотечные вызовы )   exit  (3)   ( Linux man: Библиотечные вызовы )   exit  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

exit - обычное завершение работы программы
   
 СИНТАКСИС 

 #include < stdlib.h > 

 void exit(int  status ); 
 

   
 ОПИСАНИЕ 

Функция  exit()  приводит к обычному завершению программы, и величина
 status & 0377  возвращается процессу-родителю
(см.
 wait (2)).

Все функции, зарегистрированные с помощью  atexit()  и  on_exit() ,
вызываются в порядке, обратном порядку регистрации. 
Все данные всех открытых потоков сохраняются и потоки закрываются.
Файлы, созданные функцией  tmpfile()  удаляются.
 

Стандарт C описывает два определения  EXIT_SUCCESS  и  EXIT_FAILURE ,
которые могут быть переданы  exit()  для обозначения соответственно 
успешного и неуспешного завершения.
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Функция  exit()  не возвращает никаких значений.
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

SVID 3, POSIX, BSD 4.3, ISO 9899
   
 ЗАМЕЧАНИЯ 

При обработке выхода возможно зарегистрировать дополнительные
функции с помощью  atexit  и  on_exit . 
Последняя зарегистрированная функция удаляется из очереди и
выполняется.
Не определено, что произойдет, если во время обработки выхода
будет вызвана функция  exit()  или  longjmp() .
 

Использование EXIT_SUCCESS и EXIT_FAILURE несколько более
переносимо (на не-Unix окружения), чем использование 0 и 
ненулевого значения, например 1 или -1. В часности, VMS
использует другое соглашение.
 

В BSD была произведена попытка стандартизировать коды выхода,
см. файл
 < sysexits.h > .

 

После вызова  exit()  код выхода должен быть передан
родительскому процессе. Существует три случая. Если родительский
процесс установил SA_NOCLDWAIT или установил обработчик SIGCHLD
в SIG_IGN, то код выход игнорируется. Если родительский процесс
ожидает дочерний, то он получает уведомление о коде выхода.
В обоих случаях завершаемый процесс удаляется немедленно.
Если родительский процесс не указал, что он не интересуется
кодом выхода дочернего процесса, и при этом он не ожидает его
завершения, то завершаемый процесс превращается в "процесс-зомби"
(то есть просто контейнер для единственного байта, содержащего
код выхода) для того, чтобы родительский процесс мог узнать
код выхода, если позднее вызовет одну из функций  wait .
 

Если реализация поддерживает сигнал SIGCHLD, то этот сигнал
поылается родительскому процессу. Не определено, посылается
ли сигнал SIGCHLD родительскому процессу, установившему 
SA_NOCLDWAIT.
 

Если процесс является лидером сеанса и его управляющий терминал
является управляющим терминалом сеанса, то каждому процессу в
группе процессов этого управляющего терминала посылается сигнал
SIGHUP, и терминал отсоединяется от этого сеанса, что позволяет
захватить его новому управляющему процессу.
 

Если завершение процесса приводит группу процессов к потере
родителя, и если любой член такой группы приостанавливается,
то каждому процессу группы посылается сигнал SIGHUP, за которым
следует сигнал SIGCONT.
   
 СМ. ТАКЖЕ 

 _exit (2),

 atexit (3),

 on_exit (3),

 tmpfile (3)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 СООТВЕТСТВИЕ СТАНДАРТАМ 
 ЗАМЕЧАНИЯ 
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