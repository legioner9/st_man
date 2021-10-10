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
 
 
 
 opendir (3)   opendir  (3)   ( Solaris man: Библиотечные вызовы )   opendir  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  opendir  (3)   ( Русские man: Библиотечные вызовы )   opendir  (3)   ( Linux man: Библиотечные вызовы )   opendir  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

opendir - открывает каталог
   
 СИНТАКСИС 

 #include < sys/types.h > 
 
 #include < dirent.h > 

 DIR *opendir(const char * name ); 
 

   
 ОПИСАНИЕ 

Функция  opendir()  открывает поток каталога, соответствующий
каталогу  name , и возвращает указатель на этот поток.
Поток устанавливается на первой записи в каталоге.
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Функция  opendir()  возвращает указатель на поток каталога
или NULL в случае ошибок.
   
 НАЙДЕННЫЕ ОШИБКИ 

 
 EACCES 

 
- доступ запрещен;
 EMFILE 

 
- процесс использует слишком много открытых потоков;
 ENFILE 

 
- система использует слишком много открытых потоков;
 ENOENT 

 
- каталога не существует или  name  - пустая строка;
 ENOMEM 

 
- недостаточно памяти для выполнения операции;
 ENOTDIR 

 
-  name  - это не каталог.
 
   
 ЗАМЕЧАНИЯ 

Соответствующий файловый дескриптор потока каталога может быть
получен с помощью
 dirfd (3).

   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

SVID 3, POSIX, BSD 4.3
   
 СМ. ТАКЖЕ 

 open (2),

 closedir (3),

 dirfd (3),

 readdir (3),

 rewinddir (3),

 scandir (3),

 seekdir (3),

 telldir (3)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 НАЙДЕННЫЕ ОШИБКИ 
 ЗАМЕЧАНИЯ 
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