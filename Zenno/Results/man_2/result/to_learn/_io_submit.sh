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
 
 
 
 io_submit (2) >>  io_submit  (2)   ( Русские man: Системные вызовы )   io_submit  (2)   ( Linux man: Системные вызовы ) 
   
 НАЗВАНИЕ 

io_submit - предлагает асинхронные блоки ввода/вывода для обработки
   
 СИНТАКСИС 



 
#include < linux/aio.h >
 
 
 
 long  io_submit  (aio_context_t  ctx_id , long  nr , struct iocb  **iocbpp );


 
 
   
 ОПИСАНИЕ 

 
 

 io_submit  ставит в очередь  nr  блоков запросов ввода/вывода для обработки
в контексте AIO  ctx_id .  iocbpp  должно быть в массиве 
 nr  блоков запросов AIO, что и будет предложено для контекста  ctx_id .
 
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

 
 

 io_submit  возвращает число предложенных  iocb 
или 0 при  nr , равном нулю.
 
   
 НАЙДЕННЫЕ ОШИБКИ 

 
 
 EINVAL 
Некорректен  aio_context , указанный  ctx_id . 
 nr  меньше 0.  iocb  в *iocbpp[0] некорректно инициализирован,
или указанная операция некорректна для описателя файла в  iocb .
 
 EFAULT 
Одна из структур данных указывает на некорректные данные.
 
 EBADF 
Некорректный описатель файла, указанный в первом  iocb .
 
 EAGAIN 
Недостаточно ресурсов для постановки в очередь  iocb .
 
 ENOSYS 
 io_submit  не реализован в этой архитектуре.
 
 
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

 
 

 io_submit  является специфичным для Linux и не должно использоваться в портируемых программах.
 
   
 ВЕРСИИ 

 
 

Асинхронные системные вызовы ввода/вывода впервые появились в Linux 2.5 в августе 2002.
 
   
 СМ. ТАКЖЕ 

 
 

 io_setup (2),  io_destroy (2),  io_getevents (2),  io_cancel (2).
 
   
 ЗАМЕЧАНИЯ 

 
 

Асинхронные системные вызовы ввода/вывода были созданы Benjamin LaHaise.
 
   
 АВТОРЫ 

Kent Yoder.
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 НАЙДЕННЫЕ ОШИБКИ 
 СООТВЕТСТВИЕ СТАНДАРТАМ 
 ВЕРСИИ 
 СМ. ТАКЖЕ 
 ЗАМЕЧАНИЯ 
 АВТОРЫ 
 
 
 
 
 
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