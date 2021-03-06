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
 
 
 
 mkdir (1)   mkdir  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня )   mkdir  (1)   ( FreeBSD man: Команды и прикладные программы пользовательского уровня ) >>  mkdir  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   mkdir  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня )   mkdir  (1)   ( POSIX man: Команды и прикладные программы пользовательского уровня )   mkdir  (2)   ( Solaris man: Системные вызовы )   mkdir  (2)   ( FreeBSD man: Системные вызовы )   mkdir  (2)   ( Русские man: Системные вызовы )   mkdir  (2)   ( Linux man: Системные вызовы )   mkdir  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 ИМЯ 

mkdir - создает каталоги
   
 ОБЗОР 

 mkdir [ опции ]  каталог... 

 
Опции POSIX:
 [-p] [-m  права ] [--] 

 
Опции GNU (краткая форма):
 [-p] [-m  права ] [--verbose] 

 [--help] [--version] [--] 

   
 ОПИСАНИЕ 

 mkdir 

создает каталоги с заданными именами.
 

По умолчанию права доступа к каталогам устанавливаются в 0777 (`a+rwx')
за вычетом битов, установленных в umask.
   
 ОПЦИИ 

 
 -m  права , --mode= права 

 
Устанавливает 
 права  

доступа к создаваемым каталогам.  Эти права могут быть заданы либо в
символьном виде, как описано в
 chmod (1),

либо в виде восьмеричного числа.
 -p, --parents 

 
Создает недостающие родительские каталоги для каждого указанного
 каталога .

Права доступа к родительским каталогам устанавливаются в значение
umask, логически сложенное с `u+wx'.  Аргументы, соответствующие
существующим каталогам, игнорируются.
(Таким образом, если каталог /a существует, то `mkdir /a' выдаст
ошибку, а `mkdir -p /a' -- нет.)
 --verbose 

 
Выдавать сообщение для каждого создаваемого каталога. Это наиболее
полезно с опцией
 --parents .

 -- 

 
Завершает список опций.
 
   
 СТАНДАРТНЫЕ ОПЦИИ GNU 

 
 --help 

 
Выдать подсказку на стандартный вывод и успешно завершиться.
 --version 

 
Выдать информацию о версии на стандартный вывод и успешно завершиться.
 -- 

 
Служит для обозначения конца списка опций.
 
   
 ОКРУЖЕНИЕ 

При работе обычным образом используются значения переменных LANG,
LC_ALL, LC_CTYPE и LC_MESSAGES.
   
 СОВМЕСТИМОСТЬ 

POSIX 1003.2
   
 ЗАМЕЧАНИЯ 

Данная страница описывает версию
 mkdir 

пакета fileutils-4.0;
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
 ОКРУЖЕНИЕ 
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