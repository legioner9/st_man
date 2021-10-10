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
 
 
 
 outsl (2) >>  outsl  (2)   ( Русские man: Системные вызовы )   outsl  (2)   ( Linux man: Системные вызовы ) 
   
 НАЗВАНИЕ 

outb, outw, outl, outsb, outsw, outsl - функции вывода данных в порт
 

inb, inw, inl, insb, insw, insl - функции чтения данных порта
 

outb_p, outw_p, outl_p, inb_p, inw_p, inl_p - функции задержки ввода/вывода (I/O)
 
   
 ОПИСАНИЕ 

Это семейство функций используется для низкоуровневой работы с портами
ввода/вывода. В основном, они предназначены для использования
внутри ядра, но могут быть вызваны и пользовательской программой.



Вы должны скомпилировать свою программу с использованием флагов
 -O ,  -O2  или им подобных. Эти функции определены
в виде макросов и не будут вставлены в программу без 
оптимизации, вызывая тем самым неразрешаемые ссылки в процессе
сборки программы.
 
Для того, чтобы запросить у ядра разрешение доступа к портам, используйте
 ioperm (2)

или
 iopl (2).

Если этого не сделать, приложение получит сообщение об ошибке
сегментации.
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

Эти функции специфичны для конкретного оборудования.
Аргументы
 порт 

и
 значение 

находятся в порядке, обратном многим реализациям этих функций в DOS.
 
   
 СМ. ТАКЖЕ 

 ioperm (2),

 iopl (2)

 

 
   Index 
 
 НАЗВАНИЕ 
 ОПИСАНИЕ 
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