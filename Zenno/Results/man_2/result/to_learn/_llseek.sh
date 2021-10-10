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
 
 
 
 llseek (2)   llseek  (2)   ( Solaris man: Системные вызовы ) >>  llseek  (2)   ( Русские man: Системные вызовы )   llseek  (2)   ( Linux man: Системные вызовы ) 
   
 ИМЯ 

_llseek - установить позицию чтения/записи в файле
   
 ОБЗОР 

 #include < unistd.h > 

 
 #include < linux/unistd.h > 

 
 _syscall5(int, _llseek, uint, fd, ulong, hi, ulong, lo, loff_t *, res, uint, wh); 

 
 int _llseek(unsigned int  fd , unsigned long  offset_high , 

 unsigned long  offset_low , loff_t * result , unsigned int  whence ); 

   
 ОПИСАНИЕ 

Функция
 _llseek 

устанавливает позицию в файле, заданном параметром
 fd 

в значение
 (offset_high<<32) | offset_low 

байт относительно начала файла, текущей позиции в файле или конца
файла, в зависимости от того, равен ли параметр
 whence 

одному из значений
 SEEK_SET ,

 SEEK_CUR ,

или
 SEEK_END ,

соответственно.
Функция возвращает результирующую позицию в файле в аргументе
 result .

 
   
 ВОЗВРАЩАЕМОЕ ЗНАЧЕНИЕ 

В случае успеха возвращается ноль.  При ошибке возвращается -1, а 
 errno 

устанавливается должным образом.
 
   
 ОШИБКИ 

 
 EBADF 

 
 fd 

не является открытым файловым дескриптором.
 EINVAL 

 
Значение
 whence 

неверно.
 EFAULT 

 
Проблема с копированием результатов в пространство пользователя.
 
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

Эта функция специфична для Linux и не должна использоваться в
программах, которые должны быть переносимы.
   
 СМОТРИ ТАКЖЕ 

 lseek (2)

   
 ПЕРЕВОД 

Copyright (C) Alexey Mahotkin < alexm@hsys.msk.ru > 1999,
Виктор Вислобоков < corochoone@perm.ru > 2003

 
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