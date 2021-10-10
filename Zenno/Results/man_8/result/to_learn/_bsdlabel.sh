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
 
 
 
 bsdlabel (8)   bsdlabel  (8)   ( FreeBSD man: Команды системного администрирования ) >>  bsdlabel  (8)   ( Русские man: Команды системного администрирования ) 
 
 
 bsdlabel(8) 
 Руководство системного администратора FreeBSD 
 bsdlabel(8) 
 
 
				
 НАЗВАНИЕ 
 bsdlabel  -- чтение и запись метки диска 

 SYNOPSIS 
 
bsdlabel [-A]  диск 
bsdlabel -w [-An] [-B [-b  boot ]] [-m  машина ]  диск  [ тип ] 
bsdlabel -e [-An] [-B [-b  boot ]] [-m  машина ]  диск 
bsdlabel -R [-An] [-B [-b  boot ]] [-m  машина ]  диск   файл_прототип 
 

 ОПИСАНИЕ 
 Утилита  bsdlabel  устанавливает, проверяет или изменяет метку BSD на разделе диска.
Кроме того,  bsdlabel  может устанавливать код начальной загрузки. 

   Имя дискового устройства 
 При указании устройства префикс  /dev/  можно не указывать; утилита  bsdlabel  
автоматически будет его добавлять. 

   Общие опции 
 Опция  -A  разрешает обработку исторических частей метки BSD. Если эта опция не 
указана, для этих полей устанавливаются подходящие значения. 

 Опция  -n  останавливает программу  bsdlabel  непосредственно перед изменением
диска, и выдает результаты вместо того, чтобы их записывать. 

 Аргумент  -m машина  требует от утилиты  bsdlabel  использовать структуру,
подходящую для указанной  машины . 

   Чтение метки диска 
 Для проверки метки на диске используйте утилиту  bsdlabel  без опций: 
 bsdlabel [-A] [-m  машина ]  диск 
 
 Параметр  диск  задает диск, который нас интересует, и может иметь вид  da0  
или  /dev/da0 . Представленная команда выдаст информацию о структуре раздела. 

   Запись стандартной метки 
 Для записи стандартной метки используйте форму: 
 bsdlabel -w [-An] [-m  машина ]  диск  [ тип ]
 
 Если  тип  диска указан, будет использована запись с соответствующим именем
из файла  disktab(5) ; в противном случае используется
стандартная структура диска. 

   Редактирование существующей метки диска 
 Для редактирования существующей метки диска используйте форму: 
 bsdlabel -e [-An] [-m  машина ]  диск 
 
 Эта команда открывает метку диска в стандартном редакторе, а когда редактор завершает
работу, метка проверяется и, если она корректна, записывается на диск. 

   Восстановление метки диска из файла 
 Для восстановления метки диска из файла используйте форму: 
 bsdlabel -R [-An] [-m  машина ]  диск   файл_прототип 
 
 Утилита  bsdlabel  может восстановить метку диска, которая была ранее сохранена
в файле в текстовом формате. Файл-прототип, использованный для создания метки, должен
быть в том же формате, что и выдаваемый при чтении или редактировании метки. 
Комментарии начинаются символом ' # ' и продолжаются до конца строки. 

   Установка начальных загрузчиков 
 Если указан аргумент  -B , код начальной загрузки будет читаться из файла  /boot/boot  
и записываться на диск. Аргумент  -b boot  позволяет использовать другой файл. 

 ФАЙЛЫ 
 
 /boot/boot 
Стандартный образ загрузки. 
 /etc/disktab 
Файл описания диска. 
 

 ФОРМАТ СОХРАНЕННОГО ФАЙЛА 

 Утилита  bsdlabel  использует текстовую версию метки при проверке, редактировании или
восстановлении метки диска. Формат ее следующий: 

 8 partitions:
#      size	     offset    fstype   [fsize bsize bps/cpg]
a:	   81920	      0    4.2BSD    1024  8192    16
b:	  160000	  81920    swap
c:   1173930	      0    unused	 0     0	 # "raw" part, don't edit
 
 Если указана опция  -A , используется следующий формат: 
 # /dev/da1c:
type: SCSI
disk: da0s1
label:
flags:
bytes/sector: 512
sectors/track: 51
tracks/cylinder: 19
sectors/cylinder: 969
cylinders: 1211
sectors/unit: 1173930
rpm: 3600
interleave: 1
trackskew: 0
cylinderskew: 0
headswitch: 0		 # milliseconds
track-to-track seek: 0  # milliseconds
drivedata: 0

8 partitions:
#      size	     offset    fstype   [fsize bsize bps/cpg]
a:	   81920	      0    4.2BSD    1024  8192    16
b:	  160000	  81920    swap
c:   1173930	      0    unused	 0     0	 # "raw" part, don't edit
 
 Строки, начинающиеся символом ' # ', являются комментариями. 

 Таблица разделов может включать до 8 записей. Она содержит следующую информацию: 
 
 # 
Идентификатор раздела - одна буква в диапазоне от ' a ' до ' h '. По соглашению
раздел ' c ' зарезервирован для описания всего диска.
 
 size 
Размер раздела в секторах,  K  (килобайтах - 1024 байта),  M  (мегабайтах - 1024*1024
байта),  G  (гигабайтах - 1024*1024*1024 байта),  %  (процент свободного места за вычетом
всех разделов фиксированного размера, кроме раздела ' c ') или  *  (все
оставшееся свободное место за исключением разделов фиксированного размера и разделов, размер которых
задан в процентах). Для раздела ' c ' размер  *  означает весь диск. Единицы
измерения  K ,  M  и  G  можно указывать и в нижнем регистре. Размер и единица
измерения должны задаваться без пробелов, одним словом.

 Пример:  2097152 ,  1G ,  1024M  и  1048576K  все задают один и тот же
