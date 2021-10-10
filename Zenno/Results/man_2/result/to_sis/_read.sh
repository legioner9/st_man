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
 
 
 
 read (2)   read  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня )   read  (1)   ( FreeBSD man: Команды и прикладные программы пользовательского уровня )   read  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня )   read  (1)   ( POSIX man: Команды и прикладные программы пользовательского уровня )   read  (2)   ( Solaris man: Системные вызовы )   read  (2)   ( FreeBSD man: Системные вызовы ) >>  read  (2)   ( Русские man: Системные вызовы )   read  (2)   ( Linux man: Системные вызовы )   read  (3)   ( POSIX man: Библиотечные вызовы )   read  (9)   ( Solaris man: Ядро ) 
   
 НАЗВАНИЕ 

read - cчитывает данные файлового описателя
   
 СИНТАКСИС 

 #include < unistd.h > 

 ssize_t read(int  fd , void * buf , size_t  count ); 
 

   
 ОПИСАНИЕ 

 read ()

пытается записать 
 count 

байтов файлового описателя
 fd 

в буфер, адрес которого начинается с
 buf .

 

Если количество
 count 

равно нулю, то
 read ()

возвращает это нулевое значение и завершает свою работу.  Если
 count 

больше, чем
 SSIZE_MAX ,

то результат не может быть определен.
 

   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

При успешном завершении вызова возвращается количество байтов, которые были
считаны (нулевое значение означает конец файла),
а позиция файла увеличивается на это значение.  
Если количество прочитанных байтов меньше, чем
количество запрошенных, то это не считается ошибкой: например, 
данные могли быть почти в конце файла, в канале, на терминале, или
 read ()

был прерван сигналом. В случае ошибки возвращаемое значение равно
-1, а переменной
 errno 

присваивается номер ошибки. В этом случае позиция файла
не определена.
   
 НАЙДЕННЫЕ ОШИБКИ 

 
 EINTR 

 
Системный вызов был прерван сигналом до того, как был прочитан хотя бы один байт.
 EAGAIN 

 
При помощи
 O_NONBLOCK 

был выбран неблокирующий (non-blocking) ввод-вывод,
и нет данных, доступных для чтения в данный момент.
 EIO 

 
Ошибка ввода-вывода.  Это может произойти, например, если процесс,
находящийся в группе фоновых процессов, пытается читать данные на
контрольном терминале, игнорирует или блокирует сигнал
 SIGTTIN ,

или же его группа осталась без родителя. Это может также
случиться, если произошла низкоуровневая ошибка ввода-вывода при
считывании данных с диска или ленты.
 EISDIR 

 
 fd 

указывает на каталог.
 EBADF 

 
 fd 

является неверным файловым описателем или не открыт для чтения.
 EINVAL 

 
 fd 

связан с объектом, не предназначенным для чтения.
 EFAULT 

 
 buf 

указывает на каталог за пределами доступного адресного пространства.
 
 

Могут также возникнуть другие ошибки (в зависимости от объекта,
связанного с
 fd ).

POSIX позволяет системному вызову
 read ,

который был прерван после чтения первого блока запрошенных данных,
вернуть значение -1 (устанавливая значение переменной
 errno 

равным EINTR) или количество уже прочитанных байтов.
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

SVr4, SVID, AT&T, POSIX, X/OPEN, BSD 4.3
   
 НАЙДЕННЫЕ ОШИБКИ И ОГРАНИЧЕНИЯ 

В файловых системах NFS чтение небольших порций данных обновляет
значение временного штампа только в первый раз. Это вызвано кэшированием 
атрибутов со стороны клиента: большинство клиентов NFS (если не все)
предоставляют серверу право обновлять время доступа, а запросы на чтение,
которые удовлетворяются из клиентского кэша, не вызывают обновления
времени доступа, потому что данные не считываются с сервера. Семантика
UNIX может быть получена путем запрета кэширования атрибутов, но в
большинстве случаев это увеличит нагрузку на сервер и уменьшит
производительность.
 

Много файловых систем и дисков создавались достаточно быстрыми для того,
чтобы в использовании
 O_NONBLOCK 

не было необходимости. Поэтому иногда O_NONBLOCK может быть недоступно
на некоторых файлах и/или дисках.
   
 СМ. ТАКЖЕ 

 close (2),

 fcntl (2),

 ioctl (2),

 lseek (2),

 readdir (2),

 readlink (2),

 select (2),

 write (2),

 fread (3),

 readv (3)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 НАЙДЕННЫЕ ОШИБКИ 
 СООТВЕТСТВИЕ СТАНДАРТАМ 
 НАЙДЕННЫЕ ОШИБКИ И ОГРАНИЧЕНИЯ 
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