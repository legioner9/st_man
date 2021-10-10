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
 
 
 
 du (1)   du  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня )   du  (1)   ( FreeBSD man: Команды и прикладные программы пользовательского уровня ) >>  du  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   du  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня )   du  (1)   ( POSIX man: Команды и прикладные программы пользовательского уровня ) 
   
 ИМЯ 

du - оценка места на диске, занимаемого файлом
   
 ОБЗОР 

 du [ опции ] [ файл... ] 

 
Опции POSIX:
 [-askx] [--] 

 
Опции GNU (краткая форма):
 [-abcDhHklLmsSxX] 

 [--block-size= количество ] 

 [--exclude= шаблон ] 

 [--max-depth= n ] 

 [--help] [--version] [--] 

   
 ОПИСАНИЕ 

 du 

выдает отчет об использовании дискового пространства заданными файлами, а
также каждым каталогом иерархии подкаталогов каждого указанного
каталога.  Здесь под `использованным дисковым пространством'
понимается пространство, используемое для всей иерархии подкаталогов
указанного каталога.
 

Запущенная без аргументов, команда
 du 

выдает отчет о дисковом пространстве для текущего каталога.
   
 ПОДРОБНОСТИ POSIX ВЕРСИИ 

По умолчанию, размеры указываются в блоках по 512 байт, но если
задана опция -k, то размер блока принимается в 1024 байт.
   
 ПОДРОБНОСТИ ВЕРСИИ GNU 

Размеры указываются в блоках по 1024 байт (если размер не задан
посредством опций), за исключением случая, когда заданна переменная
окружения
 POSIXLY_CORRECT , 

В этом случае размер блока соответствует версии POSIX.
   
 ОПЦИИ POSIX 

 
 -a 

 
Показывать размеры для всех встретившихся файлов, а не только для
каталогов.
 -k 

 
Использовать размер блока 1024 байта, вместо размера по умолчанию
в 512 байт.
 -s 

 
Выводить размеры только для указанных явно аргументов, а не для
их подкаталогов.
 -x 

 
Подсчитывать размеры только для той файловой системы, где
расположен заданный аргумент. (Если в иерархии встретятся
каталоги, которые будут являться точками монтирования других
файловых систем, то их размеры учитываться не будут прим. перев.)
 -- 

 
Завершает список опций.
 
   
 ОПЦИИ GNU 

 
 -a, --all 

 
Показывать размеры для всех встретившихся файлов, а не только для
каталогов.
 -b, --bytes 

 
Выдавать размеры в байтах вместо килобайтов.
 --block-size= количество 

 
Выдавать размеры в блоках длиной
 количество 

байт.
(Новое в fileutils-4.0.)
 -c, --total 

 
Выдавать общий итог по всем аргументам после того, как все аргументы
будут обработаны. Это может быть использовано для выяснения суммарного
использованного дискового пространства для всего списка заданных
файлов и каталогов.
 -D, --dereference-args 

 
Раскрывать символьные ссылки, заданные в командной строке. 
Не оказывает влияния на остальные символьные ссылки.  Это полезно
для поиска использованного дискового пространства в таких каталогах,
как
 /usr/tmp ,

которые часто являются символьными ссылками.
 --exclude= шаблон 

 
При рекурсивном выполнении пропускать каталоги или файлы, чьи имена
совпадают с заданным
 шаблоном .

Этот
 шаблон 

может быть любым файловым шаблоном Bourne shell.
(Новое в fileutils-4.0.)
 -h, --human-readable 

 
Добавлять букву размера, например
 M 

для двоичного мегабайта (`мебибайт'), к каждому размеру.
 -H, --si 

 
Делает то же, что и опция
 -h ,

но использует официальные единицы измерения SI (где для расчетов
используется 1000 вместо 1024 и, таким образом, M - это 1000000 вместо
10485576).
(Новое в fileutils-4.0.)
 -k, --kilobytes 

 
Выдавать размеры в KiB (бинарных килобайтах, 1024 байта).
 -l, --count-links 

 
Подсчитывать размеры всех файлов, даже если они уже встречались
(например, при использовании жестких ссылок).
 -L, --dereference 

 
Раскрывать символьные ссылки (показывать дисковое пространство,
используемое файлом или каталогом, на которые указывает ссылка,
вместо пространства, используемого самой ссылкой).
 -m, --megabytes 

 
Выдавать размеры в MiB (бинарных мегабайтах, 1048576 байтов).
 --max-depth= n 

 
Выдавать общий итог для каталога (или файла, если задана опция
 -a 

), только если он находится не более чем на 
 n 

уровней глубины ниже заданного в командной строке аргумента;
 --max-depth= 0 

означает то же самое, что и опция
 -s . 

(Новое в fileutils-4.0.)
 -s, --summarize 

 
Выдавать только суммарный итог для каждого аргумента.
 -S, --separate-dirs 

 
Выдавать отдельно размер каждого каталога, не включая размеры
подкаталогов.
 -x, --one-file-system 

 
Пропускать каталоги, находящиеся не на той же файловой системе, что и
обрабатываемый аргумент командной строки.
 -X  файл,  --exclude-from= файл 

 
Выполняет те же действия, что и опция
 --exclude ,

за исключением того, что шаблоны берутся из указанного
 файла .

Шаблоны перечисляются по одному на строку. Если
 файл 

задан как `-', то шаблоны читаются из стандартного ввода.
(Новое в fileutils-4.0.)
 
   
 СТАНДАРТНЫЕ ОПЦИИ GNU 

 
 --help 

 
Выдать подсказку на стандартный вывод и успешно завершиться.
 --version 

 
Выдать информацию о версии на стандартный вывод и успешно завершиться.
 -- 

 
Служит для обозначения конца списка опций.
 
   
 ОШИБКИ В РЕАЛИЗАЦИИ 

В BSD системах
 du 

выдает размеры, которые являются наполовину меньше правильных, для
файлов, которые смонтированы по NFS из HP-UX систем. В HP-UX системах
 du 

выдает размеры, которые в два раза больше правильных для файлов,
которые смонтированы по NFS из BSD систем. Это недостаток систем HP-UX;
он также есть и в программе 
 du 

из HP-UX.
   
 ОКРУЖЕНИЕ 

Выбор размера блока определяет переменная POSIXLY_CORRECT.
Если она не установлена и переменная BLOCKSIZE имеет значение,
начинающееся со слова `HUMAN', то программа ведет себя как
при указании опции -h, если она не перекрывается опциями
-k и -m.
При работе обычным образом используются значения переменных LANG, LC_ALL, LC_CTYPE и
LC_MESSAGES.
   
 СОВМЕСТИМОСТЬ 

POSIX 1003.2
   
 ЗАМЕЧАНИЯ 

Данная страница описывает версию
 du 

пакета fileutils-4.0;
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
 ПОДРОБНОСТИ POSIX ВЕРСИИ 
 ПОДРОБНОСТИ ВЕРСИИ GNU 
 ОПЦИИ POSIX 
 ОПЦИИ GNU 
 СТАНДАРТНЫЕ ОПЦИИ GNU 
 ОШИБКИ В РЕАЛИЗАЦИИ 
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