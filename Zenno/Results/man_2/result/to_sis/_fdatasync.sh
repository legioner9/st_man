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
 
 
 
 fdatasync (2) >>  fdatasync  (2)   ( Русские man: Системные вызовы )   fdatasync  (2)   ( Linux man: Системные вызовы )   fdatasync  (3)   ( Solaris man: Библиотечные вызовы )   fdatasync  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

fdatasync - синхронизирует содержимое файла в памяти с содержимым на
диске
   
 ОБЗОР 

 #include < unistd.h > 

 
 int fdatasync(int  fd ); 

   
 ОПИСАНИЕ 

 fdatasync 

записывает на диск содержимое всех буферов данных, связанных с файлом,
причем возврат из функции происходит только после того, как это было
сделано.  Этот системный вызов напоминает
 fsync ,

но от него не требуется обновлять метаданные, например, время доступа.
 
Приложения, которые работают с базами данных или журнальными файлами,
часто пишут небольшие фрагменты данных (например, строчку журнала за
строчкой), а затем вызывают
 fsync ,

чтобы убедиться, что записанные данные сохранены на жестком диске.  К
сожалению,
 fsync 

всегда приводит к двум операциям записи: одной для новых данных, и еще
одной для того, чтобы обновить информацию, хранящуюся в inode.  Если
время модификации файла неважно для программы, то можно использовать
 fdatasync ,

чтобы избежать ненужной операции записи inode.
   
 ВОЗВРАЩАЕМОЕ ЗНАЧЕНИЕ 

В случае успеха возвращается ноль.  При ошибке возвращается -1, а 
 errno 

устанавливается должным образом.
 
   
 ОШИБКИ 

 
 EBADF 

 
 fd 

не является правильным дескриптором файла, открытым для записи.
 EROFS ,  EINVAL 

 
 fd 

связан со специальным файлом, не поддерживающим синхронизацию.
 EIO 

 
Во время синхронизации произошла ошибка.
 
   
 ОШИБКИ 

В настоящий момент (Linux 2.2)
 fdatasync 

эквивалентен
 fsync .

   
 ДОСТУПНОСТЬ 

На POSIX системах, где вызов
 fdatasync 

недоступен, символ
 _POSIX_SYNCHRONIZED_IO , 

определяемый в < unistd.h > устанавливается в значение больше 0. (См. также
 sysconf (3).)



   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

POSIX1b (ранее известный как POSIX.4)
   
 СМОТРИ ТАКЖЕ 

 fsync (2),

B.O. Gallmeister, POSIX.4, O'Reilly, сс. 220-223 и 343.
   
 ПЕРЕВОД 

Copyright (C) Alexey Mahotkin < alexm@hsys.msk.ru > 1999,
Виктор Вислобоков < corochoone@perm.ru > 2003
 

 
   Index 
 
 НАЗВАНИЕ 
 ОБЗОР 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМОЕ ЗНАЧЕНИЕ 
 ОШИБКИ 
 ОШИБКИ 
 ДОСТУПНОСТЬ 
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