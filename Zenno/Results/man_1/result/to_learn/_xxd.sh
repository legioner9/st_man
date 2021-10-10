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
 
 
 
 xxd (1)   xxd  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня ) >>  xxd  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   xxd  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня ) 


   
 ИМЯ 

 xxd 

- создаёт представление файла в виде шестнадцатеричных кодов или выполняет
обратное преобразование.
   
 КОМАНДНАЯ СТРОКА 

 xxd 

-h[elp]
 

 xxd 

[ключи] [входной_файл [выходной_файл]]
 

 xxd 

-r[evert] [ключи] [входной_файл [выходной_файл]]
   
 ОПИСАНИЕ 

 xxd 

создаёт представление указанного файла или данных, прочитанных из потока
стандартного ввода, в виде шестнадцатеричных кодов. Эта команда также может
выполнить обратное преобразование заданных шестнадцатеричными кодами данных
в исходный бинарный формат.
Подобно командам
 uuencode (1) 

и
 uudecode (1), 

она позволяет выполнять преобразование бинарных данных в ASCII-код, 
который можно передавать по электронной почте, однако, помимо этого, программа
xxd позволяет выполнять декодирование в поток стандартного вывода,
а также может применяться для создания заплаток для бинарных файлов.
   
 КЛЮЧИ ЗАПУСКА 

Если
 входной_файл 

не задан, то соответствующие данные читаются из потока стандартного ввода.
В случае, если в качестве
 входного_файла 

используется символ
` - ',

источником данных также выступает поток стандартного ввода.
В том случае, если не указан
 выходной_файл 

(или вместо него используется символ
` - '

), результат преобразования направляется в поток стандартного вывода.
 

Обратите внимание, что используется "ленивый" алгоритм разбора ключей, который не
проверяет более одной буквы ключа, если в этом ключе не используется параметр.
Пробелы между единственным символом ключа и соответствующим параметром не являются
обязательными. Параметры ключей могут быть заданы с использованием десятичного,
шестнадцатеричного или восьмеричного формата.
Таким образом, ключи
 -c8 ,

 -c 8 ,

 -c 010 

и
 -cols 8 

являются равнозначными.
 

 
 -a  |  -autoskip 

 
Включает автоматический пропуск: вместо последовательности
нулевых строк используется одиночный символ '*'. По умолчанию
не применяется.
 -b  |  -bits 

 
Вместо шестнадцатеричного кода используются биты (двоичные цифры).
При использовании этого ключа вместо обычного шестнадцатеричного представления
октетов используются наборы из восьми символов "1" и "0". Каждая строка
предваряется номером строки в шестнадцатеричном виде, а завершается символьным 
представлением (в виде ascii или ebcdic). Ключи -r, -p, -i в этом режиме
не работают.
 -c кол  |  -cols кол 

 
Задаёт количество октетов
< кол >,

которое выводится на каждой строке. По умолчанию используется значение 16 
(-i: 12, -ps: 30, -b: 6). 
Максимально допустимое значение: 256.
 -E  |  -EBCDIC 

 
Изменяет способ кодирования символов в правой колонке с ASCII на EBCDIC. Этот ключ
не изменяет шестнадцатеричное представление. Данный ключ не имеет смысла,
если используются ключи -r, -p или -i.
 -g байт  |  -groupsize байт 

 
Позволяет выполнять группировку указанного количества
< байтов >

(две шестнадцатеричные цифры или восемь битов), отделяя группы друг от друга пробелами.
Значение
 -g 0  

применяется для отказа от использования группировки.
По умолчанию используется значение
< байт > равное  2 

в обычном режиме и  1  в битовом режиме. Группировка не применяется
в режимах postscript и include.
 -h  |  -help 

 
Выводит справку по доступным ключам командной строки и завершает работу программы.
Создание шестнадцатеричного представления не выполняется.
 -i  |  -include 

 
Позволяет создавать вывод в стиле подключаемых заголовочных файлов языка C.
Вывод содержит полноценное определение статического массива данных, имя которого
соответствует имени входного файла, если xxd не считывает данные из потока стандартного
ввода.
 -l длина  |  -len длина 

 
Завершает работу после записи заданного в параметре
< длина >

количества октетов.
 -p  |  -ps  |  -postscript  |  -plain 

 
Использует непрерывный формат вывода шестнадцатеричного кода, 
известный как "простой" стиль или стиль "postscript".
 -r  |  -revert 

 
Изменяет смысл операции на противоположный: позволяет выполнять преобразование 
шестнадцатеричного представления в бинарный код (или применять результат в качестве заплаты).
Если вывод происходит не в поток стандартного вывода, то xxd выполняет добавление кода 
к соответствующему файлу. При использовании комбинации ключей
 -r -p 

происходит чтение "простого" шестнадцатеричного представления без использования
информации о номерах строк и какого-либо специального раскроя колонок. Пробелы 
и символы новой строки могут встречаться в любом месте исходных данных.
 -seek смещение 

 
При использовании после ключа
 -r 

: добавлять указанное
< смещение >

