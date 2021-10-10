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
 
 
 
 intro (2)   intro  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня )   intro  (1)   ( FreeBSD man: Команды и прикладные программы пользовательского уровня )   intro  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   intro  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня )   intro  (2)   ( Solaris man: Системные вызовы )   intro  (2)   ( FreeBSD man: Системные вызовы ) >>  intro  (2)   ( Русские man: Системные вызовы )   intro  (2)   ( Linux man: Системные вызовы )   intro  (3)   ( Solaris man: Библиотечные вызовы )   intro  (3)   ( FreeBSD man: Библиотечные вызовы )   intro  (3)   ( Русские man: Библиотечные вызовы )   intro  (3)   ( Linux man: Библиотечные вызовы )   intro  (4)   ( Solaris man: Специальные файлы /dev/* )   intro  (4)   ( FreeBSD man: Специальные файлы /dev/* )   intro  (4)   ( Русские man: Специальные файлы /dev/* )   intro  (4)   ( Linux man: Специальные файлы /dev/* )   intro  (5)   ( Solaris man: Форматы файлов )   intro  (5)   ( FreeBSD man: Форматы файлов )   intro  (5)   ( Русские man: Форматы файлов )   intro  (5)   ( Linux man: Форматы файлов )   intro  (6)   ( Solaris man: Игры )   intro  (6)   ( Русские man: Игры )   intro  (6)   ( Linux man: Игры )   intro  (7)   ( Solaris man: Макропакеты и соглашения )   intro  (7)   ( FreeBSD man: Макропакеты и соглашения )   intro  (7)   ( Русские man: Макропакеты и соглашения )   intro  (7)   ( Linux man: Макропакеты и соглашения )   intro  (8)   ( FreeBSD man: Команды системного администрирования )   intro  (8)   ( Русские man: Команды системного администрирования )   intro  (8)   ( Linux man: Команды системного администрирования )   intro  (9)   ( FreeBSD man: Ядро )   intro  (9)   ( Linux man: Ядро ) 
   
 ИМЯ 

intro, _syscall - Системные вызовы: введение
   
 ОПИСАНИЕ 

В этой главе описываются системные вызовы Linux.  Список этих 164
системных вызовов находится в  syscalls (2).
   
 Прямой вызов 

В большинстве случаев не требуется использовать системные вызовы
напрямую, но бывают случаи, когда Стандартная Библиотека Языка C
(libc) не реализует какую-нибудь полезную функцию.
 
   
 Краткая Сводка 

 #include < linux/unistd.h > 

 
A _syscall macro
 
desired system call
 
   
 Настройка 

Очень важно знать прототип системного вызова.  Вам нужно знать,
сколько у этого вызова аргументов, каковы их типы, каков тип,
возвращаемый функцией.  Есть шесть макросов, облегчающих системные
вызовы.  Они выглядят так:
 
 
_syscall X ( type , name , type1 , arg1 , type2 , arg2 ,...)

 
 
 
где  X  равно от 0 до 5 и означает количество аргументов,
принимаемых системным вызовом
 
 type  это тип, возвращаемый системным вызовом
 
 name  название системного вызова
 
 typeN  тип N-ого аргумента
 
 argN  имя N-ого аргумента
 
 

 

 
Эти макросы создают функцию, которая называется  name , с
заданными аргументами.  После того, как вы включите макрос _syscall()
в свой файл с исходным кодом, вы можете вызывать функции системы,
пользуясь именем  name .
   
 ПРИМЕР 

 
#include < stdio.h >
#include < linux/unistd.h >       /* for _syscallX macros/related stuff */
#include < linux/kernel.h >       /* for struct sysinfo */

_syscall1(int, sysinfo, struct sysinfo *, info);

/* Note: if you copy directly from the nroff source, remember to
 REMOVE the extra backslashes in the printf statement. */

int main(void)
{
        struct sysinfo s_info;
        int error;

        error = sysinfo(&s_info);
        printf("code error = %d\n", error);
        printf("Uptime = %lds\nLoad: 1 min %lu / 5 min %lu / 15 min %lu\n"
                "RAM: total %lu / free %lu / shared %lu\n"
                "Memory in buffers = %lu\nSwap: total %lu / free %lu\n"
                "Number of processes = %d\n",
                s_info.uptime, s_info.loads[0],
                s_info.loads[1], s_info.loads[2],
                s_info.totalram, s_info.freeram,
                s_info.sharedram, s_info.bufferram,
                s_info.totalswap, s_info.freeswap,
                s_info.procs);
        return(0);
}
 

   
 Пример Выдачи 

 code error = 0
uptime = 502034s
Load: 1 min 13376 / 5 min 5504 / 15 min 1152
RAM: total 15343616 / free 827392 / shared 8237056
Memory in buffers = 5066752
Swap: total 27881472 / free 24698880
Number of processes = 40
 

   
 ЗАМЕЧАНИЯ 

Макросы _syscall() НЕ создают прототипа.  Вам может потребоваться
создать его вручную, особенно в программе на C++.
 
Системные вызовы не обязательно возвращают только положительные или
отрицательные коды ошибок.  Чтобы выяснить настоящее положение дел,
может потребоваться обратиться к исходным текстам.  Обычно код ошибки
-- это стандартный код ошибки со знаком минус, например,
- EPERM .  Макросы _syscall() возвращают результат системного
вызова
 r ,

если
 r 

неотрицательно, а в противном случае возвращают -1 и устанавливают
переменную
 errno 

в значение - r .
Коды ошибок описаны в
 errno (3).

 
Некоторые системные вызовы, такие как
 mmap ,

требуют больше пяти аргументов.  Они обрабатываются путем помещения
аргументов на стек и передачи указателя на блок аргументов.
 
При описании системного вызова аргументы ДОЛЖНЫ передаваться "по
значению" или с помощью указателя (для агрегатных типов, например,
структур).
 
