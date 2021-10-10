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
 
 
 
 yum (8) >>  yum  (8)   ( Русские man: Команды системного администрирования )   yum  (8)   ( Linux man: Команды системного администрирования ) Ключ  yum  обнаружен в базе ключевых слов. 
   
 НАЗВАНИЕ 

yum - Yellowdog Updater Modified
   
 СИНТАКСИС 

 yum  [ключи] [команда] [пакет ...]
   
 ОПИСАНИЕ 

 

 yum  является интерактивной автоматизированной программой
обновления, которая может использоваться для сопровождения систем,
использующих rpm.
 

 команда  может быть одной из:
 

  * install пакет1 [пакет2] [...]

 

  * update [пакет1] [пакет2] [...]

 

  * upgrade

 

  * remove [пакет1] [пакет2] [...]

 

  * list [...]

 

  * provides [...]

 

  * info [...]

 

  * clean [пакеты | заголовки | старые-заголовки | all]

 

 

Если не указан ключ --help или -h, то одна из вышеперечисленных
команд обязательно должна присутствовать.
 

 
 install 
используется для утановки последней версии пакета или
группы пакетов с учетом существующих зависимостей. Если соответствия
указанному  имени пакета не найдено, то он считается шаблоном оболочки
(shell glob) и устанавливаются все совпадающие с ним пакеты.
 
 update 
если  update  запущена без указания пакетов, то будут обновлены
все установленные пакеты. Если указан один или более пакетов, то будут
обновлены только перечисленные пакеты. При обновлении пакетов
 yum  учитывает зависимости. Если соответствия указанному имени
пакета не найдено, то он считается шаблоном оболочки (shell glob) и
обновляются все совпадающие с ним пакеты.
 
 upgrade 
команда не требует аргументов и производит полное обновление
системы. Это удобно для смены версии дистрибутива, так как при
этом учитывается замена устаревших пакетов другимим, более новыми.
 
 remove 
используется для удаления указанных пакетов из
системы, а также для удаления пактов, зависящих от удаляемых пакетов.
Также эту функцию можно вызвать командой  erase , это синнонимы.
 
 list 
может быть использована для вывода различной
информации о доступных пакетах. Более полная информация приведена в
разделе  Параметры списков  ниже.
 
 provides 
может быть использована чтобы выяснить какой пакет предоставляет
тот или иной файл. Необходимо указать имя или шаблон оболочки (shell glob) для поиска,
чтобы получить список установленных или доступных пакетов, которые предоставляют
этот файл.
 
 info 
может быть использована для вывода описаний и общей
информации о доступных пакетах. Команда понимает аргументы, описанные
в разделе  Параметры списков  ниже.
 
 clean 
используется для удаления различных данных,
накапливающихся со временем в кэше yup. Более полная информация
приведена в разделе  Параметры очистки  ниже.
 
 
 

   
 ОБЩИЕ КЛЮЧИ 

Большинство ключей командной строки могут быть также установлены в
файле настроек.
 

 
 -h, --help 
Справка. Вывести справочное сообщение и выйти.
 -y 
Предполагать согласие пользователя, то есть предполагать, что ответом
на все вопросы будет "да".
Команда файла настроек:  assume-yes 
 -c [файл настроек] 
Указывать расположение файла настроек.
 -d [число] 
Установить уровень отладки равным [числу], то есть изменить объем
выводимой информации.
 -e [число] 
Установить уровень ошибок равным [числу] от 0 до 10. 0 означает, что
будет выводиться информация только о критичных ошибках. 1 означает,
что будет выводиться информация о всех ошибках. 1+ заставит программу
сообщать о большем количестве ошибок (если они есть). 0 очень удобно
для заданий cron.
 -R [время в минутах] 
Установить максимальное время, которое yum будет ждать перед
выполнением команды. Это время произвольно меняется.
 -C 
Запрещает получение новых или обновление старых заголовков во время
выполнения операции.
 
 

   
 ПАРАМЕТРЫ СПИСКОВ 

Ниже приведены аргументы с которыми может быть запущен  yum  с
командами, выводящими различную информацию о пакетах. Обратите
внимание, что все команды  list  включают информацию о версии
пакета.
 
 
 yum list [available] 
вывести все доступные для установки пакеты в репозитариях yum.
 
 yum list updates 
вывести все пакеты, для которых в репозитариях yum доступно обновление.
 
 yum list updates after [date] 
вывести все пакеты, для которых в репозитариях yum доступно обновление, собранное позднее чем [date].
Формат даты ГОД-НОМЕРМЕСЯЦА-ДЕНЬ.
 
 yum list updates last [days] 
вывести все пакеты, для которых в репозитариях yum доступно обновление, собранное за последние
  [days] дней.
 
 yum list [аргументы] 
вывести все пакеты, соответствующие  аргументам . Если аргумент не
совпадает с именами пакетов, то он считается шаблоном
оболочки и выводятся все совпадения с ним.
 
 yum list installed 
вывести все установленные пакеты, соответствующие  args . Если аргумент не
совпадает с именами установленных пакетов, то он считается шаблоном
оболочки и выводятся все совпадения с ним.
 
 yum list extras 
вывести все установленные пакеты, которые не доступны в репозиториях.
 
 
 

   
 ПАРАМЕТРЫ ОЧИСТКИ 

Ниже приведены аргументы с которыми может быть запущен yum для
удаления информации из кэша.
 
 
 yum clean packages 
Удалить все пакеты из кэша этой системы. Обратите внимание, что после
скачивания пакеты не удаляются из кэша автоматически.
 
 yum clean headers 
Удалить все файлы, используемые yum для определения доступности
пакетов на удаленной стороне. Выполнение этой команды приведет к тому,
что при следующем запуске yum все заголовеи будут загружены заново.
 
 yum clean oldheaders 
Удалить старые заголовки, в которых yum более не использует для
определения доступности пакетов на удаленной стороне.
 
 yum clean [all] 
Выполнить  yum clean packages  и  yum clean oldheaders  как
описано выше.
 
 

   
 ФАЙЛЫ 

 /etc/yum.conf
/var/cache/yum/
 

 
 

   
 СМ. ТАКЖЕ 

 yum-arch (8), 

 yum.conf (5) 

 

   
 АВТОРЫ 

 Сет Видал (Seth Vidal) < skvidal@phy.duke.edu >
 

 
 

   
 ЗАМЕЧАНИЯ 

Конечно же программа написана без ошибок, однако если вы обнаружите
их, то сообщите о них в лист рассылки:  asplinux-support@lists.asplinux.ru .

 
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ОБЩИЕ КЛЮЧИ 
 ПАРАМЕТРЫ СПИСКОВ 
 ПАРАМЕТРЫ ОЧИСТКИ 
 ФАЙЛЫ 
 СМ. ТАКЖЕ 
 АВТОРЫ 
 ЗАМЕЧАНИЯ 
 
 
 
 
 
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