размер (при размере сектора 512 байтов). 
 
 offset 
Смещение начала раздела от начала диска, в секторах, или  * , требующая от  bsdlabel 
вычислить соответствующее смещение для использования (конец предыдущего раздела плюс один,
игнорируя раздел ' c '. Для раздела ' c ',  *  будет интерпретироваться как
смещение 0.
 
 fstype 
Описывает назначение раздела. Пример показывает все используемые сейчас типы разделов. Для
файловых систем UFS и разделов  ccd(4)  используйте тип  4.2BSD .
Для дисков Vinum используйте тип  vinum . Также используются типы  swap  (область подкачки)
и  unused  (не используемый раздел). По договоренности, раздел ' c ' представляет
всю  секцию  (slice) и должен быть типа  unused , хотя утилита  bsdlabel  
выполнение этой договоренности и не проверяет. Утилита  bsdlabel  также знает и ряд других
типов разделов, которые сейчас не используются. (Подробнее см. определения, начиная с  FS_UNUSED ,
в заголовочном файле  <sys/disklabel.h> .)
 
 fsize 
Только для файловых систем  4.2BSD  и  LFS , - размер фрагмента.
Стандартные значения: 1024 - для разделов менее 1 Гбайта, 4096 - для разделов размером 1 Гбайт и более.
 
 bsize 
Только для файловых систем  4.2BSD  и  LFS , - размер блока. Стандартные значения:
8192 - для разделов менее 1 Гбайта, 16384 - для разделов размером 1 Гбайт и более.
 
 bps/cpg 
Для файловых систем типа  4.2BSD , - количество цилиндров в группе. Для файловых систем  LFS , -
значение сдвига сегмента (segment shift value). По умолчанию - 16 для разделов размером меньше 1 Гбайта и
64 для разделов размером 1 Гбайт и более. 
 

 ПРИМЕРЫ 
 	   bsdlabel da0s1
 
 Выдать метку первой секции диска  da0 , которой соответствует устройство  /dev/da0s1 . 
 	   bsdlabel da0s1 > savedlabel
 
 Записать текущую метку (in-core label) для устройства  da0s1  в файл  savedlabel .
Этот файл можно использовать с опцией  -R  для восстановления метки в дальнейшем. 
 	   bsdlabel -w /dev/da0s1
 
 Создать метку для диска  da0s1 . 
 	   bsdlabel -e da0s1
 
 Прочитать метку для  da0s1 , отредактировать ее и установить на диск результат. 
 	   bsdlabel -e -n da0s1
 
 Прочитать метку с диска  da0s1 , отредактировать и показать, какой ( в секторах) будет
новая метка. Новая метка не устанавливается, ни в памяти, ни на диске. 
 	   bsdlabel -w da0s1
 
 Записать стандартную метку на диск  da0s1 . Для редактирования разделов и
информации о типах файловых систем используется другая команда -  bsdlabel -e . 
 	   bsdlabel -R da0s1 savedlabel
 
 Восстановить в памяти и на диске метку для  da0s1  на базе информации в файле  savedlabel . 
 	   bsdlabel -R -n da0s1 label_layout
 
 Выдать вид метки для  da0s1  при использовании структуры разделов, указанной в файле
 label_layout . Это полезно для определения того, сколько всего места будут занимать
разделы, размер которых задан с помощью  %  или  * . 
 	   bsdlabel -B da0s1
 
 Установить новую загрузочную запись (bootstrap) на  da0s1 . Код загрузки берется из
файла  /boot/boot . 
 	   bsdlabel -w -B -b newboot /dev/da0s1
 
 Установить новую метку и загрузочную запись. Код загрузки берется из файла  newboot  
в текущем рабочем каталоге. 
 	   dd if=/dev/zero of=/dev/da0 bs=512 count=32
	   fdisk -BI da0
	   dd if=/dev/zero of=/dev/da0s1 bs=512 count=32
	   bsdlabel -w -B da0s1
	   bsdlabel -e da0s1
 
 Полностью "стереть" прежнюю информацию на диске, создавая новый загрузочный диск с таблицей
разделов DOS, содержащей одну секцию, занимающую весь диск. Проинициализировать метку этой
секции и отредактировать ее. Команды  dd(1)  - не обязательны, 
но могут понадобиться для некоторых версий BIOS, чтобы они могли правильно распознать диск. 

 Вот пример метки диска, использующий разные единицы измерения для разделов ( % ,  M ,
 G  и  * ), которую можно задать в исходном файле для команды
" bsdlabel -R ad0s1c файл_новой_метки ": 

      # /dev/ad0s1c:

	 8 partitions:
	 #	  size	 offset    fstype   [fsize bsize bps/cpg]
	 a:	  400M	    0	   4.2BSD    4096 16384	  75	 # (Cyl.    0 - 812*)
	 b:	    1G	    *	   swap
	 c:	   *	    *	   unused
	 e: 204800	    *	   4.2BSD
	 f:	    5g	    *	   4.2BSD
	 g:	   *	    *	   4.2BSD
 

 ССЫЛКИ 
 
     ccd(4) ,
     geom(4) ,
     md(4) ,
     disktab(5) ,
     boot0cfg(8) ,   
     fdisk(8) 
 

 ДИАГНОСТИКА 

 Драйверы устройств ядра не позволяют уменьшать размер раздела диска или изменять
смещение раздела, пока он открыт. 

 FreeBSD 4.9  15 марта 2003 года 

 Copyleft (no c) - Fuck copyright! 2004  В. Кравчук ,
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