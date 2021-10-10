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
 
 
 
 vdir (1)   vdir  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня ) >>  vdir  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   vdir  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня ) 
   
 ИМЯ 

ls, dir, vdir - выводит содержимое каталога
   
 ОБЗОР 

 ls [ опции ] [ файл... ] 

 

 dir [ файл... ] 

 

 vdir [ файл... ] 

 
Опции POSIX:
 [-CFRacdilqrtu1] [--] 

 
Опции GNU (краткая форма):
 [-1abcdfghiklmnopqrstuvwxABCDFGHLNQRSUX] 

 [-w  cols ] 

 [-T  cols ] 

 [-I  шаблон ] 

 [--full-time] 

 [--show-control-chars] 

 [--block-size= размер ] 

 [--format={long,verbose,commas,across,vertical,single-column}] 

 [--sort={none,time,size,extension}] 

 [--time={atime,access,use,ctime,status}] 

 [--color[={none,auto,always}]] 

 [--help] [--version] [--] 

   
 ОПИСАНИЕ 

Программа
 ls 

сначала выводит список всех 
 файлов 

(не каталогов), перечисленных в командной строке, а затем выводит
список всех файлов, находящихся в каталогах, перечисленных в командной
строке.  Если не указано ни одного файла, то по умолчанию аргументом
назначается `.' (текущий каталог).  Опция -d заставляет
 ls 

не считать аргументы-каталоги каталогами.  Будут отображаться только
файлы, которые не начинаются с `.' или все файлы, если задана опция
-a.
 

Каждый список файлов (для файлов, которые не являются каталогами и
для каждого каталога, содержащего список файлов) сортируется отдельно
в алфавитной последовательности текущих региональных настроек (locale).
Когда указана опция -l, то перед каждым списком выводится итоговая
строка с общим размером всех файлов в списке, который измеряется в
полу-килобайтах (512 байт).
 

Результаты печатаются на стандартный вывод, по одному файлу на строку,
если с помощью опции -C не задан многоколоночный вывод.
Однако при выводе на терминал не определено, будет ли вывод осуществляться
в одну колонку или в несколько.  Для задания одноколоночного или
многоколоночного режима вывода могут использоваться опции -1 и -C,
соответственно.
   
 ОПЦИИ POSIX 

 
 -C 

 
Напечатать список файлов в колонках с вертикальной сортировкой.
 -F 

 
Для каждого имени каталога добавлять суффикс `/', для каждого имени FIFO - `|'
и для каждого имени исполняемого файла `*'.
 -R 

 
Включить рекурсивную выдачу списка каталогов.
 -a 

 
Включать в список файлы с именем, начинающимся с `.'.
 -c 

 
Использовать при сортировке (при задании опции -t или -l) время изменения
состояния файла вместо времени последней модификации файла.
 -d 

 
Выдавать имена каталогов, как будто они обычные файлы, вместо того,
чтобы показывать их содержимое.
 -i 

 
Предварять вывод для каждого файла его серийным номером (номером inode).
 -l 

 
Выдавать (в одноколоночном формате) тип файла, права доступа к файлу,
количество ссылок на файл, имя владельца, имя группы, размер файла (в байтах),
временной штамп и имя файла.
 
Типы файлов могут принимать следующие значения:
 - 

для обычного файла,
 d 

для каталога,
 b 

для блочного устройства,
 c 

для символьного устройства,
 l 

для символической ссылки,
 p 

для FIFO и
 s 

для гнезда (socket).
 
По умолчанию, временной штамп является временем последней модификации;
опции -c и -u позволяют выбрать два других временных штампа.
Для файлов устройств, поле размера обычно заменяется на старший и
младший номера устройства.
 -q 

 
Вместо непечатаемых символов в имени файла при выводе будут ставиться
знаки вопроса. (Эта опция включена по умолчанию при выводе на терминал.)
 -r 

 
Производить сортировку в обратном порядке.
 -t 

 
Сортировать по показываемому временному штампу.
 -u 

 
