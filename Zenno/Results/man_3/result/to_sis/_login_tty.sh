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
 
 
 
 login_tty (3)   login_tty  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  login_tty  (3)   ( Русские man: Библиотечные вызовы )   login_tty  (3)   ( Linux man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

openpty, login_tty, forkpty - функции для работы с терминалом (tty)
   
 СИНТАКСИС 

 #include < pty.h > 

 /* для openpty и forkpty */
 

 #include < utmp.h > 

/* для login_tty */
 
 int openpty(int * amaster , int * aslave , char * name , struct termios * termp , struct winsize *  winp ); 

 
 int login_tty(int  fd ); 

 
 pid_t forkpty(int * amaster , char * name , struct termios * termp , struct winsize * winp ); 

   
 ОПИСАНИЕ 

Функция
 openpty() 

находит свободный псевдо-терминал и возвращает файловые дескрипторы
для главного и подчиненного в
 amaster 

и
 aslave .

Если
 name 

не равно NULL, имя файла подчиненного возвращается в
 name .

Если
 termp 

не равно NULL, то параметры терминала подчиненного будут установлены в
значения из
 termp .

Если
 winp 

не равно NULL, то размер окна подчиненного будет установлен в значения
из
 winp .

 
Функция
 login_tty() 

подготавливает терминал
 fd 

(который может быть реальным терминальным устройством, или подчиненным
псевдо-терминала, возвращенным
 openpty() )

для входа в систему, создавая новый сеанс, делая
 fd 

управляющим терминалом для текущего процесса, устанавливая
 fd 

как стандартный поток ввода, вывода и ошибок текущего процесса, и закрывая
 fd .

 
Функция
 forkpty() 

объединяет
 openpty() ,

 fork() ,

и
 login_tty() 

для создания нового процесса, работающего в псевдо-терминале. Файловый
дескриптор главной стороны псевдо-терминала возвращается в 
 amaster ,

а имя файла подчиненного - в
 name ,

если только этот аргумент не равен NULL. Аргументы
 termp 

и
 winp ,

если они не равны NULL,
определяют атрибуты терминала и размер окна подчиненной стороны
псевдо-терминала.
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Если при вызове
 openpty() ,

 login_tty() ,

или
 forkpty() 

произошла ошибка, то возвращается -1 и устанавливается
 errno .

В противном случае
 openpty() ,

 login_tty() ,

и дочерний процесс
 forkpty() 

возвращают 0, а родительский процесс
 forkpty() 

возвращает идентификатор дочернего процесса.
   
 НАЙДЕННЫЕ ОШИБКИ 

 openpty() 

возвращает ошибку
 
 ENOENT 

 
нет доступных терминалов.
 
 

 login_pty() 

возвращает ошибку если
 ioctl() 

не удалось сделать
 fd 

управляющим терминалом текущего процесса.
 

 forkpty() 

возвращает ошибку, если ее вернули
 openpty() 

или
 fork() .

   
 ЗАМЕЧАНИЯ 

Эти функции включены в libutil, поэтому необходиому указывать
 -lutil 

в командной строке компилятора.
   
 ФАЙЛЫ 

 /dev/[pt]ty[pqrstuwxyzabcdePQRST][0123456789abcdef] 

   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

Эти функции взяты из BSD и присутствуют в libc5 и glibc2.
   
 НАЙДЕННЫЕ ОШИБКИ 

Никто не знает, сколько пространства нужно зарезервировать для
 name .

Поэтому, вызов
 openpty() 

или
 forkpty() 

с ненулевым
 name 

может быть небезопасен.
   
 СМ. ТАКЖЕ 

 fork (2)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 НАЙДЕННЫЕ ОШИБКИ 
 ЗАМЕЧАНИЯ 
 ФАЙЛЫ 
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