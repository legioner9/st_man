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
 
 
 
 getdents (2)   getdents  (2)   ( Solaris man: Системные вызовы )   getdents  (2)   ( FreeBSD man: Системные вызовы ) >>  getdents  (2)   ( Русские man: Системные вызовы )   getdents  (2)   ( Linux man: Системные вызовы ) 
   
 ИМЯ 

getdents - получить записи каталога
   
 ОБЗОР 

 #include < unistd.h > 
 #include < linux/types.h > 
 #include < linux/dirent.h > 
 #include < linux/unistd.h > 

 _syscall3(int, getdents, uint, fd, struct dirent *, dirp, uint, count); 

 int getdents(unsigned int  fd , struct dirent * dirp , unsigned int  count ); 
 

   
 ОПИСАНИЕ 

Эта не та функция, которая должна представлять для вас интерес.
Смотрите функцию
 readdir (3),

которая является интерфейсом библиотеки языка C, соответствующим стандарту
POSIX.
 

Системный вызов
 getdents 

читает несколько структур
 dirent 

из каталога, на который указывает
 fd 

в область памяти, на которую указывает
 dirp .

Параметр
 count 

является размером этой области памяти.
 

Структура
 dirent 

определена следующим образом:
 

 
 struct dirent
{
    long d_ino;                 /* номер inode */
    off_t d_off;                /* смещение до следущей  dirent  */
    unsigned short d_reclen;    /* длина данной  dirent  */
    char d_name [NAME_MAX+1];   /* имя файла (завершаемое нулём) */
}
 

 

 

 d_ino 

является номером индексного дескриптора (inode).
 d_off 

является дистанцией от начала данного каталога до начала следующей
структуры
 dirent .

 d_reclen 

является размером данной структуры
 dirent .

 d_name 

является именем файла, которое завершается нулевым символом.
 

Данный вызов замещает
 readdir (2).

   
 ВОЗВРАЩАЕМОЕ ЗНАЧЕНИЕ 

В случае успеха возвращается количество прочитанных байт. При
достижении конца каталога возвращается 0. В случае ошибки
возвращается -1 и значение
 errno 

устанавливается соответствующим образом.
   
 ОШИБКИ 

 
 EBADF 

 
Неправильный файловый дескриптор
 fd .

 EFAULT 

 
Аргумент указывает за пределы адресного пространства, вызывающего процесса.
 EINVAL 

 
Буфер результата слишком мал.
 ENOENT 

 
Нет такого каталога.
 ENOTDIR 

 
Файловый дескриптор не указывает на каталог.
 
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

SVr4, SVID.  SVr4 документирует дополительные ошибки ENOLINK, EIO.
   
 СМОТРИ ТАКЖЕ 

 readdir (2),

 readdir (3)

   
 ПЕРЕВОД 

Перевёл с английского Виктор Вислобоков < corochoone@perm.ru > 2004
 

 
   Index 
 
 ИМЯ 
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