Использовать при сортировке (опция -t) или перечислении (опция -l)
время последнего доступа к файлу вместо времени последней модификации
файла.
 -1 

 
Выдавать в одноколоночном формате.
 -- 

 
Завершает список опций.
 
   
 ПОДРОБНОСТИ ВЕРСИИ GNU 

Если стандартный вывод является терминалом, то вывод производится в
многоколоночном формате (с вертикальной сортировкой).
 

Программа
 dir 

(также установленная под именем
 d )

является эквивалентом `ls -C -b'; таким образом, файлы по умолчанию
выдаются в многоколоночном формате (с вертикальной сортировкой).
Программа
 vdir 

(также установленная под именем
 v )

эквивалентна `ls -l -b'; таким образом, файлы по умолчанию выдаются
в длинном формате.
   
 ОПЦИИ GNU 

 
 -1, --format=single-column 

 
Выдавать один файл на строку. Эта опция включается по умолчанию, если
стандартный вывод не является терминалом.
 -a, --all 

 
Выдавать все файлы в каталогах, включая все файлы, начинающиеся с `.'.
 -b, --escape, --quoting-style=escape 

 
Заменять неграфические символы в именах файлов, используя
алфавитно-цифровые последовательности, а также последовательности вида
\
000' с восьмеричными цифрами, как в языке C. Данная опция аналогична
 -Q ,

за исключением того, что имена файлов не заключаются в двойные кавычки.
 -c, --time=ctime, --time=status 

 
Сортировать содержимое каталога в соответствии с временем изменения
состояния файла (поле `ctime' в inode). Если с помощью опции
 -l  

задан длинный формат, то выдавать время изменения состояния файла
вместо времени его модификации.
 -d, --directory 

 
Выдавать имена каталогов, как будто они обычные файлы, вместо того,
чтобы показывать их содержимое.
 -f 

 
Не сортировать содержимое каталога; выдавать файлы в том порядке, в
котором они записаны на диск.
Эта опция также разрешает
 -a 

и
 -U 

и запрещает
 -l ,

 --color ,

 -s ,

и
 -t ,

если они были заданы перед
 -f .

 -g 

 
Игнорируется; нужна для совместимости с Unix.
 -h, --human-readable 

 
Добавлять к каждому размеру файла букву размера, например,
 M 

