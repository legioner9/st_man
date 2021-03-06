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
 
 
 
 vz.conf (5) >>  vz.conf  (5)   ( Русские man: Форматы файлов ) 
   
 ИМЯ 

vz - глобальный файл конфигурации OpenVZ
   
 ОБЗОР 

/etc/vz/vz.conf
   
 ОПИСАНИЕ 

Это глобальный файл конфигурации для OpenVZ. Он состоит из строк формата
 

 ПАРАМЕТР =" ЗНАЧЕНИЕ "
 

Все имена параметров и значения чувствительны к регистру.
Кавычки, окружающие  значение  обязательны, если значение содержит пробелы, и
не обязательны в других случаях. Дополнительные пробелы не разрешены. Все
нераспознанные строки игнорируются.
   
 Глобальные параметры 

 
 VIRTUOZZO = yes | no 
Этот параметр может быть установлен в  yes  или  no , и используется
скриптом  /etc/init.d/vz . В случае, если параметр не установлен в
 yes , ничего не будет сделано для запуска OpenVZ на этом узле.
 LOCKDIR = каталог 
Указывает каталог для сохранения файлов блокировки.
 VE0CPUUNITS = число 
Этот параметр устанавливает значение  cpuunits  для VE0.
 LOGGING = yes | no 
Включает или выключает журналирование. Параметр может быть установлен в  yes  или
 no , по умолчанию используется  yes .
 LOGFILE = файл 
Устанавливает путь к файлу журнала, по умолчанию используется
/var/log/vzctl.log.
 LOG_LEVEL = число 
Устанавливает уровень журналирования. Чем больше  число , тем больше
информации будет записано в журнал.
 VERBOSE = число 
Устанавливает уровень подробности при выводе. По умолчанию используется 0.
 MODULES_DISABLED = yes | no 
Если значение этого параметра установлено в  yes , скрипт инициализации
не будет пытаться загружать модули ядра OpenVZ. Это полезно на
системах, в которых специфичные для OpenVZ функции вкомпилированы в ядро
(т.е. не являются модулями).
 
   
 Параметры дисковой квоты. 

 
 DISK_QUOTA = yes | no 
В случае, если значение установлено в  no , квотирование на дисковых операциях будет отключено.
 VZFASTBOOT = yes | no 
Этот параметр используется скриптом /etc/init.d/vz start. Если
параметр установлен в  yes , для виртуальной среды (VE, Virtual Environment), которая была 
некорректно завершена, будет отключено квотирование.
 
   
 Параметры сетевых интерфейсов 

 
 VE_ROUTE_SRC_DEV = устройство 
Этот параметр указывает имя сетевого устройства, ip адрес которого будет
использован, как ip источника. Если на физической среде сконфигурировано больше одного сетевого
интерфейса и требуется указать ip адрес источника, укажите
соответствующее  устройство . По умолчанию используется первое в списке
сетевых устройств.
 TEMPLATE = каталог 
Каталог, в котором хранятся все данные шаблонов VE.
 
   
 Значения по умолчанию для VE. 

Перечисленные ниже параметры - это значения по умолчанию для VE, и они могут быть
переопределены параметрами в файлах конфигурации отдельных VE.
 
 VE_ROOT = каталог 
 Каталог , который служит корневой точкой
монтирования VE. Значение должно содержать строку
 $VEID , вместо которой будет подставлено реальное значение VE ID.
 VE_PRIVATE = каталог 
Значение этого параметра - это  каталог , в котором хранятся все файлы и
каталоги, специфичные для данного VE. Значение должно
содержать строку  $VEID , вместо которой будет подставлено реальное
числовое значение VE ID.
 CONFIGFILE = имя 
Указывает конфигурационный файл при создании VE, соответствует
опции --config.
 
 

Любой другой параметр, который появляется в файлах конфигурации PE
 vps.conf (5) может быть также задан здесь. Однако, рекомендуется
указывать только параметры  TEMPLATE ,  VE_PRIVATE  и  VE_ROOT  в этих
конфигурационных файлах, а все остальные параметры, относящиеся к VE, - в файлах
конфигурации отдельных VE.
   
 СМ. ТАКЖЕ 

 vzctl (8),

 vps.conf (5).

   
 АВТОРСКИЕ ПРАВА 

Copyright (C) 2000-2007, SWsoft. Распространяется на условиях GNU GPL.
   
 ПЕРЕВОД 

Перевод с английского Виктор Ерёмин < ErV2005@rambler.ru > 2007

 
   Index 
 
 ИМЯ 
 ОБЗОР 
 ОПИСАНИЕ 
 
 Глобальные параметры 
 Параметры дисковой квоты. 
 Параметры сетевых интерфейсов 
 Значения по умолчанию для VE. 
 
 СМ. ТАКЖЕ 
 АВТОРСКИЕ ПРАВА 
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