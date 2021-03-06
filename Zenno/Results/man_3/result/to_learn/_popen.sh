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
 
 
 
 popen (3)   popen  (3)   ( Solaris man: Библиотечные вызовы )   popen  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  popen  (3)   ( Русские man: Библиотечные вызовы )   popen  (3)   ( Linux man: Библиотечные вызовы )   popen  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

popen, pclose - открывает и закрывает процесс
   
 СИНТАКСИС 

 #include < stdio.h > 

 
 FILE *popen(const char * command , const char * type ); 

 
 int pclose(FILE * stream ); 

   
 ОПИСАНИЕ 

Функция
 popen() 

открывает процесс, создавая канал, производя fork
и вызывая командную оболочку.
Так как канал задается однонаправленным, аргумент
 type 

может указать только на режим чтения или записи, но не на оба одновременно.
 

Аргумент
 command 

- это указатель на С-строку, содержащую командную строку для оболочки.
Эта команда передается
 /bin/sh  

с помощью флага
 -c . 

Интерпретация, если она необходима, выполняется самой оболочкой. Аргумент
 type 

- это указатель на C-строку, содержащую символ `r' для чтения
или `w' для записи.
 

Возвращаемое значение 
 popen() 

- это обычный поток ввода-вывода (за исключением того,
что он должен быть закрыт только функцией
 pclose() , 

а не
 fclose() ).

Запись в канал передается на стандартный поток ввода команды,
стандартный поток вывода команды передается в канал, кроме случаев, когда
потоки вывода-вывода переопределены самой командой.
 

Заметьте, что выходной поток, возвращаемый
 popen ,

по умолчанию полностью буферизирован.
 

Функция
 pclose 

ожидает завершения ассоциированного процесса и возвращает код выхода так же,
как и функция
 wait4 .

   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Функция
 popen 

возвращает
 NULL ,

если вызовы
 fork (2)

или
 pipe (2)

завершились ошибкой или если невозможно выделить необходимый для этого объем памяти.
 

Функция
 pclose 

возвращает -1, если
 wait4 

возвращает ошибку или если была обнаружена какая-либо другая ошибка.
   
 НАЙДЕННЫЕ ОШИБКИ 

Функция
 popen 

не устанавливает
 errno ,

если произошла ошибка выделения памяти. Если вызовы
 fork()  или  pipe() 

завершились неудачно, в 
 errno 

вписывается соответствующий код ошибки. Если аргумент
 type 

неверен, то в переменную
 errno 

заносится значение
 EINVAL .

 

Если
 pclose() 

не может получить статус дочернего процесса, то
 errno 

устанавливается равным
 ECHILD .

   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

POSIX.2
   
 НАЙДЕННЫЕ ОШИБКИ 

Так как открытый для чтения стандартный ввод данных в команду
делает свое смещение поиска доступным процессу, вызывающему
 popen() 

(если исходный процесс выполнял буферное чтение), то позиция ввода
для команды может быть не той, что ожидается.
Таким же образом, открытый для записи стандартный вывод данных из команды,
возможно, будет спутан с выводом данных из исходного процесса.
Последнего можно избежать, если вызывать
 fflush (3)

перед исполнением
 popen. 

 

Ошибка при попытке запуска оболочки неотличима от ошибки оболочки
при попытке запуска программы или от ошибки при немедленном выходе
из команды. Единственным способом их различения будет
установка статуса окончания работы команды 127.
   
 ПРИМЕЧАНИЯ ПО ИСТОРИИ 

Функции
 popen() 

и
 pclose() 

появились в версии 7 AT&T UNIX.
   
 СМ. ТАКЖЕ 

 fork (2),

 sh (1),

 pipe (2),

 wait4 (2),

 fflush (3),

 fclose (3),

 fopen (3),

 stdio (3),

 system (3)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 НАЙДЕННЫЕ ОШИБКИ 
 СООТВЕТСТВИЕ СТАНДАРТАМ 
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