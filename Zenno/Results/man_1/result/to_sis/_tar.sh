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
 
 
 
 tar (1)   tar  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня )   tar  (1)   ( FreeBSD man: Команды и прикладные программы пользовательского уровня ) >>  tar  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   tar  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня )   tar  (5)   ( FreeBSD man: Форматы файлов )   tar  (8)   ( Русские man: Команды системного администрирования ) 
   
 NAME 
 tar - GNU версия утилиты архивирования
   
 СИНТАКСИС 

 tar 

[
 - 

]
 A --catenate --concatenate | c --create | d --diff --compare | r --append | t --list | u --update | x -extract --get 

[
 --atime-preserve 

]
[
 -b, --block-size N 

]
[
 -B, --read-full-blocks 

]
[
 -C, --directory DIR 

]
[
 --checkpoint 

]
[
 -f, --file [HOSTNAME:]F 

]
[
 --force-local 

]
[
 -F, --info-script F --new-volume-script F 

]
[
 -G, --incremental 

]
[
 -g, --listed-incremental F 

]
[
 -h, --dereference 

]
[
 -i, --ignore-zeros 

]
[
 -j, --bzip 

]
[
 --ignore-failed-read 

]
[
 -k, --keep-old-files 

]
[
 -K, --starting-file F 

]
[
 -l, --one-file-system 

]
[
 -L, --tape-length N 

]
[
 -m, --modification-time 

]
[
 -M, --multi-volume 

]
[
 -N, --after-date DATE, --newer DATE 

]
[
 -o, --old-archive, --portability 

]
[
 -O, --to-stdout 

]
[
 -p, --same-permissions, --preserve-permissions 

]
[
 -P, --absolute-paths 

]
[
 --preserve 

]
[
 -R, --record-number 

]
[
 --remove-files 

]
[
 -s, --same-order, --preserve-order 

]
[
 --same-owner 

]
[
 -S, --sparse 

]
[
 -T, --files-from=F 

]
[
 --null 

]
[
 --totals 

]
[
 -v, --verbose 

]
[
 -V, --label NAME 

]
[
 --version 

]
[
 -w, --interactive, --confirmation 

]
[
 -W, --verify 

]
[
 --exclude FILE 

]
[
 -X, --exclude-from FILE 

]
[
 -Z, --compress, --uncompress 

]
[
 -z, --gzip, --ungzip 

]
[
 --use-compress-program PROG 

]
[
 --block-compress 

]
[
 -[0-7][lmh] 

]
 
 filename1 [ filename2, ... filenameN ] 

 
 directory1 [ directory2, ...directoryN ] 

 
 
   
 ОПИСАНИЕ 

 

Этот страница руководства описывает GNU-версию программы
 tar ,

которая предназначена для хранения и извлечения файлов из
архивного файла, известного как
 tarfile. 

Файл
 tarfile 

может быть создан на ленточном накопителе, однако, чаще всего,
 tarfile 

сохраняют как обычный файл.
Первым аргументом к программе
 tar 

должна быть одна из следующих опций:
 Acdrtux ,

за которой следуют необязательные дополнительные параметры.
Последними аргументами к программе
 tar 

являются имена архивируемых файлов
 filename1 [ filename2, ... filenameN ] 

или каталогов
 directory1 [ directory2, ...directoryN ] 

При использовании имени каталога всегда предполагается,
что его подкаталоги будут также включены в архив. Примеры использования.
 
 

 tar -c -f doc-backup.tar /home/aleksander/Documents 

 

 
 

 tar -r -f doc-backup.tar /home/peter/Documents 

 

 
 

 gzip -9 doc-backup.tar 

 

В первой строке создается архив
 doc-backup.tar 

каталога
 /home/aleksander/Documents 

со всеми его подкаталогами и расположенными внутри файлами.
Во второй - добавляются к созданному архиву каталог
 /home/peter/Documents 

с его объектами. В третьей строке - полученный ранее архив сжимается программой
 gzip 

и превращается в 
 doc-backup.tar.gz .

 
   
 ОСНОВНЫЕ ОПЦИИ 

 
 Только одна из следующих опций должна использоваться: 

 
 -A, --catenate, --concatenate 

 
добавляет файлы в архив
 -c, --create 

 
создает новый архив
 -d, --diff, --compare 

 
находит различия между объектами архива и их "исходниками" в файловой системе
 --delete 

 
удаляет файлы из архива (эта опция не используется для
архивов на магнитной ленте!)
 -r, --append 

 
добавляет файлы в конец архива
 -t, --list 

 
выводит содержание архива
 -u, --update 

 
добавляет только те файлы, которые ранее не были включены в архив
 -x, --extract, --get 

 
