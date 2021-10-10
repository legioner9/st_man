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
 
 
 
 cat (8)   cat  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня )   cat  (1)   ( FreeBSD man: Команды и прикладные программы пользовательского уровня )   cat  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   cat  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня )   cat  (1)   ( POSIX man: Команды и прикладные программы пользовательского уровня ) >>  cat  (8)   ( Русские man: Команды системного администрирования ) 
 
 
 Пользовательские команды 
 cat(1) 
 
 

 НАЗВАНИЕ 

 cat  - конкатенация и выдача содержимого файлов 

 СИНТАКСИС 
 
	cat [ -nbsuvet ] [  файл  ... ]
 

 ОПИСАНИЕ 
 Утилита  cat  читает последовательно  файлы  и выдает их содержимое
в стандартный выходной поток. Таким образом, команда: 

 example% cat file
 

 выдает  file  на терминал, а команда: 

 example% cat file1 file2 >file3
 

 конкатенирует содержимое файлов  file1  и  file2 , и записывает 
результаты в файл  file3 . Если входные файлы не заданы, утилита  cat 
читает данные из стандартного входного потока. 

 ОПЦИИ 

 Поддерживаются следующие опции: 

 
 -n 
Выдавать порядковый номер строки перед каждой строкой. 
 -b 
Нумеровать строки, как и при указании опции  -n , но пустые строки не нумеруются. 
 -u 
Не буферизовать выдаваемый результат. (По умолчанию результат буферизуется.) 
 -s 
Не выдавать сообщений о не существующих файлах. 
 -v 
Выдавать непечатные символы (кроме символов табуляции,
новой строки и прогона страницы) в явном виде. Управляющие символы ASCII 
(с восьмеричными кодами 000 - 037) выдаются как  ^n , где  n  - соответствующий символ ASCII в диапазоне восьмеричных кодов 100 - 137 
( @ ,  A ,  B ,  C ,... ,  X ,  Y ,  Z ,
 [ ,   \ ,  ] ,  ^  и  _ ); символ DEL 
(восьмеричный код 0177) выдается как  ^? . Другие непечатные символы
выдаются как  M-x , где  x  - символ ASCII, задаваемый младшими семью 
битами. 
 

 Вместе с опцией  -v  можно задавать следующие опции: 

 
 -e 
Выдавать в конце каждой строки символ  $  (перед символом новой строки). 
 -t 
Выдавать символы табуляции как  ^I , а символы прогона страницы - как  ^L . 
 

 Опции  -e  и  -t  игнорируются, если не указана опция  -v . 

 ОПЕРАНДЫ 

 Поддерживается следующий операнд: 

 
 файл 
Полное имя входного файла. Если  файл  не указан, используется стандартный
входной поток. Если в качестве  файла  указан дефис (' - '), 
утилита  cat  будет читать из стандартного входного потока в соответствующем
месте последовательности файлов. Утилита  cat  не будет закрывать и
повторно открывать стандартный входной поток, если на него ссылаются таким образом,
но позволяет указывать ' - ' в качестве  файла  несколько раз.
 

 ИСПОЛЬЗОВАНИЕ 

 Описание работы утилиты  cat  с файлами, размер которых превосходит
2 Гбайта (2**31 байтов) см. на странице справочного руководства 
 largefile(5) . 

 ПРИМЕРЫ 

 Пример 1: Конкатенация файла 

 Следующая команда: 

 example% cat myfile
 

 выдает содержимое указанного файла  myfile  в стандартный выходной поток. 

 Пример 2: Конкатенация двух файлов в один 

 Следующая команда: 

 example% cat doc1 doc2 > doc.all
 

 конкатенирует содержимое файлов  doc1  и  doc2 , и записывает
результат в файл  doc.all . 

 Пример 3: Конкатенация двух произвольных фрагментов входного потока в одном вызове 

 Команда: 

 example% cat start - middle - end > file
 

 если стандартный входной поток поступает с терминала, получает два произвольных
фрагмента входного потока в одном вызове  cat . Учтите, однако, что если
стандартный входной поток поступает из обычного файла, эта команда эквивалентна
следующей: 

 cat start - middle /dev/null end > file
 

 поскольку все содержимое файла будет принято утилитой  cat  при первом
появлении ' - ' в качестве имени файла, при повторном обращении к ' - '
сразу будет получен признак конца файла. 

 ПЕРЕМЕННЫЕ СРЕДЫ 

 Описание следующих переменных среды, влияющих на работу  cat ,
см. на странице справочного руководства 
 environ(5) :
 LC_CTYPE ,  LC_MESSAGES  и  NLSPATH . 

 СТАТУС ВЫХОДА 

 Программа завершается со следующими значениями статуса выхода: 

 
 0   Входные файлы были успешно выданы. 
 >0   Произошла ошибка. 
 

 АТРИБУТЫ 

 Описание следующих атрибутов см. на странице справочного руководства
 attributes(5) : 

 
 ТИП АТРИБУТА 
 ЗНАЧЕНИЕ АТРИБУТА 
 Доступен в пакете 
 SUNWcsu 
 CSI 
 включено 
 

 ССЫЛКИ 

 
	 touch(1) , 
	 environ(5) , 
	 attributes(5) , 
	 largefile(5) 
 

 ПРИМЕЧАНИЯ 

 Перенаправление результатов работы команды  cat  в один из читаемых
файлов приведет к потере исходных данных читаемого файла. Например, команда 

 example% cat filename1 filename2 >filename1
 

 приводит к потере исходных данных в файле  filename1 . 

 Последнее изменение: 1 февраля 1995 года 

 
Copyright 2002  В. Кравчук ,
 OpenXS Initiative , перевод на русский язык
  

 
 
 
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