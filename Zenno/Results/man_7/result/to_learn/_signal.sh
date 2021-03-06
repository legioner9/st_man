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
 
 
 
 signal (7)   signal  (2)   ( Русские man: Системные вызовы )   signal  (2)   ( Linux man: Системные вызовы )   signal  (3)   ( Solaris man: Библиотечные вызовы )   signal  (3)   ( FreeBSD man: Библиотечные вызовы )   signal  (3)   ( POSIX man: Библиотечные вызовы ) >>  signal  (7)   ( Русские man: Макропакеты и соглашения )   signal  (7)   ( Linux man: Макропакеты и соглашения )   signal  (9)   ( FreeBSD man: Ядро ) Ключ  signal  обнаружен в базе ключевых слов. 
   
 НАЗВАНИЕ 

signal - список всех возможных системных сигналов
   
 ОПИСАНИЕ 

Linux поддерживает как точные сигналы POSIX (здесь и далее
"стандартные сигналы"), так и сигналы POSIX для режима реального времени.
   
 Стандартные сигналы 

Linux поддерживает все стандартные сигналы, перечисленные ниже.
Некоторые номера сигналов зависят от архитектуры, это показано
в столбце "Номер" (в таком случае там указывается три значения,
для aplha/sparc, i386/ppc/sh и для mips соответственно, прочерк "-"
обозначает, что в данной архитектуре такого сигнала нет).
 

Сокращения в столбце "Действие" обозначают действия
по умолчанию для сигнала:
 
 Term 
Действие по умолчанию - снятие процесса (terminate).
 Ign 
Действие по умолчанию - игнорирование процесса (ignore).
 Core 
Действие по умолчанию - снятие процесса и вывод дампа ядра в файл (core).
 Stop 
Действие по умолчанию - остановка процесса (stop).
 
 

Сначала рассмотрим сигналы, описанные в стандарте POSIX.1
 
 

 
 Сигнал Номер Действие Комментарии 
 
 SIGINT  2 Term Прерывание с клавиатуры 
 SIGQUIT  3 Core Прекратить работу с клавиатурой 
 SIGILL  4 Core Некорректная инструкция от процессора 
 SIGABRT  6 Core Сигнал о прекращении, посланный  abort (3) 
 SIGFPE  8 Core Неправильная операция с "плавающей" запятой 
 SIGKILL  9 Term Сигнал Kill 
 SIGSEGV 11 Core Некорректное обращение к памяти 
 SIGPIPE 13 Term Запись в канале, не имеющем считывающих процессов 
 SIGALRM 14 Term Сигнал таймера от  alarm (2) 
 SIGTERM 15 Term Сигнал снятия 
 SIGUSR1 30,10,16 Term Определяемый пользователем сигнал #1 
 SIGUSR2 31,12,17 Term Определяемый пользователем сигнал #2 
 SIGCHLD 20,17,18 Ign Дочерний процесс остановлен или прерван 
 SIGCONT 19,18,25         Продолжить в случае остановки 
 SIGSTOP 17,19,23 Stop Процесс остановлен 
 SIGTSTP 18,20,24 Stop Остановка с помощью клавиатуры 
 SIGTTIN 21,21,26 Stop Запрос на ввод с терминала для фонового процесса 
 SIGTTOU 22,22,27 Stop Запрос на вывод с терминала для фонового процесса 
 

 
Сигналы
 SIGKILL 

и
 SIGSTOP 

не могут быть пойманы, блокированы или проигнорированы.
 
Ниже приведены сигналы, не входящие в POSIX.1, но описанные в SUSv2
и SUSv3 / POSIX 1003.1-2001.
 
 

 
 Сигнал Номер Действие Комментарии 
 
 SIGPOLL Term Событие, которое можно отложить (Sys V). Синоним SIGIO 
 SIGPROF 27,27,29 Term Закончилось время профилирующего таймера 
 SIGSYS 12,-,12 Core Не допустимый для процедуры аргумент (SVID) 
 SIGTRAP 5 Core Ловушка отладки 
 SIGURG 16,23,21 Ign Приоритетные данные в сокете (4.2 BSD) 
 SIGVTALRM 26,26,28 Term Виртуальный таймер (4.2 BSD) 
 SIGXCPU 24,24,30 Core превышено время работы процессора (4.2 BSD) 
 SIGXFSZ 25,25,31 Core превышен размер файла (4.2 BSD) 
 

 
В случае появления SIGSYS, SIGXCPU, SIGXFSZ (а для некоторых реализаций и
SIGBUS) Linux до версии 2.2 включительно выполняет действие
A (снятие) без записи в файл core. Linux 2.4 соответствует требованиям
POSIX 1003.1-2001 для этих сигналов и завершает процесс действием С,
с записью в файл core.
 
