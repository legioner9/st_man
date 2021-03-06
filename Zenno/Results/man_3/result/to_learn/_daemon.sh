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
 
 
 
 daemon (3)   daemon  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  daemon  (3)   ( Русские man: Библиотечные вызовы )   daemon  (3)   ( Linux man: Библиотечные вызовы )   daemon  (8)   ( FreeBSD man: Команды системного администрирования ) Ключ  daemon  обнаружен в базе ключевых слов. 
   
 НАЗВАНИЕ 

daemon - запускает процессы в фоновом режиме
   
 СИНТАКСИС 

 #include < unistd.h > 

 
 I int daemon(int  nochdir ,  int  noclose ); 

   
 ОПИСАНИЕ 

Функция
 daemon ()

необходима для того, чтобы отключить программу от управляющего терминала
и запустить ее как системный демон.
 

Если аргумент
 nochdir 

не нулевой, то
 daemon ()

изменяет текущий рабочий каталог на корневой (/).
 

Если аргумент
 noclose 

не нулевой, то
 daemon ()

перенаправляет стандартный поток ввода/вывода ошибок в  /dev/null .
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Эта функция порождает новый процесс и, если
 fork() 

завершается успешно, то родительский процесс вызывает
 _exit (0),

чтобы дальнейшие ошибки воспринимались только дочерним процессом.)
В случае успешного выполнения возвращается ноль.
Если возникла ошибка, то
 daemon ()

возвращает -1 и присваивает глобальной переменной
 errno 

значение, указанное в библиотечных функциях
 fork (2)

и
 setsid (2).

   
 СМ. ТАКЖЕ 

 fork (2),

 setsid (2)

   
 ЗАМЕЧАНИЯ 

Реализация в glibc может также возвращать -1 в случаях, когда
 /dev/null 

существует, но не является файлом символьного устройства с ожидаемыми
основным и вспомогательным номерами. В этом случае нет необходимости
устанавливать
 errno .

   
 ПРИМЕЧАНИЯ ПО ИСТОРИИ 

Функция
 daemon ()

впервые появилась в BSD4.4.
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 СМ. ТАКЖЕ 
 ЗАМЕЧАНИЯ 
 ПРИМЕЧАНИЯ ПО ИСТОРИИ 
 
 
 
 
 
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