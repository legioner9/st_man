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
 
 
 
 df (1)   df  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня )   df  (1)   ( FreeBSD man: Команды и прикладные программы пользовательского уровня ) >>  df  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   df  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня )   df  (1)   ( POSIX man: Команды и прикладные программы пользовательского уровня ) 
   
 ИМЯ 

df - отчёт об использовании дискового пространства
   
 ОБЗОР 

 df [ опции ] [ файл... ] 

 
Опции POSIX:
 [-kP] [--] 

 
Опции GNU (краткая форма):
 [-ahHiklmPv] 

 [-t  тип-файловой-системы ] 

 [-x  тип-файловой-системы ] 

 [--block-size= размер ] 

 [--print-type] 

 [--no-sync] 

 [--sync] 

 [--help] [--version] [--] 

   
 ОПИСАНИЕ 

 df 

выдаёт отчёт о доступном и использованном дисковом пространстве на
файловых системах.
 

При запуске без аргументов
 df 

выдаёт отчёт по доступному и использованному пространству для всех
смонтированных
файловых систем (всех типов).
В противном случае,
 df 

для каждого
 файла ,

указанного в командной строке, выдаёт отчёт по файловой системе, которая
его содержит.
   
 ПОДРОБНОСТИ ВЕРСИИ POSIX 

По умолчанию все размеры выдаются в блоках по 512 байт, но если
задана опция -k, то используются блоки размером по 1024 байта.
Формат вывода не стандартизован, за исключением случая использования опции -P.
Если
 файл 

является не обычным файлом, а каталогом или FIFO, результат
не определён.
   
 ПОДРОБНОСТИ ВЕРСИИ GNU 

По умолчанию все размеры выдаются в блоках по 1024-байт,
(если размер блока не задан опцией) за исключением случая,
когда установлена переменная
 POSIXLY_CORRECT . 

В этом случае размер блока соответствует POSIX версии.
 

Если аргумент
 файл 

является дисковым файлом устройства, содержащим смонтированную
файловую систему, то
 df 

показывает доступное пространство на этой файловой системе, а
не на той, где содержится файл устройства.
   
 ОПЦИИ POSIX 

 
 -k 

 
Использовать размер блока в 1024 байта вместо размера по
умолчанию: 512 байт.
 -P 

 
Вывод осуществляется в шесть колонок, с заголовком `Filesystem
N-blocks Used Available Capacity Mounted on' (с размером
блока 512 байт, но при задании опции -k размер блока будет
1024 байта).
 -- 

 
Завершает список опций.
 
 
   
 ОПЦИИ GNU 

 
 -a, --all 

 
Включает в список файловых систем те, которые имеют размер в 0
блоков, и которые по умолчанию опускаются. Такие файловые системы
обычно являются псевдо-файловыми системами специального назначения,
например, для automounter.  Кроме того, только если задана эта
опция, будут показаны файловые системы типа "ignore" или "auto",
которые поддерживаются некоторыми операционными системами.
 --block-size= size 

 
Выдаёт размеры в блоках
 размера 

байт. (Новая возможность, но сломана в fileutils-4.0.)
 -h, --human-readable 

 
Добавляет к каждому размеру букву, например
 M 

для мегабайт (`мебибайт').
 -H, --si 

 
Делает то же, что и опция
 -h ,

но использует официальные SI единицы измерения (где для расчётов
используется 1000 вместо 1024 и, таким образом, M~-- это 1000000, а не
1048576).
(Новое в fileutils-4.0.)
 -i, --inodes 

 
Вместо информации о блоках выдаётся информация об использовании inode'ов
в файловой системе.  Inode содержит информацию о
файле: владелец, права доступа, временные штампы и
местоположение на диске.
 -k, --kilobytes 

 
При выводе устанавливает размер блока в 1024 байт.
 -l, --local 

 
Выводит только данные о локальных файловых системах.
(Новое в fileutils-4.0.)
 -m, --megabytes 

 