для двоичных мегабайт (`мебибайт').
(Новое в fileutils-4.0.)
 -i, --inode 

 
Выдавать номер inode (также называемый серийным номером файла и
номером индекса) каждого файла, слева от его имени. (Этот номер
однозначно идентифицирует каждый файл в каждой файловой системе)
 -k, --kilobytes 

 
Если выдаются размеры файлов, то выдавать их в килобайтах.
 -l, --format=long, --format=verbose 

 
В дополнении к имени каждого файла, выводятся тип файла, права доступа
к файлу, количество ссылок на файл, имя владельца, имя группы, размер
файла в байтах и временной штамп (время последней модификации файла,
если не задано другое). Для файлов с временем больше чем 6 месяцев
назад или больше, чем 1 час в будущее, временной штамп содержит
год вместо времени дня.
 
Каждый каталог со списком содержимого предваряется строкой
`total
 blocks ',

где
 blocks  --

это общее дисковое пространство, используемое всеми файлами в данном
каталоге.  По умолчанию, размер блока составляет 1024 байта; если
установлена переменная окружения
 POSIXLY_CORRECT , 

то используется размер блока 512 байт (если не задана опция
 -k  

).  blocks 

считает каждую жесткую ссылку отдельно; задать по другому через аргументы
невозможно.
 
Права доступа отображаются в практически обычном символьном виде, но
 ls 

комбинирует несколько битов в третий символ каждого набора прав доступа:
 
 
 s 

 
Если setuid или setgid бит установлены вместе с соответствующим битом
прав на выполнение.
 S 

 
Если setuid или setgid бит установлены, но соответствующий бит прав
на выполнение не установлен.
 t 

 
Если sticky-бит установлен вместе с битом прав на выполнение остальными.
 T 

 
Если sticky-бит установлен, но бит прав на выполнение остальными нет.
 x 

 
Если бит прав на выполнение установлен, и не выполняется ни одно из
вышеуказанных условий.
 - 

 
Во всех остальных случаях.
 
 

 -m, --format=commas 

 
Выдавать список файлов в строчку с максимально возможным количеством
имен файлов на строку, разделяя имена запятой и пробелом.
 -n, --numeric-uid-gid 

 
Выдавать числовые UID и GID вместо имен владельца и группы.
 -o 

 
Применять длинный формат, но не показывать информацию о группе.
Данная опция эквивалентна
 --format=long --no-group .

Данная опция предоставляется для совместимости с другими версиями
 ls .

 -p, --file-type, --indicator-style=file-type 

 
Добавлять символ, показывающий тип файла, к каждому имени файла. Данная
опция похожа на
 -F ,

за исключением того, что исполняемые файлы не помечаются.
(Фактически в fileutils-4.0 опция --file-type эквивалентна --classify.)
 -q, --hide-control-chars 

 
Выдавать знаки вопроса вместо неграфических символов в имени файла.
Эта опция включена по умолчанию.
 -r, --reverse 

 
Сортировать содержимое каталога в обратном порядке.
 -s, --size 

 
Выдавать размер каждого файла в блоках по 1024 байта слева от имени файла.
Если установлена переменная окружения
 POSIXLY_CORRECT ,

то применяется размер блока 512, если не задана опция 
 -k . 

 -t, --sort=time 

 
Сортировать по времени последней модификации (поле `mtime' в inode)
вместо того, чтобы производить сортировку по алфавиту. Самые свежие
файлы будут отображаться первыми.
 -u, --time=atime, --time=access, --time=use 

 
Сортировать по времени последнего доступа к файлу, вместо времени
последней модификации (поле `atime' в inode). Если задан длинный
формат вывода, выдавать время последнего доступа вместо времени
последней модификации.
 -v 

 
Производить сортировку в соответствии с номером версии файлов.  При
этом учитывается, что имена файлов часто содержат номера версий или
порядковые номера.  Стандартные
функции сортировки обычно не обеспечивают сортировку, которую мог бы
ожидать человек, так как сортировка производится на основе посимвольного
сравнения. Сортировка по версиям решает эту проблему и особенно полезна,
когда производится просмотр каталогов, содержащих много файлов, у
которых в имени есть номер версии. Например:
 
      > ls -1            > ls -1v
     foo.zml-1.gz       foo.zml-1.gz
     foo.zml-100.gz     foo.zml-12.gz
     foo.zml-12.gz      foo.zml-25.gz
     foo.zml-25.gz      foo.zml-100.gz
 

 
Заметим, что цифровые части с лидирующими нулями определяются как
более маленькие:
 
      > ls -1            > ls -1v
     abc-1.007.tgz      abc-1.007.tgz
     abc-1.012b.tgz     abc-1.01a.tgz
     abc-1.01a.tgz      abc-1.012b.tgz
 

 
(Новое в fileutils-4.0.)
 -w, --width  cols 

 
Назначает вывод на экран в
 cols 

колонок. По умолчанию, если это возможно, данное значение узнается от драйвера
терминала; в противном случае используется значение переменной окружения
 COLUMNS ,

если она установлена; в противном случае, по умолчанию, устанавливается 80.
 -x, --format=across, --format=horizontal 

 
Выдавать список файлов в многоколоночном режиме, с сортировкой по
горизонтали. 
 -A, --almost-all 

 
Выдавать все файлы, кроме `.' и `..'.
 -B, --ignore-backups 

 
Не показывать файлы, которые заканчиваются на `~', если они не заданы в
командной строке.
 -C, --format=vertical 

 
Выдавать файлы в многоколоночном режиме, с сортировкой по вертикали.
Опция устанавливается по умолчанию, если стандартный вывод является
терминалом. Данная опция всегда устанавливается по умолчанию для программ
 dir  и  d .

 -D, --dired 

 
При длинном формате
( -l ) , 

после основного вывода, выдавать дополнительную строку вида:
 

 //DIRED// 

 BEG1 END1 BEG2 END2 ... 

 

 
Здесь
 BEGn  и  ENDn  --

это целые беззнаковые числа, которые для каждой записи показывают
байтовую позицию начала и конца каждого имени файла. Таким образом,
Emacs может легко найти имена, даже когда они содержат необычные
символы, такие как пробелы или символы новой строки.
 
Если каталоги отображаются рекурсивно
( -R ),

то похожая строка выводится после каждого подкаталога:
 

 //SUBDIRED// 

 BEG1 END1 ... 

 -F, --classify, --indicator-style=classify 

 
Добавлять к каждому имени файла символ, показывающий его тип.  Для
обычных исполняемых файлов это `*'.  Для каталога добавляется `/', для
FIFO - `|', для символических ссылок `@', для гнезд `=', для обычных
файлов ничего не добавляется.
 -G, --no-group 

 
Не отображать информацию о группе в длинном формате вывода.
 -H, --si 

 
Делает то же, что и опция
 -h ,

но использует официальные единицы измерения SI (где для расчетов
используется 1000 вместо 1024 и, таким образом, M -- это 1000000 вместо
10485576).
(Новое в fileutils-4.0.)
 -I, --ignore= шаблон 

 
Не показывать файлы, имена которых совпадают с заданным
 шаблоном 

(шаблон - это не регулярное выражение), если только они не заданы в
командной строке. Как и в shell, начальная `.' в имени файла не
совпадает с символом `*', заданным в начале
 шаблона .

Чтобы спрятать ваши каталоги, вы можете просто
добавить LS_OPTIONS="$LS_OPTIONS -I mystuff" в /etc/profile.
 -L, --dereference 

 
Выдавать информацию о файлах, на которые указывают символические ссылки,
вместо информации о самих символических ссылках.
 -N, --literal 

 
Не заключать в кавычки имена файлов.
 -Q, --quote-name, --quoting-style=c 

 
Заключать имена файлов в двойные кавычки и показывать неграфические
символы как в языке С.
 -R, --recursive 

 
Рекурсивно выдавать список содержимого всех каталогов.
 -S, --sort=size 

 
Производить сортировку по размеру файла, вместо сортировки по алфавиту.
Таким образом, наибольшие файлы будут показаны сначала.
 -T, --tabsize  cols 

 
Назначить ширину табуляции в
 cols 

колонок. По умолчанию 8, может быть также задано с помощью переменной
окружения TABSIZE, если при этом не установлена переменная окружения
POSIXLY_CORRECT.
 ls 

использует табуляцию для выравнивания вывода, когда это возможно. Если
 cols  

равно нулю, то табуляция не используется.
 -U, --sort=none 

 
Не производить сортировку; список файлов будет выдаваться в том порядке,
в каком файлы записаны на диск. (отличие между опциями
 -U  и  -f 

состоит в том, что данная опция не запрещает и не разрешает другие опции).
Эта опция может быть особенно полезна, когда выдаются списки содержимого
очень больших каталогов, при этом сортировка не выполняется и весь процесс
происходит быстрее).
 -X, --sort=extension 

 
Производить сортировку в алфавитном порядке по расширениям файлов
(символы после последней `.'); файлы без расширений будут показаны
первыми.
 --block-size= size 

 
Выдает размеры в блоках по
 size 

байт.
(Новое в fileutils-4.0.)
 --color[= when ] 

 
Задает цвет для различения типов файлов.  Цвета задаются с использованием
переменной окружения 
 LS_COLORS .

Информацию о том, как нужно задавать значение этой переменной, можно
найти в странице руководства
 dircolors (1).

Параметр
 when 

может быть опущен или принимать одно из следующих значений:
 
 
 none 

 
Вообще не использовать цвет. Установлено по умолчанию.
 auto 

 
Использовать цвет, только если стандартный вывод является терминалом.
 always 

 
Всегда использовать цвет. Задание
 --color 

без параметра
 when 

эквивалентно
 --color=always .

 
 

 --full-time 

 
Выдавать время в полном, а не в стандартном сокращенном варианте.
Данный формат выглядит так же, как и в команде
 date (1)

по умолчанию; его невозможно изменить, но вы можете извлечь строку
с датой через команду
 cut (1)

и пропустить результат через `date -d'.
 
Это может быть очень полезно, потому что время в таком формате включает
секунды. (Файловые системы Unix записывают временной штамп файла с
округлением до секунды, так что данная опция показывает полную информацию
о временном штампе). Например, это может помочь, если вы разбираетесь, 
почему некий Makefile неправильно перегенерирует файлы.
 --quoting-style= word 

 
Используйте стиль
 word 

для выбора режима квотинга имен файлов. Стиль
 word 

может принимать следующие значения:
 
 
 literal 

 
Вывод имен файлов как есть. Это поведение
 ls 

по умолчанию.
 shell 

 
Заключает имена файлов в одиночные кавычки для shell, если они
содержат метасимволы или могут привести к неоднозначной выдаче.
 shell-always 

 
Заключает имена файлов в одиночные кавычки для shell, даже
если этого не требуется.
 c 

 
Заключает имена файлов в двойные кавычки, как в языке C; это
равносильно опции
 -Q .

 escape 

 
Как и для
 c ,

за исключением того, что имя не заключается в двойные кавычки;
эквивалентно опции
 -b. 


 
 

Значение по умолчанию для данной опции может быть задано в переменной
окружения QUOTING_STYLE.  (См. ниже главу
 ОКРУЖЕНИЕ ).

 

 --show-control-chars 

 
Выдавать неграфические символы в именах файлов как есть. Так задано
по умолчанию, если вывод осуществляется на терминал, а программа
называется
 ls .

 
   
 СТАНДАРТНЫЕ ОПЦИИ GNU 

 
 --help 

 
Выдать подсказку на стандартный вывод и успешно завершиться.
 --version 

 
Выдать информацию о версии на стандартный вывод и успешно завершиться.
 -- 

 
Служит для обозначения конца списка опций.
 
   
 ОКРУЖЕНИЕ 

Переменная POSIXLY_CORRECT определяет размер блока.
Переменная TABSIZE задает ширину табуляции, если не установлена
переменная POSIXLY_CORRECT.
Переменная COLUMNS (когда она содержит целое число) определяет ширину
вывода в колонках (для использования с опцией -C).
Имена файлов не должны обрезаться, чтобы уместить их в многоколоночном
выводе.
 

При работе обычным образом используются значения переменных LANG, LC_ALL, LC_CTYPE и
LC_MESSAGES.
Переменная TZ задает временную зону для временных меток, которые выдает
 ls .

Переменная LS_COLORS используется для задания цветов.
Переменная LS_OPTIONS хранит опции по умолчанию.

 

Переменная QUOTING_STYLE используется для задания значения по умолчанию
для опции
 --quoting-style .

Данная опция по умолчанию установлена в
 literal ,

но авторы предупреждают, что это умолчание может когда-нибудь в
следующей версии измениться на
 shell .

   
 ОШИБКИ РЕАЛИЗАЦИИ 

В BSD системах
 ls 

выдает размеры, которые являются наполовину меньше правильных, для
файлов, которые смонтированы по NFS из HP-UX систем. В HP-UX системах
 ls 

выдает размеры, которые в два раза больше правильных для файлов,
которые смонтированы по NFS из BSD систем. Это недостаток систем HP-UX;
он также есть и в программе 
 ls 

из HP-UX.
   
 СОВМЕСТИМОСТЬ 

POSIX 1003.2
   
 СМОТРИ ТАКЖЕ 

 dircolors (1)

   
 ЗАМЕЧАНИЯ 

Данная страница описывает версию
 ls 

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
 ПОДРОБНОСТИ ВЕРСИИ GNU 
 ОПЦИИ GNU 
 СТАНДАРТНЫЕ ОПЦИИ GNU 
 ОКРУЖЕНИЕ 
 ОШИБКИ РЕАЛИЗАЦИИ 
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