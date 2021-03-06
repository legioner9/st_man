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
 
 
 
 rmdir (1)   rmdir  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня )   rmdir  (1)   ( FreeBSD man: Команды и прикладные программы пользовательского уровня ) >>  rmdir  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   rmdir  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня )   rmdir  (1)   ( POSIX man: Команды и прикладные программы пользовательского уровня )   rmdir  (2)   ( Solaris man: Системные вызовы )   rmdir  (2)   ( FreeBSD man: Системные вызовы )   rmdir  (2)   ( Русские man: Системные вызовы )   rmdir  (2)   ( Linux man: Системные вызовы )   rmdir  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 ИМЯ 

rmdir - удаляет пустые каталоги
   
 ОБЗОР 

 rmdir [ опции ]  каталог... 

 
Опции POSIX:
 [-p] [--] 

 
Опции GNU (краткая форма):
 [-p] 

 [--ignore-fail-on-non-empty] 

 [--help] [--version] [--] 

   
 ОПИСАНИЕ 

 rmdir 

удаляет пустые каталоги.
 

Если какой-либо из аргументов
 каталог 

не указывает на существующий пустой каталог, то будет выдано сообщение
об ошибке.
   
 ОПЦИИ POSIX 

 
 -p 

 
Если
 каталог 

включает более, чем один компонент пути, то удаляется каталог, затем
убирается последний компонент пути и удаляется получившийся каталог
и т. д. до тех пор, пока все компоненты не будут удалены.  Таким образом,
команда `rmdir -p a/b/c' эквивалентна `rmdir a/b/c; rmdir a/b; rmdir a'.
 [--] 

 
Завершает список опций.
 
   
 ОПЦИИ GNU 

 
 --ignore-fail-on-non-empty 

 
Обычно
 rmdir 

будет отказываться удалять непустые каталоги.  Данная опция заставляет
 rmdir 

игнорировать ошибки при удалении каталога, если эти ошибки вызваны
тем, что каталог не пуст.
(Новое в fileutils-4.0.)
 -p, --parents 

 
См. выше.
 
   
 СТАНДАРТНЫЕ ОПЦИИ GNU 

 
 --help 

 
Выдать подсказку на стандартный вывод и успешно завершиться.
 --version 

 
Выдать информацию о версии на стандартный вывод и успешно завершиться.
 -- 

 
Служит для обозначения конца списка опций.
 
   
 ОКРУЖЕНИЕ 

При работе обычным образом используются значения переменных LANG, LC_ALL, LC_COLLATE,
LC_CTYPE и LC_MESSAGES.
   
 СОВМЕСТИМОСТЬ 

POSIX 1003.2
   
 ПРИМЕР ИСПОЛЬЗОВАНИЯ 

Команда 
 rmdir foo 

удалит каталог
 foo, 

если он пуст.
Для удаления непустых каталогов вместе со всем содержимым, используйте
 rm -r foo .

   
 ЗАМЕЧАНИЯ 

Данная страница описывает версию
 rmdir 

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
 ОПЦИИ POSIX 
 ОПЦИИ GNU 
 СТАНДАРТНЫЕ ОПЦИИ GNU 
 ОКРУЖЕНИЕ 
 СОВМЕСТИМОСТЬ 
 ПРИМЕР ИСПОЛЬЗОВАНИЯ 
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