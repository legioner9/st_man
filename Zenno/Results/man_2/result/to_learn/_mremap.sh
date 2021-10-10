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
 
 
 
 mremap (2) >>  mremap  (2)   ( Русские man: Системные вызовы )   mremap  (2)   ( Linux man: Системные вызовы ) 
   
 НАЗВАНИЕ 

mremap - изменяет отражение адреса виртуальной памяти
   
 СИНТАКСИС 

 #include < unistd.h > 

 

 #include < sys/mman.h > 

 
 void * mremap(void * old_address , size_t  old_size 

 , size_t  new_size , unsigned long  flags ); 


   
 ОПИСАНИЕ 

 mremap  увеличивает (или уменьшает) размер текущего отражения
памяти, одновременно перемещая его при необходимости (это
контролируется параметром  flags  и доступным виртуальным
адресным пространством).
 old_address  - это старый адрес виртуальной памяти, которую
Вы хотите изменить. Заметьте, что  old_address  должен быть
выровнен по границе страницы.  old_size  - старый размер
блока виртуальной памяти.  new_size  - требуемый размер
блока виртуальной памяти.
Параметр  flags  состоит из побитно и логически сложенных флагов.
Память Linux делится на страницы. Пользовательскому процессу выделяется
один или несколько неразрывных сегментов виртуальной памяти. Каждый из
этих сегментов имеет одно (или несколько) отражений в реальной памяти
(в таблице страниц). У каждого сегмента есть своя защита,
или свои права доступа. При сегментировании может случиться ошибка,
если производится попытка неразрешенного доступа (например, запись информации
в сегмент, режим которого "только для чтения"). Доступ к виртуальной памяти
за пределами сегментов также приведет к ошибке сегментирования.
 mremap  использует схему таблицы страниц Linux.   mremap  изменяет
соответствие виртуальных адресов и страниц памяти.  Это можно использовать 
для создания очень эффективного  realloc .
   
 ФЛАГИ 

 
 MREMAP_MAYMOVE 

 
указывает, вернет ли функция ошибку или изменит виртуальный адрес, если
невозможно изменить размер сегмента данного виртуального адреса.
 
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

При удачном выполнении вызова  mremap  возвращает указатель на новую
область виртуальной памяти. При ошибке возвращается -1, а переменной
 errno 

присваивается номер ошибки.
   
 НАЙДЕННЫЕ ОШИБКИ 

 
 EINVAL 

 
Задан неправильный параметр. Скорее всего,  old_address  не выровнен
по границе страницы.
 EFAULT 

 
"Ошибка сегментирования" ("Segmentation fault"). Один из адресов 
в области с  old_address  по  old_address + old_size  не подходит
для этого процесса. Сообщение об этой ошибке будет выдано также в случае, если
вся эта область отражена, но эти отражения разных типов.
 EAGAIN 

 
Сегмент памяти заблокирован и не может быть переотражен.
 ENOMEM 

 
Область памяти не может быть расширена для текущего виртуального адреса,
параметр флага  MREMAP_MAYMOVE  не равен  flags , 
или не хватает виртуальной памяти.
 
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

Эта функция специфична для Linux. Не рекомендуется
использовать ее в программах, переносимых в
другие системы.
В 4.2BSD описана нереализованная функция
 mremap (2) , 

вызов которой коренным образом отличается от вышеописанного.
   
 СМ. ТАКЖЕ 

 getpagesize (2),

 realloc (3),

 malloc (3),

 brk (2),

 sbrk (2),

 mmap (2)


Следующие книги по ОС, в которых есть информация о страничной памяти,
должны стать Вашими Любимыми Книгами:
 Современные Операционные Системы , автор Andrew S. Tannenbaum; 
 Linux изнутри , автор Randolf Bentson;
 Строение операционных систем UNIX , автор Maurice J. Bach.
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ФЛАГИ 
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