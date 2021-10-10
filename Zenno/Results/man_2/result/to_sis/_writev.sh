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
 
 
 
 writev (2)   writev  (2)   ( Solaris man: Системные вызовы )   writev  (2)   ( FreeBSD man: Системные вызовы ) >>  writev  (2)   ( Русские man: Системные вызовы )   writev  (2)   ( Linux man: Системные вызовы )   writev  (3)   ( Русские man: Библиотечные вызовы )   writev  (3)   ( Linux man: Библиотечные вызовы )   writev  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

readv, writev - считывает или записывает данные в несколько буферов
   
 СИНТАКСИС 

 #include < sys/uio.h >  

 ssize_t readv(int  fd , const struct iovec * vector , int  count ); 

 ssize_t writev(int  fd , const struct iovec * vector , int  count ); 
 

   
 ОПИСАНИЕ 

   
 DESCRIPTION 

Функция
 readv() 

считывает
 count 

блоков из файла, связанного с описателем файла
 fd 

в несколько буферов, описываемых вектором
 vector .

 

Функция
 writev() 

записывает по меньшей мере
 count 

блоков, описанных вектором
 vector 

в файл, связанный с описателем файла
 fd .

 

Указатель
 vector 

указывает на структуру
 struct iovec 

определенную в
 < sys/uio.h > 

как
 

 

 struct iovec { 
void *iov_base;   /* Начальный адрес */ 
size_t iov_len;   /* Количество байтов */ 
}; 
 

 

Буферы обрабатываются в уазанном порядке.
 

Функция
 readv() 

работает аналогично
 read (2)

за исключением того, что заполняются сразу несколько буферов.
 

Функция
 writev() 

работает аналогично
 write (2)

за исключением того, что записываются сразу несколько буферов.
 

   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

При нормальном завершении работы функция
 readv() 

возвращает число считанных байтов; функция
 writev() 

вовзвращает число записанных байтов.
При ошибке возвращается -1, а переменная  errno 
устанавливается соответственно ошибке.
   
 НАЙДЕННЫЕ ОШИБКИ 

Ошибки тут такие же, как и для функций
 read (2)

и
 write (2).

Дополнительно определена еще такая ошибка:
 
 EINVAL 

 
Сумма значений
 iov_len 

переполняет значение
 ssize_t .

Или:
счетчик векторов  count  равен нулю
или больше значения  MAX_IOVEC .
 
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

4.4BSD (функции
 readv 

и
 writev 

впервые появились в BSD 4.2), Unix98, POSIX 1003.1-2001.
libc5 в Linux использует  size_t  в качестве параметра  count ,
а эти функции возвращают значения в типе  int .


   
 НАЙДЕННЫЕ ОШИБКИ И ОГРАНИЧЕНИЯ 

Неразумно смешивать вызовы функций типа
 readv() 

или
 writev() ,

работающих с описателями файлов, вместе с функциями из библиотеки stdio;
что получится в результатом - непонятно и неопределено, но точно не
то, что вы будете изначально ожидать.
   
 СМ. ТАКЖЕ 

 read (2),

 write (2)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 DESCRIPTION 
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