извлекает файлы из архива
 
   
 ДОПОЛНИТЕЛЬНЫЕ ПАРАМЕТРЫ 

 
 --atime-preserve 

 
не меняет время доступа скопированных файлов
 -b, --block-size N 

 
устанавливает размер блока в (N x 512) байт (по умолчанию N=20)
 -B, --read-full-blocks 

 
считывает фактические блоки (используется для чтения в
конвейерах 4.2BSD)
 -C, --directory DIR 

 
меняет каталог на указанный
 --checkpoint 

 
выводит имена каталогов при чтении архива
 -f, --file [HOSTNAME:]F 

 
использует архивный файл или устройство (возможно даже на узле HOSTNAME) F.
По умолчанию используется /dev/rmt0
 --force-local 

 
предполагает, что архивный файл расположен в локальной системе,
даже если за параметром f имеется двоеточие
 -F, --info-script F --new-volume-script F 

 
запускает сценарий F в конце каждой магнитной ленты (здесь предполагается
параметр -M)
 -G, --incremental 

 
поддерживает старый GNU-формат инкрементного резервирования,
создавая, отображая или извлекая из архива объекты
 -g, --listed-incremental F 

 
поддерживает новый GNU-формат инкрементного резервирования,
создавая, отображая или извлекая из архива F объекты
 -h, --dereference 

 
не дублирует сами символические ссылки; лишь дублирует файлы, на которые
они указывают
 -i, --ignore-zeros 

 
игнорирует в архиве блоки нулей (обозначающие обычно EOF - End Of File)
 -j, --bzip 

 
фильтрует архив с помощью bzip2
 --ignore-failed-read 

 
игнорирует не читаемые файлы (т.е. не завершает работу с кодом,
отличным от нуля)
 -k, --keep-old-files 

 
сохраняет существующие файлы и не перекрывает их при извлечении
объектов архива
 -K, --starting-file F 

 
начинает обработку архива с файла F
 -l, --one-file-system 

 
при создании архива остается в локальной файловой системе
 -L, --tape-length N 

 
меняет магнитные ленты после записи каждых (N*1024) байт
 -m, --modification-time 

 
при извлечении объектов архива игнорирует их время модификации
 -M, --multi-volume 

 
работает (создает, отображает или извлекает) с многотомным архивом
 -N, --after-date DATE, --newer DATE 

 
сохраняет только более новые файлы относительно даты DATE
 -o, --old-archive, --portability 

 
записывает архив в формате V7 вместо ANSI-формата
 -O, --to-stdout 

 
направляет извлекаемые из архива файлы на стандартный вывод
 -p, --same-permissions, --preserve-permissions 

 
извлекает защищенную информацию
 -P, --absolute-paths 

 
не отбрасывает начальный слэш (`/') из имен файлов
 --preserve 

 
соответствует одновременному заданию параметров -p -s
 -R, --record-number 

 
отображает номер записи архивной информации с каждым сообщением
 --remove-files 

 
удаляет исходные (оригинальные) файлы после добавления их в архив
 -s, --same-order, --preserve-order 

 
сортирует список имен файлов, которые извлекаются из архива
 --same-owner 

 
при извлечении файлов из архива сохраняет поле владельца файла
 -S, --sparse 

 
оптимально поддерживает "распределенные (разбросанные)" файлы
 -T, --files-from=F 

 
для извлечения или создания получает имена из файла F
 --null 

 
считывает заканчивающиеся нулем имена файлов. Запрещает параметр -C
 --totals 

 
выводит общее число байт, записанное с помощью опции --create
 -v, --verbose 

 
предоставляет список обрабатываемых файлов
 -V, --label NAME 

 
создает архив на томе с меткой NAME
 --version 

 
выводит номер версии программы tar
 -w, --interactive, --confirmation 

 
запрашивает подтверждение для каждого действия
 -W, --verify 

 
пытается выполнять проверку архива после записи в него
 --exclude FILE 

 
исключает из обработки файл FILE
 -X, --exclude-from FILE 

 
исключает из обработки файлы, перечисленные в файле FILE
 -Z, --compress, --uncompress       

 
фильтрует архив с помощью compress
 -z, --gzip, --ungzip 

 
фильтрует архив с помощью gzip
 --use-compress-program PROG 

 
фильтрует архив с помощью программы PROG (которая должна принимать опцию -d)

 
   
 ПЕРЕВОД 

Aleksander N.Gorohovski < angel@feht.dgtu.donetsk.ua > 15.12.2004

 

 
   Index 
 
 NAME 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ОСНОВНЫЕ ОПЦИИ 
 ДОПОЛНИТЕЛЬНЫЕ ПАРАМЕТРЫ 
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