к файловым позициям, обнаруженным в исходных данных.
 -s [+][-]seek 

 
Начинает работу с указанного абсолютного (или относительного)
< смещения >

в байтах во входном_файле.
 +  указывает, что смещение является относительным по отношению
к текущей файловой позиции в потоке стандартного ввода (бессмысленно, если чтение
происходит не из потока стандартного ввода).  -  указывает, что должно быть прочитано
указанное количество символов от конца ввода (либо, если сочетается с   +  : 
перед текущей позиции файла в потоке стандартного ввода).
Если ключ -s не используется, то xxd начинает работу от текущей позиции в файле.
 -u 

 
Использует шестнадцатеричные цифры в верхнем регистре. По умолчанию используются цифры в
нижнем регистре символов.
 -v  |  -version 

 
Отображает информацию о версии программы.
 
   
 ПОДВОДНЫЕ КАМНИ 

 

 xxd -r 

обладает встроенным интеллектом для распознавания информации о номерах строк.
Если возможен поиск по входному файлу, то номера строк в начале каждой строки
шестнадцатеричного представления могут быть неупорядоченными, некоторые строки могут
быть пропущены или пересекаться друг с другом. В этих случаях xxd использует
 lseek (2) для перехода к следующей позиции. Если поиск по входному файлу 
невозможен, то допустимы только пропуски строк, которые заполняются нулевыми 
байтами.
 

 xxd -r 

никогда не выводит сообщений об ошибках. Мусор пропускается молча.
 

При редактировании шестнадцатеричных представлений бинарных файлов обращайте 
внимание, что 
 xxd -r 

пропускает в строке ввода любые данные после прочтения достаточного количества 
колонок шестнадцатеричных данных (см. ключ -c). Это означает, что изменения,
внесенные в колонки с печатными символами ascii (или ebcdic), всегда игнорируются.
При обратном преобразовании шестнадцатеричного представления в стиле
postscript с помощью команды xxd -r -p количество колонок не учитывается. 
В этом случае распознаются все символы, которые похожи на пары шестнадцатеричных цифр.
 

Обратите внимание на различие между командами
 

 % xxd -i файл 
 

и
 

 % xxd -i < файл 
 

Команда
 xxd -s +seek 

может отличаться от
 xxd -s seek, 

поскольку для того, чтобы "отмотать" данные на входе назад, используется вызов  lseek (2).
При использовании `+' поведение будет отличаться, если входные данные
поступают с потока стандартного ввода, а позиция в файле стандартного ввода не находится
в начале файла к тому моменту, когда программа xxd запущена и приступает к чтению ввода.
Нижеследующие примеры помогут прояснить (или ещё больше запутать!) ситуацию...
 

Отмотка назад потока стандартного ввода; необходимо, поскольку 'cat' уже выполнила
чтение до конца потока стандартного ввода:
 

 % sh -c 'cat > plain_copy; xxd -s 0 > hex_copy' < file
 

Вывод шестнадцатеричного представления от позиции в файле 0x480 
(= 1024+128).
Символ `+' означает "относительно текущей позиции", таким образом `128' добавляется
к первому килобайту, где завершает работу dd:
 

% sh -c 'dd of=plain_snippet bs=1k count=1; xxd -s +128 > hex_snippet' < file
 

Вывод шестнадцатеричного представления от позиции в файле 0x100 
(= 1024-768):
 

% sh -c 'dd of=plain_snippet bs=1k count=1; xxd -s +-768 > hex_snippet' < file
 