Некоторые другие сигналы.
 
 

 
 Сигнал Номер Действие Комментарии 
 
 SIGEMT 7,-,7 Term 
 SIGSTKFLT -,16,- Term Ошибка в стеке сопроцессора (не используется) 
 SIGIO 23,29,22 Term Теперь возможен ввод/вывод (4.2 BSD) 
 SIGCLD -,-,18 Ign Синоним SIGCHLD 
 SIGPWR 29,30,19 Term Отказ системы питания (System V) 
 SIGINFO 29,-,- Синоним SIGPWR 
 SIGLOST -,-,- Term Не действует блокировка файла 
 SIGWINCH 28,28,20 Ign Сигнал изменения размера окна (4.3 BSD, Sun) 
 SIGUNUSED -,31,- Term Неиспользуемый сигнал (копия SIGSYS) 
 

 
Сигнал под номером 29 - это
 SIGINFO 

/
 SIGPWR 

для alpha, а
 SIGLOST 

- для sparc).
 
 SIGEMT 

не определен в POSIX 1003.1-2001, но тем не менее появляется почти во всех
других Unices, где действием по умолчанию будет завершение процесса с
записью файла core.
 
 SIGPWR 

(не определен в POSIX 1003.1-2001) по умолчанию обычно игнорируется
в тех Unices, где он появляется.
 
 SIGIO 

(не определен в POSIX 1003.1-2001) по умолчанию обычно игнорируется
в некоторых Unices.
 
   
 Сигналы режима реального времени 

Linux поддерживает сигналы режима реального времени, как и описано в
расширениях реального времени POSIX.4 (а теперь и включено в POSIX 1003.1-2001).
Linux поддерживает 32 таких сигнала, начиная с номера 32
( SIGRTMIN )

до номера 63
( SIGRTMAX ).

(Программы должны всегда ссылаться на сигналы режима реального времени,
используя записи
 SIGRTMIN +n,

так как диапазон номеров таких сигналов варьируется в системах Unices.)
 

В отличие от стандартных сигналов, сигналы режима реального времени
не имеют предопределенных заранее значений: весь набор сигналов режима
реального времени приложения могут использовать так, как им будет нужно.
(Заметим, однако, что реализация LinuxThreads использует первые три
сигнала режима реального времени).
 

Действием по умолчанию для необрабатываемых сигналов режима реального
времени является снятие процесса (terminate).
 

Сигналы режима реального времении различаются так:
 
 1. 
Сигналам реального времени могут быть переданы одновременно несколько запросов.
Наоборот, если несколько запросов будут переданы стандартному сигналу
во время его блокировки, то только один запрос будет исполнен.
 2. 
Если сигнал отправляется, используя
 sigqueue (2),

то сигналом может быть отправлено значение (целочисленное либо указатель).
Если принимающий процесс устанавливает обработчик для сигнала, используя флаг
 SA_SIGACTION 

для 
 sigaction (2),

то можно получить данные через поле
 si_value 

структуры
 siginfo_t 

переданной обработчику в виде второго аргумента.
Далее, поля
 si_pid 

и
 si_uid 

этой структуры могут использоваться для получения идентификатора процесса
и действительного идентификатора пользователя, отправившего сигнал.
 3. 
Сигналы режима реального времени доставляются точно по очереди поступления.
Несколько сигналов одного типа доставляются в порядке, определяемых их
отправлением. Если несколько разных сигналов режима реального времени
отправлены процессу, то порядок их доставки начинается с сигнала с наименьшим
номером (то есть сигналы с наименьшим номером имеют наивысший приоритет).
 
 

Если процессу переданы и стандартный сигнал, и сигнал режима реального времени,
то POSIX не определяет однозначно, какой из них будет обработан первым.
Linux, как и многие другие реализации, в таких случаях отдает приоритет
стандартным сигналам.
 

В соответствии с POSIX, реализация должна позволять ставить в очередь процессу
как минимум _POSIX_SIGQUEUE_MAX (32) сигнала.
Но несмотря на этот лимит для каждого отдельного процесса, в Linux также есть
и общесистемный лимит на количество запрошенных сигналов режима реального
времени для всех процессов.
Этот лимит может быть получен и изменен (если есть привилегии) через фейл
 /proc/sys/kernel/rtsig-max. 

Связанный с ним файл,
 /proc/sys/kernel/rtsig-nr ,

может быть использован для нахождения текущего количества запрошенных
сигналов режима реального времени.
 
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

POSIX.1
   
 НАЙДЕННЫЕ ОШИБКИ 

 SIGIO 

и
 SIGLOST 

равнозначны. Последнее описано в ядре, но некоторые программы
в процессе сборки определяют сигнал под номером 29 как
 SIGLOST .

   
 СМ. ТАКЖЕ 

 kill (1),

 kill (2),

 setitimer (2),

 sigaction (2),

 signal (2),

 sigprocmask (2),

 sigqueue (2)

 

 
   Index 
 
 НАЗВАНИЕ 
 ОПИСАНИЕ 
 
 Стандартные сигналы 
 Сигналы режима реального времени 
 
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