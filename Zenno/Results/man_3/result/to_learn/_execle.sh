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
 
 
 
 execle (3)   execle  (2)   ( Solaris man: Системные вызовы )   execle  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  execle  (3)   ( Русские man: Библиотечные вызовы )   execle  (3)   ( Linux man: Библиотечные вызовы )   execle  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

execl, execlp, execle, execv, execvp - выполняют файл
   
 СИНТАКСИС 

 #include < unistd.h > 

 
 extern char **environ; 

 
 int execl(const char * path , const char * arg , ...); 

 

 int execlp(const char * file , const char * arg , ...); 

 

 int execle(const char * path , const char * arg 

 , ..., char * const  envp []); 

 

 int execv(const char * path , char *const  argv []); 

 

 int execvp(const char * file , char *const  argv []); 

   
 ОПИСАНИЕ 

Семейство функций
 exec 

заменяет текущий образ процесса новым образом процесса.
Функции, описанные на этой странице руководства, являются образом функции
 execve (2).

Более детальную информацию о смене текущего процесса можно получить
со страниц руководства, описывающих функции
 execve .

 

Начальным параметром этих функций будет являться полное имя файла,
который необходимо исполнить.
 

Параметр
 const char *arg 

и аналогичные записи в функциях
 execl ,

 execlp ,

и 
 execle 

подразумевают параметры
 arg0 ,

 arg1 ,

...,
 argn .

Все вместе они описывают один или нескольких указателей
на строки, заканчивающиеся NULL, которые представляют собой список параметров,
доступных исполняемой программе.
Первый параметр, по соглашению, должен указывать на имя, ассоциированное
с файлом, который надо исполнить. Список параметров
 должен 

заканчиваться 
 NULL .

 

Функции
 execv 

и
 execvp 

предоставляют процессу массив указателей на строки, заканчивающиеся null.
Эти строки являются списком параметров, доступных новой программе.
Первый аргумент, по соглашению, должен указать на имя, ассоциированное
с файлом, который необходимо исполнить. Массив указателей
 должен 

заканчиваться
 NULL .

 

Функция
 execle 

также определяет окружение исполняемого процесса, помещая после указателя
 NULL ,

заканчивающего список параметров (или после
указателя на массив), argv дополнительного параметра.
Этот дополнительный параметр является массивом уазателей на строки,
завершаемые null, и
 должен 

заканчиваться указателем
 NULL .

Другие функции извлекают окружение нового образа процесса из внешней переменной
 environ 

текущего процесса.
 

Некоторые из этих функций имеют особую семантику.
 

Функции
 execlp 

и
 execvp 

дублируют действия оболочки, относящиеся к поиску исполняемого файла,
если указанное имя файла не содержит символ черты (/).
Путь поиска определяется в окружении переменной
 PATH . 

Если эта переменная не определена, то используется путь поиска
":/bin:/usr/bin" по умолчанию. Дополнительно обрабатываются некоторые ошибки.
 

Если запрещен доступ к файлу (при попытке исполнения
 execve 

была возвращена ошибка 
 EACCES ),

то эти функции будут продолжать поиск вдоль оставшегося пути.
Если не найдено больше никаких файлов, то по возвращении они установят
значение глобальной переменной
 errno 

равным
 EACCES .

 

Если заголовок файла не распознается (при попытке выполнения функции 
 execve 

была возвращена ошибка
 ENOEXEC ),

то эти функции запустят оболочку (shell) с полным именем файла в качестве 
первого параметра. (Если и эта попытка будет неудачна, 
то дальнейший поиск не производится.)
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Возвращение значения какой-либо из функций
 exec 

приведет к ошибке. При этом возвращаемым значением
будет -1 и глобальной переменной
 errno 

будет присвоен код соответствующей ошибки.
   
 ФАЙЛЫ 

 /bin/sh 

   
 НАЙДЕННЫЕ ОШИБКИ 

Все эти функции при ошибках присваивают значение
 errno, 

определенное в библиотечной функции
 execve (2).

   
 СМ. ТАКЖЕ 

 sh (1),

 execve (2),

 fork (2),

 environ (5),

 ptrace (2)

   
 СОВМЕСТИМОСТЬ 

В некоторых других системах путь поиска по умолчанию (используемый, когда
в окружении нет переменной  PATH ) начинается с каталогов
 /bin 

и
 /usr/bin ,

и только затем поиск проводится в текущем каталоге. Это мера против 
вирусов типа "троянский конь".
Linux использует традиционный метод поиска: поиск с текущего каталога.
 

Поведение функций
 execlp 

и
 execvp 

при ошибках во время попыток исполнения файла сложилось исторически,
но при этом не описанно и не определено в стандарте POSIX.
BSD (и, возможно, другие системы) выполняют системное ожидание и повтор
в случае встретившейся ошибки ETXTBSY. Linux воспринимает это как серьезную ошибку
и немедленно ее возвращает.
 

Обычно функции
 execlp 

и
 execvp 

игнорируют все ошибки за исключением тех, что описаны выше, а также
 ENOMEM 

и
 E2BIG ,

которые возвращаются в данные функции. Эти ошибки возвращаются 
также при возникновении ошибок, отличающихся от описанных выше.
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

 execl ,

 execv ,

 execle ,

 execlp 

и
 execvp 

соответствуют стандарту IEEE Std1003.1-88 (``POSIX.1'').
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 ФАЙЛЫ 
 НАЙДЕННЫЕ ОШИБКИ 
 СМ. ТАКЖЕ 
 СОВМЕСТИМОСТЬ 
 СООТВЕТСТВИЕ СТАНДАРТАМ 
 
 
 
 
 
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