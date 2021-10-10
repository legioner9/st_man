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
 
 
 
 gphoto (1)   gphoto  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня ) >>  gphoto  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   gphoto  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня ) Ключ  gphoto  обнаружен в базе ключевых слов. GPHOTO2(1)							    GPHOTO2(1)

НАИМЕНОВАНИЕ
       gphoto2 - клиент gphoto2 командной строки

КРАТКИЙ ОБЗОР КОМАНД
       gphoto2 [--debug] [-q | --quiet] [-v | --verbose] [-h | --help]
	       [--list-cameras] [--list-ports] [--stdout]
	       [--stdout-size] [--auto-detect] [--port PATH]
	       [--speed SPEED] [--camera MODEL] [--filename FILENAME]
	       [--usbid USBIDS] [-a | --abilities] [--folder FOLDER]
	       [[-R | --recurse] | --norecurse] [-l | --list-folders]
	       [-L | --list-files] [-m NAME | --mkdir NAME]
	       [-r NAME | --rmdir NAME] [-n | --num-files]
	       [-p RANGE | --get-file RANGE] [-P | --get-all-files]
	       [-t RANGE | --get-thumbnail RANGE]
	       [-T | --get-all-thumbnails]
	       [-r RANGE | --get-raw-data RANGE] [--get-all-raw-data]
	       [--get-audio-data RANGE] [--get-all-audio-data]
	       [-d RANGE | --delete-file RANGE] [-D | --delete-all-files]
	       [-u FILENAME | --upload-file FILENAME] [--capture-preview]
	       [--capture-image] [--capture-movie] [--capture-sound]
	       [--capture-show-info RANGE]
	       [--summary] [--manual] [--about] [--shell]


ОПИСАНИЕ

libgphoto2(3) является многоплатформенной библиотекой для цифровых 
фотоаппартов и gphoto2(1) является клиентом командной строки для libgphoto2.
Везде, где опция охватывает ряд файлов, тамбнейлов или другие данные
 - нумерация начинается с 1. Ряд является списком числовых значений, разделённым запятыми
или диапазонами ("первый-последний"). Ряды задаются как XOR, то есть
"1-5,3,7" эквивалентен "1,2,4,5,7". 

--debug                       Включить отладку
-q, --quiet                    Тихий режим (по умолчанию - выводятся сообщения)
-v, --version                  Показать номеверсии и выйти
-h, --help                     Кратко помощь
--list-cameras                 Список поддерживаемых камер
--list-ports                    Список поддеоживаемых устройств по портам
--stdout                       Послать файл на стандартный вывод
--stdout-size                  Вывести размер файла, затем данные
--auto-detect                  Список автоматически определяемых камер
--port PATH                  Задать устройство
--speed SPEED               Задать скорость передачи
--camera MODEL            Задать модель камеры. Большинство наименований моделей содержат
     пробелы: не забудьте заключить наименования в кавычки, т.л. командный интерпретатор
     принимает лишь один параметр. Например: --camera "Kodak DC240".
--filename FILENAME       Задать имя файла при сохранении скачивемого с 
     камеры файла. Эта опция принимает %a, %A, %b, %B, %d, %H, %k,  %I,  %l,%j,  
     %m, %M, %S, %y, %%, (см. date(1)), и, дополнительно, %n для чисел,
     %C для расширений файлов и %f для файлов без расширений.
--usbid USBIDS (Только для гуру)     
      Аннулировать идентификатор USB.
      Идентификатор USB должен иметь форму 
      DetectedVendorID:DetectedProductID=TreatAsVendorID:TreatAsProductID
      для того, чтобы обращаться к любому устройству USB определённому как
      DetectedVendorID:DetectedProductID как к устройству TreatAsVendorID:TreatAsProductID
      Все VendorID (идентификатор производителя) и ProductID (идентификатор изделия)
      должны быть в шестнадцатиричной системе счиления и начинаться с "0x"
      Например --usbid 0x4a9:0x306b=0x4a9:0x306c
-a, --abilities            Вывести список возможностей.
-f, --folder FOLDER   Задать каталог (по умолчанию ="/").
-R, --recurse            Рекурсия (это режим по умолчанию при скачивании).
--no-recurse             Без рекурсии (это режим по умолчанию при удалении файлов).
-l, --list-folders         Список каталогов.
-L, --list-files           Список файлов.
-m, --mkdir NAME    Создать каталог.
-r, --rmdir NAME      Удалить каталог.
-n, --num-files          Показать число файлов.
-p, --get-file RANGE   Скачать файлы, заданные рядом.
-P, --get-all-files         Получить все файлы из каталога.
-t, --get-thumbnail RANGE    Получить все тамбнейлы.
-r, --get-raw-data RANGE      Получить необработанные данные, заданные рядом.
--get-all-raw-data                Получить все необработанные данные.
--get-audio-data RANGE       Получить аудиоданные, заданные рядом.
--get-all-audio-data              Получить все аудиоданные.
--delete-files RANGE           Удалить файлы, заданные рядом.
--delete-all-files                 Удалить все файлы.
-u, --upload-file FILENAME   Загрузить файл на камеру.
--capture-preview                Захватить превью.
--capture-image                  Сделать снимок.
--capture-movie                  Снять видео.
--capture-sound                  Записать звук.
--show-info RANGE            Показать инфо.
--summary                        Информация о камере.
--manual                         Мануал к драйверу камеры.
--about                            Информация о драйвере камеры.
--shell                            Запустить оболчку gphoto2, интерактивное окружение.
       Смотри РЕЖИМ ОБОЛОЧКИ для более подробной информации.

РЕЖИМ ОБОЛОЧКИ
Доступны следующие команды:
cd                 Сменить каталог на камере.
lcd                Перейти в каталог на локальную машину.
exit, quit, q       Выйти из оболочки gphoto2.
get                 Скачать файл в текущий каталог.
get-thumbnail    Скачать тамбнейл в текущий каталог.
get-raw            Скачать необработанные данные в текущий каталог.
show-info         Показать информацию.
delete             Удалить файл или каталог.
show-exif         Показать EXIF информацию (толко если есть поддержка EXIF).
help, ?            Показать использование команд.
ls                  Список содержимого текущего каталога.

СМОТРИ ТАКЖЕ
libgphoto2(3), The gPhoto2 Manual,   http://www.gphoto.org/

ПРИМЕРЫ
gphoto2 --list-ports       Показывает вид имеющегося порта.
gphoto2 --auto-detect    Автоопределение подсоединённой камеры.
gphoto2 --list-files        Список файлов на камере.
gphoto2 --get-file 7-13   Получить файлы с 7 по 13 из списка показанного
    командой gphoto2 --list-files.

АВТОР
Команда gPhoto2.

Страница руковолства создана Tim Waugh  .
Февраль 2002
 
 
 
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