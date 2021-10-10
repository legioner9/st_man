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
 
 
 
 setpgrp (2)   setpgrp  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня )   setpgrp  (2)   ( Solaris man: Системные вызовы )   setpgrp  (2)   ( FreeBSD man: Системные вызовы ) >>  setpgrp  (2)   ( Русские man: Системные вызовы )   setpgrp  (2)   ( Linux man: Системные вызовы )   setpgrp  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

setpgid, getpgid, setpgrp, getpgrp - устанавливает/получает группу процессов
   
 СИНТАКСИС 

 #include < unistd.h > 

 
 int setpgid(pid_t  pid , pid_t  pgid ); 

 

 pid_t getpgid(pid_t  pid ); 

 

 int setpgrp(void); 

 

 pid_t getpgrp(void); 

   
 ОПИСАНИЕ 

 setpgid 

присваивает идентификатор группы процессов 
 pgid 

тому процессу, который был определен
 pid .

Если значение
 pid 

равно нулю, то процессу присваивается идентификатор текущего процесса. Если значение
 pgid 

равно нулю, то используется идентификатор процесса, указанный  
 pid .

Если  setpgid  используется для перевода процесса из одной группы в другую,
то обе группы должны быть частью одной сессии.  В этом случае
 pgid  указывает на существующую группу процессов, с которой должен
ассоциироваться процесс, а идентификатор сессии этой группы должен
соответствовать идентификатору сессии присоединяющегося процесса.
 getpgid 

возвращает идентификатор группы процессов, к которой принадлежит процесс, указанный 
 pid .

Если значение
 pid 

равно нулю, то используется идентификатор текущего процесса.
Вызов
 setpgrp()                             

эквивалентен
 setpgid(0,0) .

 
Аналогично, значение
 getpgrp() 

эквивалентно
 getpgid(0) .

Каждая группа процессов является компонентом сеанса, и, соответственно, каждый процесс
является членом того сеанса, компонентом которого является его группа процессов.
Группы процессов используются для доставки сигнала и как терминалы для
разрешения запросов на ввод данных: процесс, который принадлежит той же группе,
что и терминал, имеет преимущество над процессами других групп.
Эти вызовы используются такими программами, как 
 csh (1)

для создания групп процессов в целях осуществления контроля над процессами. Вызовы
 TIOCGPGRP 

и
 TIOCSPGRP 

описаны в
 termios (4)

и используются для получения/установления групп процессов управляющего терминала.
Если у сеанса есть управляющий терминал, то CLOCAL не устанавливается и соединение 
разрывается, затем программе, инициализировавшей сеанс, посылается сигнал SIGHUP.
Если эта программа закрывается, то сигнал SIGHUP будет послан каждому процессу в группе
управляющего терминала.
Если инициализирующая программа закрыта, а один из ее процессов остановлен, то
каждому процессу в группе посылается сигнал SIGHUP, а за ним SIGCONT.
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

При удачном выполнении
 setpgid  и  setpgrp 

возвращаемое значение равно нулю.  При ошибке возвращается -1, а переменной
 errno 

присваивается номер ошибки.
 getpgid 

возвращает идентификатор текущей группы процессов.
При ошибке возвращается -1, а переменной
 errno 

присваивается номер ошибки.
 getpgrp 

всегда возвращает идентификатор группы процессов.
   
 НАЙДЕННЫЕ ОШИБКИ 

 
 EINVAL 

 
 pgid 

меньше нуля.
 EPERM 

 
нарушение различных разрешений.
 ESRCH 

 
Для
 getpgid :

 pid 

не соответствует никакому процессу.
Для
 setpgid :

 pid 

не является текущим процессом и не является подпроцессом текущего процесса.
 
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

Функции
 setpgid 

и
 getpgrp 

соответствуют POSIX.1.
Функция
 setpgrp 

есть в BSD 4.2.
Функция
 getpgid 

соответствует SVr4.
   
 ЗАМЕЧАНИЯ 

Описанная в POSIX функция 
 setpgid 

ранее был функцией
 setpgrp ,

описанной в BSD.
В SysV есть функция с таким же названием, но она идентична
 setsid (2).

   
 СМ. ТАКЖЕ 

 getuid (2),

 setsid (2),

 tcgetpgrp (3),

 tcsetpgrp (3),

 termios (4)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 НАЙДЕННЫЕ ОШИБКИ 
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