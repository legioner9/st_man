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
 
 
 
 prctl (2)   prctl  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня ) >>  prctl  (2)   ( Русские man: Системные вызовы )   prctl  (2)   ( Linux man: Системные вызовы ) 
   
 НАЗВАНИЕ 

prctl - оперирует процессами
   
 СИНТАКСИС 

 #include < sys/prctl.h > 

 
 int prctl(int  option , unsigned long  arg2 , unsigned long  arg3 

 , unsigned long  arg4 , unsigned long  arg5 ); 

   
 ОПИСАНИЕ 

Первый параметр
 prctl 

задает тип операции (значения типов заданы в < linux/prctl.h >,
а остальные параметры зависят от соответствующего типа.
Первый аргумент может принимать следующие значения:
 
 PR_SET_PDEATHSIG 

 
(начиная с Linux 2.1.57)
Установить значение сигнала, приходящего процессу при завершении
работы родительского процесса, в  arg2  (это значение может быть
равным значению сигнала из интервала 1..maxsig или нулю).
Это значение удаляется после выполнения fork().
 PR_GET_PDEATHSIG 

 
(начиная с Linux 2.3.15)
Прочитать текущий номер сигнала о завершении работы
родительского процесса в (int *)  arg2 .
 PR_SET_DUMPABLE 

 
(Начиная с Linux 2.4)
Установить состояние флага, определяющего создание файла core
для этого процесса после доставки сингнала, чье поведение по
умолчанию указывает на создание файла core.
(Обычно этот флаг устанавливается для процесса по умолчанию,
но он очищается для программ set-UID или set-GID при их исполнении,
а также разными системными вызовами, работающими с идентификаторами процесса).
 arg2 

должно быть или 0 (процесс не делает файл дампа) или 1 (процесс делает дамп).
 PR_GET_DUMPABLE 

 
(Начиная с Linux 2.4)
Возвращает (как результат работы функции) текущее состояние флага дампа
вызывающего процесса.
 PR_SET_KEEPCAPS 

 
Установить состояние флага процесса "хранить возможности", определяющего,
будут ли действующие возможности процесса очищены, если будет произведено
изменение идентификатора процесса, то есть если все сохраненные,
действующие и действительные идентификаторв станут ненулевыми, если
при этом хотя бы один из них ранее был равен нулю.
(По умолчанию, эти наборы параметров очищаются).
 arg2 

должен быть или 0 (возможности очищаются) или 1 (возможности сохраняются).
 PR_GET_KEEPCAPS 

 
Возвращает (как результат работы функции) текущее состояние флага
"хранить возможности" вызывающего процесса.
 
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

 PR_GET_DUMPABLE 

и
 PR_GET_KEEPCAPS 

возвращают 0 или 1 при нормальном завершении работы.
Все другие значения
 option 

вовзращают 0 при нормальном завершении работы.
При ошибке возвращается -1, а переменной
 errno 

присваивается номер ошибки.
   
 НАЙДЕННЫЕ ОШИБКИ 

 
 EINVAL 

 
Неизвестное значение
 option ,

или задана опция
 PR_SET_PDEATHSIG ,

но
 arg2 

не является нулем и номером сигнала.
 
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

 prctl  - это функция, специфичная для Linux. Не рекомендуется
использовать ее в программах, которые должны быть переносимыми 
в другие системы.
В IRIX есть системный вызов prctl (он  введен в Linux (начиная
с версии 2.1.44), как irix_prctl в архитектуру MIPS), с прототипом
 
 ptrdiff_t prctl(int  option , int  arg2 , int  arg3 ); 

 
позволяющий получить максимальное количество процессов
для каждого пользователя, максимальное количество процессоров,
которое может использовать вызывающий процесс; определить,
блокирован ли заданный процесс, получить и установить максимальный
размер стека и т.д.
   
 ДОСТУПНОСТЬ 

Системный вызов prctl() впервые был реализован в Linux версии 2.1.57.
В библиотеках вызова prctl() в данный момент нет.
   
 СМ. ТАКЖЕ 

 signal (2)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 НАЙДЕННЫЕ ОШИБКИ 
 СООТВЕТСТВИЕ СТАНДАРТАМ 
 ДОСТУПНОСТЬ 
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