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
 
 
 
 chroot (2)   chroot  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня )   chroot  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   chroot  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня )   chroot  (2)   ( Solaris man: Системные вызовы )   chroot  (2)   ( FreeBSD man: Системные вызовы ) >>  chroot  (2)   ( Русские man: Системные вызовы )   chroot  (2)   ( Linux man: Системные вызовы )   chroot  (8)   ( FreeBSD man: Команды системного администрирования )   chroot  (8)   ( Linux man: Команды системного администрирования ) Ключ  chroot  обнаружен в базе ключевых слов. 
   
 НАЗВАНИЕ 

chroot - изменить корневой каталог
   
 ОБЗОР 

 #include < unistd.h > 

 
 int chroot(const char * path ); 

   
 ОПИСАНИЕ 

 chroot 

изменяет корневой каталог на тот, что задан аргументом
 path .

Этот каталог будет использоваться для имен файлов, начинающихся со /.
Корневой каталог наследуется всеми потомками текущего процесса.
 
Только суперпользователь может изменять корневой каталог.
 
Заметьте, что этот системный вызов не изменяет текущий рабочий
каталог, поэтому . может находиться вне дерева каталогов,
начинающегося со /.
В частности, суперпользователь может выбраться из-под chroot jail с
помощью mkdir foo; chroot foo; cd ...
   
 ВОЗВРАЩАЕМОЕ ЗНАЧЕНИЕ 

В случае успеха возвращается ноль.  При ошибке возвращается -1, а 
 errno 

устанавливается должным образом.
 
   
 ОШИБКИ 

 
В зависимости от файловой системы могут появляться другие ошибки.
Стандартные ошибки таковы:
 
 
 EPERM 

 
Фактический UID не равен нулю.
 EFAULT 

 
 path 

указывает за пределы доступного адресного пространства.
 ENAMETOOLONG 

 
 path 

слишком длинно.
 ENOENT 

 
Файл не существует.
 ENOMEM 

 
Ядру не хватило памяти.
 ENOTDIR 

 
Компонент пути, использованный как каталог в
 path ,

в действительности таковым не является.
 EACCES 

 
В одном из каталогов, находящихся по пути к
 path ,

запрещен поиск.
 ELOOP 

 
 path 

является зацикленной символической ссылкой, то есть при подстановке
возникает ссылка на неё саму.
 EIO 

 
Произошла ошибка ввода-вывода.
 
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

SVr4, SVID, 4.4BSD, X/OPEN.  Эта функция не входит в POSIX.1. SVr4
документирует дополнительные коды ошибок EINTR, ENOLINK и EMULTIHOP.
X/OPEN не документирует EIO, ENOMEM и EFAULT.  Этот интерфейс помечен
как "устаревающий" в X/OPEN.
   
 СМОТРИ ТАКЖЕ 

 chdir (2)

   
 ПЕРЕВОД 

Copyright (C) Alexey Mahotkin < alexm@hsys.msk.ru > 1999
 

 
   Index 
 
 НАЗВАНИЕ 
 ОБЗОР 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМОЕ ЗНАЧЕНИЕ 
 ОШИБКИ 
 СООТВЕТСТВИЕ СТАНДАРТАМ 
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