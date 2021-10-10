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
 
 
 
 touch (1)   touch  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня )   touch  (1)   ( FreeBSD man: Команды и прикладные программы пользовательского уровня ) >>  touch  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   touch  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня )   touch  (1)   ( POSIX man: Команды и прикладные программы пользовательского уровня )   touch  (8)   ( Русские man: Команды системного администрирования ) Ключ  touch  обнаружен в базе ключевых слов. 
   
 ИМЯ 

touch - изменяет временные штампы файла
   
 ОБЗОР 

 touch 

 [-acm][-r  ref_file |-t  время ] [--] файл... 

 
Устаревшая версия:
 

 touch 

 [-acm][ ugly_time ]  файл... 

 
Версия GNU:
 

 touch 

 [-acfm] [-r  файл ] [-t  decimtime ] 

 [-d  time ] [--time={atime,access,use,mtime,modify}] 

 [--date= время ] [--reference= файл ] 

 [--no-create] [--help] [--version] [--]  файл... 

   
 ОПИСАНИЕ 

 touch 

изменяет время последнего доступа и/или время последней модификации
каждого заданного
 файла .

Эти временные штампы устанавливаются в текущее время; или, если задана
опция -r, то эти штампы устанавливаются в те же, что имеет файл
 ref_file ;

или, если задана опция -t, то эти штампы устанавливаются на заданное 
 время .

Оба штампа изменяются, если не задана ни одна из опций -a и -m
или если заданы они обе. Если задана только опция -a или только -m,
то изменяться будет, соответственно, только время последнего доступа
или время последней модификации. Если заданный файл еще не существует,
то он создается (как пустой файл с правами доступа 0666, с учетом
umask), если не задана опция -c. 
   
 ОПЦИИ POSIX 

 
 -a 

 
Изменить время последнего доступа к
 файлу .

 -c 

 
Не создавать
 файл .

 -m 

 
Изменять время последней модификации
 файла .

 -r  ref_file 

 
Использовать соответствующий временной штамп от файла
 ref_file 

в качестве нового значения для изменяемого временного штампа (или штампов).
 -t  время 

 
Использовать заданное время в качестве нового значения для изменяемого
временного штампа (или штампов).  Аргумент является десятичным числом
вида
 

     [[ВВ]ГГ]ММДДччмм[.СС]
 
 

с очевидными обозначениями (ВВ - век, ГГ - год, ММ - месяц, ДД - день,
чч - часы, мм - минуты, СС - секунды).  Если ВВ не задан, то год ВВГГ берется из
диапазона 1969-2068. Если СС не задано, то берется 0. Секунды могут
быть заданы в диапазоне 0-61, чтобы можно было указать високосную
секунду. Считается, что результирующее время соответствует часовому
поясу, заданному в переменной окружения TZ.  Если
в результате получилось время до 1 января 1970 года, то будет
выдана ошибка.
 [--] 

 
Завершает список опций.
 
   
 ДЕТАЛИ ВЕРСИИ POSIX 

Вторая форма вызова имеет неудачный синтаксис, который может вызвать
некоторую двусмысленность, так как непонятно, что именно задает аргумент 
 ugly_time :

время или файл.  Если не указаны опции -r и -t, и задано не менее двух 
аргументов, причем первый аргумент является восьми- или десятизначным
числом, то считается, что аргумент
 ugly_time 

задает время.  Формат
 ugly_time 

выглядит как ММДДччмм[гг], причем 
 гг 

в диапазоне 69-99, означает 1969-1999, а случай, когда
 гг 

не задан, означает текущий год. Данная форма вызова устарела.
   
 ДЕТАЛИ ВЕРСИИ GNU 

Если первый
 файл 

может быть правильным аргументом для опции
 -t ,

и временной штамп не задан с помощью опций 
 -d ,

 -r 

или
 -t ,

и не задан аргумент `--', то этот
 файл 

интерпретируется как временной штамп для других файлов, а не как имя 
файла.
 

Если задано изменение как времени последнего доступа, так и времени
последней модификации файла на текущее время, то
 touch 

может изменять эти временные штампы для файлов, которыми пользователь
не владеет, но в которые у него есть права на запись. 
Во всех других случаях, пользователь должен владеть этими файлами.
   
 ОПЦИИ GNU 

 
 -a, --time=atime, --time=access, --time=use 

 
Изменять только время последнего доступа.
 -c, --no-create 

 
Не создавать файлы, которые не существуют.
 -d, --date= время 

 
Использовать
 время 

вместо текущего времени.  Оно может содержать имена месяцев, часовые
пояса, `am' и `pm', и т.~д.
 -f 

 
Игнорируется; для совместимости с BSD версией
 touch (1).

 -m, --time=mtime, --time=modify 

 
Изменять только время последней модификации.
 -r  file , --reference= файл 

 
Использовать время указанного
 файла 

вместо текущего времени.
 -t  decimtime 

 
Здесь
 decimtime 

имеет формат ММДДччмм[[ВВ]ГГ][.сс]
Использовать аргумент (месяц, день, часы, минуты, необязательный век,
год, секунды) вместо текущего времени.
Заметим, что этот формат нарушает спецификацию POSIX.
 
   
 СТАНДАРТНЫЕ ОПЦИИ GNU 

 
 --help 

 
Выдать подсказку на стандартный вывод и успешно завершиться.
 --version 

 
Выдать информацию о версии на стандартный вывод и успешно завершиться.
 -- 

 
Служит для обозначения конца списка опций.
 
   
 ОКРУЖЕНИЕ 

Для интерпретации явно заданного времени используется переменная TZ.
При работе обычным образом используются значения переменных LANG, LC_ALL, LC_COLLATE,
LC_CTYPE и LC_MESSAGES.
   
 СОВМЕСТИМОСТЬ 

POSIX 1003.2 описывает синтаксис для аргумента опции -t, который
отличается от того, что используется в реализации GNU.
   
 ПРИМЕР ИСПОЛЬЗОВАНИЯ 

Команда
 touch foo 

создаст файл
 foo ,

если он не существует,
и изменит время последней модификации на текущее. Это очень часто
используется для управления действиями программы
 make .

   
 ЗАМЕЧАНИЯ 

Данная страница описывает версию
 touch 

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
 ДЕТАЛИ ВЕРСИИ POSIX 
 ДЕТАЛИ ВЕРСИИ GNU 
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