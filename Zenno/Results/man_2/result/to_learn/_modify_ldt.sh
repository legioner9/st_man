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
 
 
 
 modify_ldt (2) >>  modify_ldt  (2)   ( Русские man: Системные вызовы )   modify_ldt  (2)   ( Linux man: Системные вызовы ) 
   
 НАЗВАНИЕ 

modify_ldt - получает или установливает ldt
   
 СИНТАКСИС 

 

 #include < linux/ldt.h > 

 #include < linux/unistd.h > 

 
 _syscall3(int, modify_ldt, int,  func , void *,  ptr , unsigned long,  bytecount ) 

 
 int modify_ldt(int  func , void * ptr , unsigned long  bytecount ); 

 
   
 ОПИСАНИЕ 

 modify_ldt 

читает или записывает локальную таблицу описателей (ldt) процесса.
Ldt - это таблица управления памятью процесса, используемая
в процессорах серии i386. Подробнее о содержимом этой
таблицы читайте в руководствах по процессору Intel 386.
 

Если значение
 func 

равно 0, то
 modify_ldt 

записывает ldt в память (адрес указан 
 ptr ).

После этого количество прочитанных байтов меньше или равно
 bytecount 

и равно реальному размеру ldt.
 

Если значение
 func 

равно 1, то
 modify_ldt 

изменяет одну запись ldt.
 ptr 

должен указывать на структуру
 modify_ldt_ldt_s , 

а
 bytecount 

должен быть равен размеру этой структуры.
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

При удачном завершении работы
 modify_ldt 

возвращает или количество прочитанных байтов (при чтении),
или 0 (при записи).
В случае ошибки
 modify_ldt 

возвращает -1, а переменной
 errno 

присваивается номер ошибки.
   
 НАЙДЕННЫЕ ОШИБКИ 

 
 ENOSYS 

 
Аргумент
 func 

не равен 0 или 1.
 EINVAL 

 
В этом случае
 ptr 

равен 0
или
 func 

равен 1 и
 bytecount 

не равен размеру структуры
 modify_ldt_ldt_s ,

или
 func 

равен 1, а в новой записи ldt есть неправильные значения.
 EFAULT 

 
 ptr 

указывает на каталоги за пределами доступного адресного пространства.
 
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

 modify_ldt  - это функция, специфичная для Linux. Не рекомендуется
использовать ее в программах, переносимых в другие системы.
   
 СМ. ТАКЖЕ 

 vm86 (2)

 

 
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