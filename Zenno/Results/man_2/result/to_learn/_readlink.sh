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
 
 
 
 readlink (2)   readlink  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня )   readlink  (1)   ( FreeBSD man: Команды и прикладные программы пользовательского уровня )   readlink  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   readlink  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня )   readlink  (2)   ( Solaris man: Системные вызовы )   readlink  (2)   ( FreeBSD man: Системные вызовы ) >>  readlink  (2)   ( Русские man: Системные вызовы )   readlink  (2)   ( Linux man: Системные вызовы )   readlink  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

readlink - считывает значение символьной ссылки
   
 СИНТАКСИС 

 #include < unistd.h > 

 
 int readlink(const char * path , char * buf , size_t  bufsiz ); 

   
 ОПИСАНИЕ 

 readlink 

помещает содержимое символьной ссылки
 path 

в буфер
 buf 

длиной
 bufsiz . 

 readlink 

не добавляет в
 buf 

символ
 NUL .

Если файл, помещаемый в буфер, слишком мал, его длина
 bufsiz 

будет урезана.
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Этот вызов возвращает количество символов, помещенных в буфер,
или (при ошибках) возвращается -1, и переменной
 errno 

присваивается номер ошибки.
   
 НАЙДЕННЫЕ ОШИБКИ 

 
 ENOTDIR 

 
Один из компонентов пути не является каталогом.
 EINVAL 

 
 bufsiz 

не является положительным числом.
 ENAMETOOLONG 

 
Путь или компонент пути слишком длинный.
 ENOENT 

 
Указанного файла не существует.
 EACCES 

 
Запрещен поиск в каталоге, являющемся компонентом пути.
 ELOOP 

 
Слишком много символьных ссылок в указанном имени.
 EINVAL 

 
Файл не является символьной ссылкой.
 EIO 

 
При чтении данных файловой системы произошла ошибка ввода-вывода.
 EFAULT 

 
 buf 

указывает на каталог за пределами доступного адресного пространства.
 ENOMEM 

 
Недостаточно памяти в системе.
 
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

X/OPEN, 4.4BSD (системный вызов
 readlink 

появился в 4.2BSD).
   
 СМ. ТАКЖЕ 

 stat (2),

 lstat (2),

 symlink (2)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 НАЙДЕННЫЕ ОШИБКИ 
 СООТВЕТСТВИЕ СТАНДАРТАМ 
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