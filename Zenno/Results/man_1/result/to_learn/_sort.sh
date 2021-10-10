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
 
 
 
 sort (1)   sort  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня )   sort  (1)   ( FreeBSD man: Команды и прикладные программы пользовательского уровня ) >>  sort  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   sort  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня )   sort  (1)   ( POSIX man: Команды и прикладные программы пользовательского уровня )   sort  (3)   ( Solaris man: Библиотечные вызовы )   sort  (3)   ( Linux man: Библиотечные вызовы ) Ключ  sort  обнаружен в базе ключевых слов. 
   
 ИМЯ 

sort - сортирует строки текстовых файлов
   
 ОБЗОР 

 sort 

[ ПАРАМЕТР ]... [ ФАЙЛ(Ы) ]...
   
 ОПИСАНИЕ 


 

Отправляет результат сортировки содержимого указанных  ФАЙЛОВ  (всех  ФАЙЛОВ ) на стандартный
поток вывода. Все указываемые в командной строке файлы объединяются.
 

Основные параметры:
 

Обязательные аргументы для длинных форм параметров являются также обязательными и
для коротких форм.
 
 -b ,  --ignore-leading-blanks 
игнорировать пробелы в начале сортируемых полей или начале ключей
 -d ,  --dictionary-order 
воспринимать в составе ключей лишь буквы (латинского алфавита), цифры и пробелы,
игнорируя все прочие символы
 -f ,  --ignore-case 
во время сортировки преобразует строчные (маленькие) в соответствующие прописные (большие) буквы,
т.е. выполняется сортировка нечувствительная к регистру символов
 -g ,  --general-numeric-sort 
выполнять сравнение в соответствии с общим числовым значением
(используют совместно с параметром -b). Это численная сортировка, при которой дополнительно
распознаётся экспоненциальное представление чисел (например, 9.1019e7)
 -i ,  --ignore-nonprinting 
в ключах рассматриваются только печатаемые (ASCII) символы, а остальные игнорируются
 -M ,  --month-sort 
выполнять сравнение по трёх-символьным сокращениям англоязычных названий месяцев, т.е.
(незнакомое) < `JAN' < ... < `DEC'
 -n ,  --numeric-sort 
числовая сортировка, т.е. сравнение ведётся по числовому значению
(используют совместно с параметром -b)
 -r ,  --reverse 
сортировка выполняется в обратном порядке (по убыванию)
 
 

Другие параметры:
 
 -c ,  --check 
проверяет сортировался ли указанный файл. Если да, то не выполняет сортировку,
иначе выводит сообщение об ошибке
 -k ,  --key = ПОЗ1 [,ПОЗ2] 
выбирает ключ сортировки, начиная с позиции  ПОЗ1  и заканчивая
позицией  ПОЗ2  (включительно). Номера полей и смещения символов указываются,
начиная с 1
 -m ,  --merge 
объединяет ранее отсортированные  ФАЙЛЫ , которые не сортируются повторно
 -o ,  --output = ФАЙЛ 
выводит результат в указанный файл  ФАЙЛ  вместо стандартного вывода
 -s ,  --stable 
стабилизирует сортировку, не выполняя сравнения последней пересортировки
 -S ,  --buffer-size = РАЗМЕР 
под основной буфер в памяти использует область размером  РАЗМЕР 
 -t ,  --field-separator = СИМВОЛ 
использовать  СИМВОЛ  в качестве разделителя полей
 -T ,  --temporary-directory = КАТАЛОГ 
использует указанный  КАТАЛОГ  для временных файлов, игнорируя переменную окружения
$TMPDIR или /tmp; составные параметры могут указывать на различные каталоги
 -u ,  --unique 
уникальная сортировка: игнорирует повторяющиеся строки.
Обычно применяют с параметром  -c  для проверки сортированных файлов с целью
прерывания выполнения, если встретится несколько одинаковых строк подряд;
без  -c  выводится только первая строка из одинаковых
 -z ,  --zero-terminated 
вместо символа новой строки (newline), завершает строки двоичным 0
 --help 
вывести справку о программе, её параметрах и завершить работу
 --version 
вывести информацию о версии программы и завершить работу
 
 

Синтаксис параметра
 -k ,  --key = ПОЗ1 [,ПОЗ2]
означает следующее:
 
ПОЗ указывается в формате F[.C][OPTS], где F является порядковым номером поля, а C
позицией символа в этом поле. OPTS представляет собой одну или более одиночных букв, которые
означают рассмотренные выше параметры и их действие перекрывает действие
глобальных параметров для этого ключа. Если ни один ключ не задан, в качестве ключа
используется вся строка.
Ключ сортировки - это часть строки, которая рассматривается при сортировке, вместо того чтобы
рассматривалась вся строка. 
Таким образом, команда:
 
sort -k1.3
 
осуществляет сортировку по первому полю, начиная с его третьего символа.
Команда
 
sort -k4.6,7n
 
означает сортировку с 6-го символа четвёртого поля до 1-го символа седьмого поля.
Сортировка ведётся по числовому значению.
Допускается задание нескольких параметров -k для того, чтобы определить несколько
ключей, которые будут использованы последовательно в том порядке, в котором они указаны
в командной строке.
 

Величина размера SIZE памяти, отводимой для работы команды sort может быть задана
со следующими суффиксами: % - 1% от общей памяти; b - в байтах; K - 1024 байт (по умолчанию);
и соответственно для M, G, T, P, E, Z, Y.
 

Если в командной строке не указан никакой файл или вместо имени стоит дефис,
считывается стандартный ввод (с клавиатуры).
 

*** ВНИМАНИЕ ***
 
На сортировку влияют установки локали.
Установите переменную окружения LC_ALL=C , чтобы получить обычную сортировку в том порядке,
который использует действительные значения байт.
   
 АВТОР 

Mike Haertel и Paul Eggert.
   
 СООБЩЕНИЕ ОБ ОШИБКАХ 

Об ошибках сообщайте по адресу < bug-coreutils@gnu.org >.
   
 АВТОРСКИЕ ПРАВА 

Copyright © 2006 Free Software Foundation, Inc.
 

Это свободное программное обеспечение. 
Вы можете распространять его копии при соблюдении условий
GNU General Public License < http://www.gnu.org/licenses/gpl.html >.
Не предоставляется НИКАКИХ ГАРАНТИЙ в установленных законом пределах.
   
 СМ. ТАКЖЕ 

Полная документация по
 sort 

поддерживается в виде руководства в формате Texinfo. Если программы
 info 

и
 sort 

установлены и настроены в системе, то по команде
 
 
 info sort 

 
 

вы получите доступ к более полному руководству.

   
 ПЕРЕВОД 

Перевод оригинального файла на английском sort.1.gz (от 01.06.2006)
(+авторские дополнения) выполнен Aleksander N. Gorohovski < angel@feht.dgtu.donetsk.ua > 2006.
Некоторые правки к переводу: Slava Semushin < php-coder@ngs.ru >.
 

 
   Index 
 
 ИМЯ 
 ОБЗОР 
 ОПИСАНИЕ 
 АВТОР 
 СООБЩЕНИЕ ОБ ОШИБКАХ 
 АВТОРСКИЕ ПРАВА 
 СМ. ТАКЖЕ 
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