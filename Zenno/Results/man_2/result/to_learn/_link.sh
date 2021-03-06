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
 
 
 
 link (2)   link  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня )   link  (1)   ( FreeBSD man: Команды и прикладные программы пользовательского уровня )   link  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   link  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня )   link  (1)   ( POSIX man: Команды и прикладные программы пользовательского уровня )   link  (2)   ( Solaris man: Системные вызовы )   link  (2)   ( FreeBSD man: Системные вызовы ) >>  link  (2)   ( Русские man: Системные вызовы )   link  (2)   ( Linux man: Системные вызовы )   link  (3)   ( Solaris man: Библиотечные вызовы )   link  (3)   ( POSIX man: Библиотечные вызовы )   link  (5)   ( FreeBSD man: Форматы файлов ) Ключ  link  обнаружен в базе ключевых слов. 
   
 ИМЯ 

link - создать новое имя файла
   
 ОБЗОР 

 #include < unistd.h > 

 
 int link(const char * oldpath , const char * newpath ); 

   
 ОПИСАНИЕ 

 link 

создает новую ссылку (также известную как "жесткая" ссылка) на
существующий файл.
 
Если
 newpath 

существует, он
 не 

будет перезаписан.
 
Это новое имя может использоваться точно так же, как и старое, для
любых операций; оба имени ссылаются на один и тот же файл (то есть 
имеют те же права доступа и владельца) и невозможно сказать, какое имя 
было "настоящим".
 
   
 ВОЗВРАЩАЕМОЕ ЗНАЧЕНИЕ 

В случае успеха возвращается ноль.  При ошибке возвращается -1, а 
 errno 

устанавливается должным образом.
 
   
 ОШИБКИ 

 
 EXDEV 

 
 oldpath  и  newpath 

находятся на разных файловых системах.
 EPERM 

 
Файловая система, содержащая
 oldpath  и  newpath ,

не поддерживает жесткие ссылки.
 EFAULT 

 
 oldpath  или  newpath 

указывают за пределы доступного адресного пространства.
 EACCES 

 
Запись в каталог, содержащий 
 newpath ,

не разрешен для uid'а процесса, или же один из каталогов 
 oldpath  или  newpath 

не разрешает поиск. 
 ENAMETOOLONG 

 
 oldpath  или  newpath 

слишком длинны.
 ENOENT 

 
Одна из частей пути
 oldpath  или  newpath 

не существует или является "висячей" символической ссылкой.
 ENOTDIR 

 
Компонент пути, использованный как каталог в
 oldpath  или  newpath ,

в действительности таковым не является.
 ENOMEM 

 
Ядру не хватило памяти.
 EROFS 

 
Файл находится на файловой системе, смонтированной только для чтения.
 EEXIST 

 
 newpath 

уже существует.
 EMLINK 

 
Файл, на который ссылается 
 oldpath 

уже имеет максимальное количество ссылок.
 ELOOP 

 
 oldpath  или  newpath 

содержат зацикленную символическую ссылку, то есть при ее подстановке
происходит ссылка на нее саму.
 ENOSPC 

 
На устройстве, содержащем файл, нет места для создания новой записи в каталоге.  Это может произойти
также, если исчерпана квота дискового пространства пользователя.
 EPERM 

 
 oldpath 

является записью 
 .  or  .. 

 
   
 ЗАМЕЧАНИЯ 

Жесткие ссылки, созданные с помощью
 link ,

не могут указывать в другие файловые системы.  Если это требуется,
используйте
 symlink .

   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

SVr4, SVID, POSIX, BSD 4.3.  SVr4 документирует дополнительные коды
ошибки ENOLINK и EMULTIHOP; POSIX.1 не документирует ELOOP.
   
 НЕДОСТАТКИ РЕАЛИЗАЦИИ 

На файловых системах NFS код возврата может быть неверен в случае,
если NFS-сервер создает ссылку и умирает, прежде чем сообщает об
этом.  Используйте
 stat (2),

чтобы узнать, создалась ли ссылка.
   
 СМОТРИ ТАКЖЕ 

 symlink (2),  unlink (2),  rename (2),  open (2),

 stat (2),  ln (1),  link (8).

   
 ПЕРЕВОД 

Copyright (C) Alexey Mahotkin < alexm@hsys.msk.ru > 1999-2000
 

 
   Index 
 
 ИМЯ 
 ОБЗОР 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМОЕ ЗНАЧЕНИЕ 
 ОШИБКИ 
 ЗАМЕЧАНИЯ 
 СООТВЕТСТВИЕ СТАНДАРТАМ 
 НЕДОСТАТКИ РЕАЛИЗАЦИИ 
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