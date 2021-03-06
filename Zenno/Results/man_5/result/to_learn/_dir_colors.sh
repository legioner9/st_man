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
 
 
 
 dir_colors (5) >>  dir_colors  (5)   ( Русские man: Форматы файлов )   dir_colors  (5)   ( Linux man: Форматы файлов ) 
   
 ИМЯ 

dir_colors - файл конфигурации для утилиты  dircolors (1)
   
 ОПИСАНИЕ 

Программа
 ls (1)

использует переменную окружения
 LS_COLORS 

для определения цветов, которыми должны отображаться имена файлов.
Эта переменная окружения обычно устанавливается командой типа
 
 
eval `dircolors some_path/dir_colors`
 

 
Эта команда обычно находится в стандартном файле инициализации, типа
 /etc/profile 

или
 /etc/csh.cschrc 

(См. также
 dircolor (1).)

Обычно здесь используется файл
 /etc/DIR_COLORS ,

настройки в котором переопределяются файлом
 .dir_colors 

в домашнем каталоге пользователя.
 

Этот файл конфигурации состоит из нескольких операторов, по одному в
строке.  Все, что находится после символа "решетка" (#), считается
комментарием, если этот символ находится в начале строки или перед ним 
находится как минимум один пробел.  Пустые строки игнорируются.
 

 Глобальная 

секция файла состоит из всех операторов перед первым оператором
 TERM .

Операторы в глобальной секции файла действуют для всех типов
терминалов.  После глобальной секции находится одна или более
 Терминал-специфичных 

каждая из которых начинается с оператора
 TERM ,

который Задаёт тип терминала (тот же, что задан переменной окружения
 TERM ),

к которому применяются все последующие объявления. Для любого теминала,
глобальные настройки всегда можно перекрыть терминал-специфичными.
 

Распознаются нижеследующие операторы (регистр букв неважен):
 

 
 TERM  terminal-type 

 
Начинает секцию, специфичную для терминала, и указывает, к какому типу 
терминала она применима.  Можно использовать несколько операторов
 TERM ,

чтобы создать секцию, применимую к нескольким типам терминалов.
 COLOR yes|all|no|none|tty 

 
(Только для Slackware; игнорируется GNU
 dircolors (1).)

Указывает, что расцветка должна быть всегда разрешена ( yes  или
 all ); никогда не разрешена ( no  или  none ) или
разрешена, только если вывод происходит на терминальное устройство
( tty ).  По умолчанию --  no .
 EIGHTBIT yes|no 

 
(Только для Slackware; игнорируется GNU
 dircolors (1).)

Указывает, разрешены ли по умолчанию восьмибитные символы ISO 8859.
Из соображений совместимости можно также указывать 1 (означает
 yes ) или 0 (означает  no ).  По умолчанию --  no .
 OPTIONS  options 

 
(Только для Slackware; игнорируется GNU
 dircolors (1).)

Добавляет опцию командной строки к стандартной командной строке
 ls .

Здесь можно указать любую разрешенную опцию команды
 ls ,

причем нужно указать начальный знак минус.  Заметьте, что
 dircolors 

не проверяет, верны ли эти опции.
 NORMAL  color-sequence 

 
Задаёт цвет, используемый для нормального (не имя файла) текста.
 FILE  color-sequence 

 
Задаёт цвет, используемый для обычного файла.
 DIR  color-sequence 

 
Задаёт цвет, используемый для каталогов.
 LINK  color-sequence 

 
Задаёт цвет, используемый для символьных ссылок.
 ORPHAN  color-sequence 

 
Задаёт цвет, используемый для битой символьной ссылки (указывающей 
на несуществующий файл).  Если этот цвет не задан, то
 ls 

будет использовать вместо него цвет
 LINK .

 MISSING  color-sequence 

 
Задаёт цвет, используемый для пропавшего файла (несуществующего файла, 
на который указывает символьная ссылка).  Если этот цвет не задан, то
 ls 

будет использовать вместо него цвет
 FILE .

 FIFO  color-sequence 

 
Задаёт цвет, используемый для FIFO (именованного канала).
 SOCK  color-sequence 

 
Задаёт цвет, используемый для сокета.
 DOOR  color-sequence 

 
(Поддерживается, начиная с file-utils 4.1)
Задаёт цвет, используемый для файлов типа door (Solaris 2.5 и выше).
 BLK  color-sequence 

 
Задаёт цвет, используемый для специального файла блочного устройства.
 CHR  color-sequence 

 
Задаёт цвет, используемый для специального файла символьного
устройства.
 EXEC  color-sequence 

 
Задаёт цвет, используемый для файла с установленным атрибутом
выполнения.
 LEFTCODE  color-sequence 

 
Задаёт
 левый код 

для не-ISO 6429 терминалов (см. ниже).
 RIGHTCODE  color-sequence 

 
Задаёт
 правый код 

для не-ISO 6429 терминалов (см. ниже).
 ENDCODE  color-sequence 

 
Задаёт
 конечный код 

для не-ISO 6429 терминалов (см. ниже).
 * extension   color-sequence 
Задаёт цвет, используемый для файлов, чьи имена заканчиваются на
заданное расширение
 extension .

  . extension   color-sequence 
То же самое, что и  * . extension .  Задаёт цвет, используемый 
для файлов, чьи имена заканчиваются на . extension .  Заметьте,
что точка входит в состав расширения, и из-за этого невозможно указать 
расширение, не начинающееся с точки, например
 ~ 

для резервных копий редактора
 emacs .

Эта форма записи считается устаревшей.
 
   
 ЦВЕТОВЫЕ ПОСЛЕДОВАТЕЛЬНОСТИ ISO 6429 (ANSI) 

Большинство цветных ASCII-терминалов в настоящее время используют
цветовые последовательности ISO 6429 (ANSI), а многие распространенные 
терминалы, не поддерживающие цвет, включая
 xterm ,

а также широко используемый и клонируемый DEC VT100, распознают
цветовые коды ISO 6429 и без последствий удаляют их из выходного
потока или же эмулируют их.
 ls 

по умолчанию использует коды ISO 6429, если включена расцветка.
 
Цветовые последовательности ISO 6429 составлены из последовательности
чисел, разделенных точками с запятой.  Самые распространенные коды
таковы:
 
 


  0     восстановление цвета по умолчанию
 1     включить яркие цвета
 4     подчеркнутый текст
 5     мигающий текст
30     черный текст
31     красный текст
32     зеленый текст
33     желтый (или коричневый) текст
34     синий текст
35     фиолетовый текст
36     cyan текст
37     белый (или серый) текст
40     черный фон
41     красный фон
42     зеленый фон
43     желтый (или коричневый) фон
44     синий фон
45     фиолетовый фон
46     cyan фон
47     белый (или серый) фон
 

 

 
Не все команды будут работать на любой системе или устройстве
отображения.
 

 ls 

использует следующие значения по умолчанию:
 
 


 NORMAL    0       Нормальный текст (не имя файла)
 FILE      0       Обычный файл
 DIR       32      Каталог
 LINK      36      Символьная ссылка
 ORPHAN    неопределено       Сломанная символьная ссылка
 MISSING   неопределено       Потерявшийся файл
 FIFO      31      Именованный канал (FIFO)
 SOCK      33      Сокет
 BLK       44;37   Блочное устройство
 CHR       44;37   Символьное устройство
 EXEC      35      Исполняемый файл
 

 

 
Некоторые терминальные программы неправильно распознают установку
цвета по умолчанию.  Если весь текст становится расцвеченным после
того, как вы просматриваете листинг каталога, измените коды
 NORMAL 

и
 FILE 

на цифровые коды для нормального цвета текста и фона.
   
 ДРУГИЕ ТИПЫ ТЕРМИНАЛОВ (СЛОЖНЫЕ КОНФИГУРАЦИИ) 

Если у вас есть терминал (или принтер!) с поддержкой цвета (или
другими возможностями выделения), который использует другой набор
кодов, вы все равно сможете создать подходящие настройки.  Для этого
нужно использовать операторы 
 LEFTCODE ,

 RIGHTCODE 

и
 ENDCODE .

 

При выводе имени
 ls 

генерирует такую последовательность:
 LEFTCODE 

 typecode 

 RIGHTCODE 

 filename 

 ENDCODE ,

где
 typecode --

цветовая последовательность, зависящая от типа или имени файла.  Если 
 ENDCODE 

не определен, то вместо него будет использоваться последовательность
 LEFTCODE NORMAL RIGHTCODE .

Назначение левого (LEFTCODE) и правого (RIGHTCODE) кодов -- просто
уменьшить количество информации, которую нужно набирать (а также
спрятать уродливые escape-последовательности от пользователя).  Если
они не подходят для вашего терминала, их можно выключить, поместив
соответствующее ключевое слово на отдельной строке.
 

 ЗАМЕЧАНИЕ: 

Если
 ENDCODE 

определен в глобальной секции файла настроек, то его
 нельзя 

переопределить в секции, специфической для терминала.  Это означает,
что все определения
 NORMAL 

не приведут ни к какому результату.  Однако, можно использовать
различные 
 ENDCODE ,

что и приведет к нужному результату.
   
 ESCAPE ПОСЛЕДОВАТЕЛЬНОСТИ 

Для того, чтобы указать в цветовых последовательностях или расширениях 
имен файлов контрольные символы или пробелы, можно использовать либо
нотацию в стиле языка C, с помощью обратной косой черты, либо нотацию
в стиле программы
 stty ,

с помощью символа ^.  Нотация в стиле языка C включает в себя такие
символы:
 
 


 \a       Bell (ASCII 7)
 \b       Backspace (ASCII 8)
 \e       Escape (ASCII 27)
 \f       Form feed (ASCII 12)
 \n       Newline (ASCII 10)
 \r       Carriage Return (ASCII 13)
 \t       Tab (ASCII 9)
 \v       Vertical Tab (ASCII 11)
 \?       Delete (ASCII 127)
 \ nnn  Любой символ (восьмеричная запись)
 \x nnn         Любой символ (шестнадцатеричная запись)
 \_       Пробел
 \\      Обратная косая черта (\)
 \^       Caret (^)
 \#       Символ "диез" (#)
 

 

 
Заметьте, что escape-символы необходимы, чтобы использовать пробел,
обратную косую черту, "крышечку" или контрольные символы в любом месте
строки, а также символ "решетки" в качестве первого символа в строке.
   
 ЗАМЕЧАНИЯ 

По умолчанию
 LEFTCODE 

и
 RIGHTCODE ,

использующиеся в терминалах ISO 6429, заданы так:
 
 


 LEFTCODE   \e[
 RIGHTCODE  m
 

 

 
По умолчанию
 ENDCODE 

не определен.
   
 СМОТРИ ТАКЖЕ 

 dircolors (1),

 ls (1),

 stty (1),

 xterm (1)

   
 FILES 

 
 /etc/DIR_COLORS 

 
Общесистемный файл конфигурации.
 ~/.dir_colors 

 
Пользовательский файл конфигурации.
 
   
 ЗАМЕЧАНИЯ 

Эта страница описывает файл
 dir_colors ,

который можно найти в пакете fileutils-4.1 package;
другие версии могут немного отличаться.  
Исправления и дополнения присылайте по адресу  aeb@cwi.nl .
Отчеты об ошибках в этой программе присылайте по адресу
 fileutils-bugs@gnu.ai.mit.edu .
   
 ПЕРЕВОД 

Перевёл с английского Виктор Вислобоков < corochoone@perm.ru > 2004
 

 
   Index 
 
 ИМЯ 
 ОПИСАНИЕ 
 ЦВЕТОВЫЕ ПОСЛЕДОВАТЕЛЬНОСТИ ISO 6429 (ANSI) 
 ДРУГИЕ ТИПЫ ТЕРМИНАЛОВ (СЛОЖНЫЕ КОНФИГУРАЦИИ) 
 ESCAPE ПОСЛЕДОВАТЕЛЬНОСТИ 
 ЗАМЕЧАНИЯ 
 СМОТРИ ТАКЖЕ 
 FILES 
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