При выводе устанавливает размер блока в двоичный мегабайт (1048576 байт).
Заметим, что четыре опции -h, -H, -k, -m носят взаимоисключающий
характер и фактически будет работать только последняя, указанная в
командной строке;
например, если заданы одновременно опции --si и -m, то в результате
при выводе размер блока будет установлен в мегабайт (1048576 байт).
[На интерпретацию размеров блоков также должна оказывать влияние переменная
окружения BLOCK_SIZE, но она не учитывается в версии fileutils-4.0]
 --no-sync 

 
Не делать системный вызов
 sync 

перед получением данных об использовании дискового пространства.
При этом 
 df 

может запуститься значительно быстрее, но на некоторых файловых системах
(замечено в SunOS) результаты могут быть слегка устаревшими.  Этот флаг включён по
умолчанию.
 -P, --portability 

 
Использовать формат вывода по стандарту
 POSIX. 
Он такой же, как формат по умолчанию, только информация
о каждой файловой системе всегда выводится на одной строке;
имя смонтированного устройства никогда не помещается на отдельную
строку.  Это
приводит к тому, что если длина имени смонтированного устройства больше, чем
20 символов (например, для некоторых сетевых файловых систем), то
колонки не выравниваются.
 --sync 

 
Делать системный вызов
 sync 

перед получением данных об использовании дискового пространства.
На некоторых файловых системах (замечено в SunOS), выполнение
данного системного вызова даёт более достоверные результаты,
но зато с этим флагом выполнение
 df 

происходит значительно медленнее, особенно когда файловых систем много
или же они чрезвычайно активно используются.
 -t  тип-файловой-системы,  --type= тип-файловой-системы 

 
Показывать только файловые системы с указанным
 типом-файловой-системы .

Можно задать несколько типов файловых систем, если использовать
несколько опций
 -t .

По умолчанию никакие типы файловых системы не опускаются.
 -T, --print-type 

 
Выдавать тип для каждой файловой системы. Тип берётся от операционной
системы (и определяется системно-зависимым способом, например посредством
чтения файла
 /etc/mtab ).

Смотри также
 mount (8).

 -x  тип-файловой-системы,  --exclude-type= тип-файловой-системы 

 
Не показывать файловые системы с заданным
 типом-файловой-системы .

Можно задать несколько типов файловых систем, если использовать
несколько опций
 -x . 

По умолчанию никакие типы файловых систем не опускаются.
 -v 

 
Игнорируется для совместимости с версией
 df 

из System V.
 
   
 СТАНДАРТНЫЕ ОПЦИИ GNU 

 
 --help 

 
Выдать подсказку на стандартный вывод и успешно завершиться.
 --version 

 
Выдать информацию о версии на стандартный вывод и успешно завершиться.
 -- 

 
Служит для обозначения конца списка опций.
 
   
 ОКРУЖЕНИЕ 

Переменная POSIXLY_CORRECT влияет на выбор размера блока.
Если она не установлена и переменная BLOCKSIZE имеет значение,
начинающееся со слова `HUMAN', то программа ведёт себя как
при указании опции -h, если при этом не указаны опции
-k и -m.
Значения переменных LANG, LC_ALL, LC_CTYPE и LC_MESSAGES используются
обычным образом.
   
 СОВМЕСТИМОСТЬ 

POSIX 1003.2
   
 СМОТРИ ТАКЖЕ 

 mount (8)

   
 ЗАМЕЧАНИЯ 

Данная страница описывает версию
 df 

пакета fileutils-4.0;
другие версии могут иметь небольшие отличия.
Исправления и дополнения присылайте по адресу  aeb@cwi.nl .
Сообщения об ошибках в этой программе присылайте по адресу
 fileutils-bugs@gnu.ai.mit.edu .
   
 ПЕРЕВОД 

Перевёл с английского Виктор Вислобоков < corochoone@perm.ru > 2003
 

 
   Index 
 
 ИМЯ 
 ОБЗОР 
 ОПИСАНИЕ 
 ПОДРОБНОСТИ ВЕРСИИ POSIX 
 ПОДРОБНОСТИ ВЕРСИИ GNU 
 ОПЦИИ POSIX 
 ОПЦИИ GNU 
 СТАНДАРТНЫЕ ОПЦИИ GNU 
 ОКРУЖЕНИЕ 
 СОВМЕСТИМОСТЬ 
 СМОТРИ ТАКЖЕ 
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