В то же время, следует заметить, что подобные ситуации встречаются довольно редко,
так что символ `+' обычно не используется. Автор предпочитает наблюдать за работой 
xxd с помощью  strace (1) или  truss (1) в тех случаях, когда применяется ключ
-s.
   
 ПРИМЕРЫ 

 

 

Вывести всё, кроме первых трёх строк (0x30 байтов) файла
 file 

:
 

 % xxd -s 0x30 file
 

 

Вывести три строки (0x30 байтов) от конца файла
 file 

:
 

 % xxd -s -0x30 file
 

 

Вывести 120 байтов в виде непрерывного шестнадцатеричного представления
по 20 октетов в строке:
 

% xxd -l 120 -ps -c 20 xxd.1 
 

2e544820585844203120224d616e75616c207061
 

676520666f7220787864220a2e5c220a2e5c2220
 

32317374204d617920313939360a2e5c22204d61
 

6e207061676520617574686f723a0a2e5c222020
 

2020546f6e79204e7567656e74203c746f6e7940
 

7363746e7567656e2e7070702e67752e6564752e
 

 

 

Вывести первые 120 байтов этой страницы справочника по 12 октетов в строке:
 

 % xxd -l 120 -c 12 xxd.1 
 

0000000: 2e54 4820 5858 4420 3120 224d  .TH XXD 1 "M
 

000000c: 616e 7561 6c20 7061 6765 2066  anual page f
 

0000018: 6f72 2078 7864 220a 2e5c 220a  or xxd"..\".
 

0000024: 2e5c 2220 3231 7374 204d 6179  .\" 21st May
 

0000030: 2031 3939 360a 2e5c 2220 4d61   1996..\" Ma
 

000003c: 6e20 7061 6765 2061 7574 686f  n page autho
 

0000048: 723a 0a2e 5c22 2020 2020 546f  r:..\"    To
 

0000054: 6e79 204e 7567 656e 7420 3c74  ny Nugent <t
 

0000060: 6f6e 7940 7363 746e 7567 656e   ony@sctnugen 
 

000006c: 2e70 7070 2e67 752e 6564 752e  .ppp.gu.edu.
 

 

Показать дату из файла xxd.1:
 

 % xxd -s 0x28 -l 12 -c 12 xxd.1 
 

0000028: 3231 7374 204d 6179 2031 3939  21st May 199
 

 

Скопировать
 входной_файл 

в
 выходной_файл 

с добавлением 100 байтов со значением 0x00 в начало файла:
 

 % xxd входной_файл | xxd -r -s 100 > выходной_файл 
 

 

 

Заменить дату в файле xxd.1:
 

 % echo '0000029: 3574 68' | xxd -r - xxd.1 
 

 % xxd -s 0x28 -l 12 -c 12 xxd.1 
 

0000028: 3235 7468 204d 6179 2031 3939  25th May 199
 

 

Создать 65537-байтный файл, все байты которого имеют значение
0x00, кроме последнего байта, который должен иметь значение 'A'
(0x41):
 

 % echo '010000: 41' | xxd -r > file 
 

 

Создать шестнадцатеричное представление этого файла с 
использованием автоматического пропуска:
 

 % xxd -a -c 12 file 
 

0000000: 0000 0000 0000 0000 0000 0000  ............
 

*
 

000fffc: 0000 0000 40                   ....A
 

Создать 1-байтный файл, содержащий символ 'A'.
Число после '-r -s' добавляется к номерам строк, найденным в файле;
иначе говоря, предшествующие байты пропускаются:
 

 % echo '010000: 41' | xxd -r -s -0x10000 > file 
 

xxd можно использовать в качестве фильтра в редакторе, например в 
 vim (1), 

чтобы создать шестнадцатеричное представление области между
отметками `a' и `z':
 

 :'a,'z!xxd 
 

Вы можете использовать xxd в качестве фильтра в редакторе, например в 
 vim (1), 

для восстановления данных из шестнадцатеричного представления
между отметками `a' и `z':
 

 :'a,'z!xxd -r 
 

Вы можете использовать xxd в качестве фильтра в редакторе, например в
 vim (1), 

для восстановления данных из единственной строки
шестнадцатеричного представления. Поместите курсор в соответствующую строку
и наберите
 

 !!xxd -r 
 

Чтобы прочитать единственный символ из канала связи:
 

 % xxd -c1 < /dev/term/b & 
 

 % stty < /dev/term/b -echo -opost -isig -icanon min 1 
 

 % echo -n foo > /dev/term/b 
 

   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Программа xxd завершает работу со следующими значениями:
 
 0 
Ошибки не обнаружены.
 -1 
Операция не поддерживается (выполнение
 xxd -r -i 

пока невозможно).
 1 
Ошибка при разборе ключей командной строки.
 2 
Проблемы во входном файле.
 3 
Проблемы в выходном файле.
 4,5 
Желательная позиция поиска недостижима.
 
   
 СМОТРИ ТАКЖЕ 

 uuencode (1),  uudecode (1),  patch (1)
 

   
 ПРЕДУПРЕЖДЕНИЕ 

Странность этой программы соответствует особенностям мозга её создателя.
Используйте её на свой страх и риск. Копируйте файлы, отслеживайте
вызовы, становитесь волшебником.
 

   
 ВЕРСИЯ 

Эта страница справочника документирует xxd версии 1.7.
   
 АВТОР 

 

(c) 1990-1997 Юрген Вайгерт (Juergen Weigert)
 

< jnweiger@informatik.uni-erlangen.de >
 

Вы можете свободно распространять программу со ссылкой на меня.
 

Если использование этой программы принесло вам какой-то доход,
поделитесь со мной.
 

Если вы потеряли деньги, то я тут не причём.
 

Первый вариант страницы справочника написан Тони Наджентом (Tony Nugent)
 

< tony@sctnugen.ppp.gu.edu.au > < T.Nugent@sct.gu.edu.au >
 

Небольшие изменения внесены Брамом Мооленааром (Bram Moolenaar).
Страница отредактирована Юргеном Вайгертом (Juergen Weigert).
 

 

 
   Index 
 
 ИМЯ 
 КОМАНДНАЯ СТРОКА 
 ОПИСАНИЕ 
 КЛЮЧИ ЗАПУСКА 
 ПОДВОДНЫЕ КАМНИ 
 ПРИМЕРЫ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 СМОТРИ ТАКЖЕ 
 ПРЕДУПРЕЖДЕНИЕ 
 ВЕРСИЯ 
 АВТОР 
 
 
 
 
 
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