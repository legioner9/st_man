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
 
 
 
 compress (1)   compress  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня )   compress  (1)   ( FreeBSD man: Команды и прикладные программы пользовательского уровня ) >>  compress  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   compress  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня )   compress  (1)   ( POSIX man: Команды и прикладные программы пользовательского уровня ) Ключ  compress  обнаружен в базе ключевых слов. 
 
 
 compress(1) 
 compress(1) 
 
 

 НАЗВАНИЕ 
 compress ,  uncompress ,  zcat  - сжимает данные для хранения, разжимает и 
показывает сжатые файлы 

 СИНТАКСИС 
 
compress [-dfFqcv] [-b  биты ]  файл ... 
uncompress [-fqc]  файл ... 
zcat  файл ...
 

 ОПИСАНИЕ 
 compress  берет файл и сжимает его до минимально возможного размера, создает 
сжатый файл результата и удаляет исходный файл, если не указана опция  -c . 
Сжатие достигается за счет кодирования часто встречающихся в файле строк. 
 uncompress  восстанавливает предварительно сжатый файл в исходное состояние 
и удаляет сжатую версию.  zcat  разжимает файл и выдает его в стандартный 
выходной поток. 

 Если  файл  в командной строке не указан, данные берутся из стандартного 
входного потока, а результат пересылается в стандартный выходной поток. По 
умолчанию, результат записывается в файл с именем, совпадающим с именем 
исходного  файла , но с суффиксом  .Z , но его можно перенаправить и в 
стандартный выходной поток. Выходные файлы имеют те же права доступа и 
владельца, что и соответствующие исходные файлы или стандартные права 
доступа пользователя, если результат перенаправляется в стандартный выходной 
поток. 

 Если в результате сжатия не удается уменьшить объем файла, результирующий 
файл не записывается, если только в командной строке не указан флаг  -F . 

       Опции 

 Поддерживаются следующие опции командной строки: 

 
 -d 
Разжимает сжатый файл. 
 -b биты 
Задает максимальное количество битов, используемых при 
кодировании. 
 -c 
Выдает результат в стандартный выходной поток и не удаляет 
исходный  файл . 
 -f 
Заставляет записывать файл результата, даже если файл с таким 
именем уже существует и даже если при сжатии файл не 
становится меньше. 
 -F 
Записывает файл результата, даже если при сжатии файл не 
становится меньше. 
 -q 
Не генерирует результатов, кроме сообщений об ошибках, если 
они имеются. 
 -v 
Выдает имя сжимаемого файла и достигнутый процент сжатия. 
При использовании с  uncompress , выдается имя разжимаемого 
файла. 
 

 ССЫЛКИ 
 
	 ar(1) , 
	 cat(1) ,
	 pack(1) ,
	 tar(1) 
 

 Copyright 1994 Novell, Inc. 
Copyright 2000  В. Кравчук ,
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