Предпочтительный способ вызова системных вызовов, о которых пока ещё
не знает glibc, состоит в использовании
 syscall (2).

   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

Для обозначение вариантов Unix и разнообразных стандартов, которым
соответствуют системные вызовы, описанные в этой секции руководства,
используются различные сокращения:
 
 SVr4 
Unix-System V Release 4, описанная в "Programmer's Reference
Manual: Operating System API (Intel processors)" (Prentice-Hall
1992, ISBN 0-13-951294-2)
 SVID 
System V Interface Definition (Описание Интерфейса Системы V),
описанное в "The System V Interface Definition, Fourth Edition".
 POSIX.1  
IEEE 1003.1-1990 часть 1, также известный как ISO/IEC 9945-1:1990s,
также известный как "IEEE Portable Operating System Interface for
Computing Environments" (Интерфейс Переносимой Операционной Системы
для Вычислительных Сред IEEE), разъясненный в книге Donald Lewine
"POSIX Programmer's Guide" (O'Reilly & Associates, Inc., 1991, ISBN
0-937175-73-0.
 POSIX.1b 
IEEE Std 1003.1b-1993 (стандарт POSIX.1b), описывающий возможности
работы в реальном времени под переносимыми операционными системами,
разъясненный в книге Bill O. Gallmeister "Programming for the real
world - POSIX.4" (O'Reilly & Associates, Inc. ISBN 1-56592-074-0).
 4.3BSD/4.4BSD 
Версии 4.3 и 4.4. дистрибуции Berkeley Unix.  4.4BSD была обратно
совместима с 4.3.
 SUS, SUSv2 
Single Unix Specification.  (Разработана X/Open и The Open Group.
Смотри также  http://www.UNIX-systems.org/version2/.) 
 V7 
Версия 7, исходная версия Unix от Bell Labs.
 
   
 ФАЙЛЫ 

 /usr/include/linux/unistd.h 

   
 СМОТРИ ТАКЖЕ 

 errno (3)

 syscall (2),

   
 ПЕРЕВОД 

Copyright (C) Alexey Mahotkin < alexm@hsys.msk.ru > 1999,
Виктор Вислобоков < corochoone@perm.ru > 2003
 

 
   Index 
 
 ИМЯ 
 ОПИСАНИЕ 
 
 Прямой вызов 
 Краткая Сводка 
 Настройка 
 
 ПРИМЕР 
 Пример Выдачи 
 ЗАМЕЧАНИЯ 
 СООТВЕТСТВИЕ СТАНДАРТАМ 
 ФАЙЛЫ 
 СМОТРИ ТАКЖЕ 
 ПЕРЕВОД 
 
 
 
 
 
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