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
 
 
 
 mkfifo (1)   mkfifo  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня )   mkfifo  (1)   ( FreeBSD man: Команды и прикладные программы пользовательского уровня ) >>  mkfifo  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   mkfifo  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня )   mkfifo  (1)   ( POSIX man: Команды и прикладные программы пользовательского уровня )   mkfifo  (2)   ( FreeBSD man: Системные вызовы )   mkfifo  (3)   ( Solaris man: Библиотечные вызовы )   mkfifo  (3)   ( Русские man: Библиотечные вызовы )   mkfifo  (3)   ( Linux man: Библиотечные вызовы )   mkfifo  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 ИМЯ 

mkfifo - создает FIFO (именованные каналы)
   
 ОБЗОР 

 mkfifo [ опции ]  файл... 

 
Опции POSIX:
 [-m  права ] [--] 

 
Опции GNU (краткая форма):
 [-m  права ] [--help] [--version] [--] 

   
 ОПИСАНИЕ 

 mkfifo 

создает FIFO (также известные как "именованные каналы") с указанными
именами.
 

"FIFO" -- это специальный тип файла, который позволяет общаться
независимым процессам. Один процесс открывает FIFO файл для записи,
а второй для чтения, после чего данные могут передаваться как
в обычных неименованных каналах в shell и т. п.
 

По умолчанию права доступа к создаваемому FIFO устанавливаются в 0666
(`a+rw') за вычетом битов, установленных в umask.
   
 ОПЦИИ 

 
 -m  права , --mode= права 

 
Устанавливает права доступа к создаваемым FIFO в значение
 права ,

которое может иметь как символьную форму, описанную в
 chmod (1)

так и форму восьмеричного числа.
 -- 

 
Завершает список опций.
 
   
 СТАНДАРТНЫЕ ОПЦИИ GNU 

 
 --help 

 
Выдать подсказку на стандартный вывод и успешно завершиться.
 --version 

 
Выдать информацию о версии на стандартный вывод и успешно завершиться.
 -- 

 
Служит для обозначения конца списка опций.
 
   
 СОВМЕСТИМОСТЬ 

POSIX 1003.2
   
 ЗАМЕЧАНИЯ 

Данная страница описывает версию
 mkfifo 

из пакета fileutils-4.0;
другие версии могут иметь небольшие отличия.
Исправления и дополнения присылайте по адресу  aeb@cwi.nl .
Отчеты об ошибках в этой программе присылайте по адресу
 fileutils-bugs@gnu.ai.mit.edu .
   
 ПЕРЕВОД 

Перевёл с английского Виктор Вислобоков < corochoone@perm.ru > 2003
 

 
   Index 
 
 ИМЯ 
 ОБЗОР 
 ОПИСАНИЕ 
 ОПЦИИ 
 СТАНДАРТНЫЕ ОПЦИИ GNU 
 СОВМЕСТИМОСТЬ 
 ЗАМЕЧАНИЯ 
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