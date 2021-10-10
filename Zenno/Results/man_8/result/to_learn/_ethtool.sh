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
 
 
 
 ethtool (8) >>  ethtool  (8)   ( Русские man: Команды системного администрирования )   ethtool  (8)   ( Linux man: Команды системного администрирования ) 
   
 НАЗВАНИЕ 

ethtool - Отображает или позволяет изменить настройки сетевой карты
   
 СИНТАКСИС 

 ethtool 

 ethX 

 
 ethtool -h 

 
 ethtool -a 

 ethX 

 
 ethtool -A 

 ethX 


[ autoneg   on | off ]


[ rx   on | off ]


[ tx   on | off ]

 
 ethtool -c 

 ethX 

 
 ethtool -C 

 ethX 


[ adaptive-rx   on | off ]


[ adaptive-tx   on | off ]

[ rx-usecs 

 N ]

[ rx-frames 

 N ]

[ rx-usecs-irq 

 N ]

[ rx-frames-irq 

 N ]

[ tx-usecs 

 N ]

[ tx-frames 

 N ]

[ tx-usecs-irq 

 N ]

[ tx-frames-irq 

 N ]

[ stats-block-usecs 

 N ]

[ pkt-rate-low 

 N ]

[ rx-usecs-low 

 N ]

[ rx-frames-low 

 N ]

[ tx-usecs-low 

 N ]

[ tx-frames-low 

 N ]

[ pkt-rate-high 

 N ]

[ rx-usecs-high 

 N ]

[ rx-frames-high 

 N ]

[ tx-usecs-high 

 N ]

[ tx-frames-high 

 N ]

[ sample-interval 

 N ]

 
 ethtool -g 

 ethX 

 
 ethtool -G 

 ethX 

[ rx 

 N ]

[ rx-mini 

 N ]

[ rx-jumbo 

 N ]

[ tx 

 N ]

 
 ethtool -i 

 ethX 

 
 ethtool -d 

 ethX 

 
 ethtool -e 

 ethX 


[ raw   on | off ]

[ offset 

 N ]

[ length 

 N ]

 
 ethtool -k 

 ethX 

 
 ethtool -K 

 ethX 


[ rx   on | off ]


[ tx   on | off ]


[ sg   on | off ]

 
 ethtool -p 

 ethX 

 [ N ] 

 
 ethtool -r 

 ethX 

 
 ethtool -S 

 ethX 

 
 ethtool -t 

 ethX 


[ offline | online ]

 
 ethtool -s 

 ethX 


[ speed   10 | 100 | 1000 ]


[ duplex   half | full ]


[ port   tp | aui | bnc | mii ]


[ autoneg   on | off ]

[ phyad 

 N ]


[ xcvr   internal | external ]

[ wol   p | u | m | b | a | g | s | d ...]

[ sopass   xx : yy : zz : aa : bb : cc ]

[ msglvl 

 N ]

   
 ОПИСАНИЕ 

 ethtool 

используется для чтения, отображения настроек сетевого устройства и их настройки.
 
 ethX 

является названием того сетевого устройства, которое настраивают или, для которого определяют
характеристики. Обычно X=0,1,2..
 
   
 ПАРАМЕТРЫ 

При использовании большинства параметров для
 ethtool 

должно быть задано то название устройства, по отношению к которому предпринимаются действия.
Для визуальной идентификации устройства используйте параметр  -p  (см.ниже).
Например, следующая команда отображает текущие настройки сетевой карты eth0:
 

 # ethtool eth0 
 

Settings for eth0 (Установки для eth0):
 

         Supported ports: [ TP MII ] 
 

         (Поддерживаемые порты) 
 

 
 

         Supported link modes:   10baseT/Half 10baseT/Full 
 

         (Поддерживаемые режимы связи, тип носителя)  
 

                                 100baseT/Half 100baseT/Full  
 

         Supports auto-negotiation: Yes 
 

         (Поддержка авто-согласования: Да) 
 

 
 

         Advertised link modes:  10baseT/Half 10baseT/Full 
 

         (Оповещаемые режимы связи, тип носителя) 
 

                                 100baseT/Half 100baseT/Full  
 

 
 

         Advertised auto-negotiation: Yes 
 

         (Оповещение авто-согласования: Да) 
 

 
 

         Speed: 100Mb/s 
 

         (Текущая скорость приёма/передачи: 100 Mбит/с) 
 

 
 

         Duplex: Full 
 

         (Режим двухстороннего обмена: Полный) 
 

 
 

         Port: Twisted Pair 
 

         (Подключение: Витая пара) 
 

 
 

         PHYAD: 1 
 

 
 

         Transceiver: internal 
 

         (Приёмо-передатчик: Внутренний) 
 

 
 

         Auto-negotiation: on 
 

         (Режим авто-согласования: Вкл.) 
 

 
 

         Supports Wake-on: puag 
 

         (Поддержка режимов "пробуждение": puag) 
 

 
 

         Wake-on: g 
 

         (Текущий режим "пробуждение": g) 
 

 
 

         Link detected: yes 
 

         (Обнаружение соединения: да) 
 

--------------
 
 -h 

 
выводит краткую справку о команде и примерах параметров.
 -a 

 
запрашивает и отображает настройки параметров ожидания для указанного сетевого устройства.
Например:
 
 

 # ethtool -a eth0  
 

Pause parameters for eth0:
 

(Параметры ожидания для eth0)
 

Autonegotiate:   off 
 

(Авто-согласование: выкл.)
 

RX:               off 
 

TX:               off 
 
 -A 

 
позволяет изменить параметры ожидания для указанного сетевого устройства.
 
 autoneg   on | off 

 
Включает (on) или отключает (off) режим авто-согласования (аutonegotiation), если он является
доступным. Режим авто-согласования предполагает, что сетевое устройство само определяет
присутствует ли двусторонний обмен и сколько мегабит он составляет. Например:
 
 

 # ethtool -A eth0 autoneg on 
 

 # ethtool -a eth0  
 

Pause parameters for eth0:
 

Autonegotiate:   on 
 

(Авто-согласование: вкл.)
 

RX:               on 
 

TX:               on 
 
 
 
 rx   on | off 

 
Включает (on) или отключает (off) режим ожидания RX, если он является доступным.
 
 tx   on | off 

 
Включает (on) или отключает (off) режим ожидания TX, если он является доступным.
 -c 

 
запрашивает и отображает настройки объединённых параметров для указанного сетевого устройства.
 -C 

 
позволяет изменить настройки объединённых параметров для указанного сетевого устройства.
 -g 

 
запрашивает и отображает настройки параметров rx/tx для указанного сетевого устройства.
Например:
 
 

 # ethtool -g eth0 
 

Ring parameters for eth0:
 

Pre-set maximums (Максимально возможные):
 

RX:               1024 
 

RX Mini:         0 
 

RX Jumbo:        0 
 

TX:               1024 
 

Current hardware settings (Текущие аппаратные установки):
 

RX:               64 
 

RX Mini:         0 
 

RX Jumbo:        0 
 

TX:               64 
 
 
 -G 

 
позволяет изменить настройки rx/tx ring параметров для указанного сетевого устройства.
 rx  N 

 
позволяет изменить число ring подключений N для Rx ring. Например:
 
 

 # ethtool -G eth0 rx 1024 
 
 
 rx-mini  N 

 
позволяет изменить число ring подключений N для Rx Mini ring.
 rx-jumbo  N 

 
позволяет изменить число ring подключений N для Rx Jumbo ring.
 tx  N 

 
позволяет изменить число ring подключений N для Tx ring.
 -i 

 
отображает ассоциированный с указанным сетевым устройством драйвер и его версию.
Например:
 
 

 # ethtool -i eth0 
 

driver: e100
 

version: 2.3.38-k1
 

firmware-version: N/A
 

bus-info: 02:08.0
 
 
 -d 

 
получает и отображает дамп состояния регистров для указанного сетевого устройства.
 -e 

 
получает и отображает дамп EEPROM (микросхема памяти) для указанного сетевого устройства
(если EEPROM есть в данном сетевом устройстве).
Если возможен низкоуровневый доступ (raw on), тогда выводятся низкоуровневые данные EEPROM.
Указание длины ( length ) и смещения ( offset ) в параметрах позволяют получать дампы с
определённой порцией данных EEPROM. По умолчанию отображается полный дамп вхождений EEPROM.
Например:
 
 

 # ethtool -e eth0 raw off offset 30 length 10 
 

Offset   Value 
 

--------         ----- 
 

30       0x00 
 

31       0x00 
 

32       0x00 
 

33       0x00 
 

34       0x00 
 

35       0x00 
 

36       0x00 
 

37       0x00 
 

38       0x00 
 

39       0x00 
 
 
 -k 

 
запрашивает и отображает информацию по контрольным суммам для указанного сетевого устройства.
 -K 

 
позволяет изменить параметры контроля сумм для указанного сетевого устройства.
 
 rx   on | off 

 
Настраивает контроль сумм для RX, если эта функция поддерживается сетевым устройством.
 
 tx   on | off 

 
Настраивает контроль сумм для TX, если эта функция поддерживается сетевым устройством.
 
 sg   on | off 

 
Настраивает режим "произвольной упаковки" (scatter-gather), если он поддерживается
сетевым устройством.
 -p 

 
позволяет инициировать (пометить) данное сетевое устройство таким образом, чтобы
вы смогли наиболее легко, визуально отличить его от таких же других, рядом работающих устройств.
Обычно этот параметр включает постоянное мигание одного или нескольких световых LED-индикаторов
заданного сетевого устройства. После определения устройства, прервать работу команды
 # ethtool -p ethX  можно нажав <Ctrl+c>.
 N 

 
Задаёт для параметра  p  длительность (в секундах) выполнения мигания. Например, для 30 секунд: 
 
 

 # ethtool -p eth0 30 
 
 
 -r 

 
перезапуск режима авто-согласования, если он доступен.
 -S 

 
запрашивает и отображает для указанного сетевого устройства NIC- и драйвер-специфичную статистику.
 -t 

 
с помощью соответствующего сетевому устройству драйвера, выполняет его само-тестирование.
Возможные следующие режимы тестирования:
 
 offline | online 

 
, которые определяют тип теста: 
 offline 

(по умолчанию) означает выполнять полный комплекс тестов и в случае необходимости 
в течении тестирования прерывать текущие операции адаптера.
 online 

означает выполнять сокращенные тесты не прерывая текущие операции адаптера.
 -s 

 
параметр позволяет изменить некоторые или все установки для указанного сетевого устройства.
Все следующие параметры применяются в том случае, если параметр
 -s 

был указан.
 
 speed   10 | 100 | 1000 

 
Устанавливает скорость обмена данными в Мбит/сек. Возможные значения скорости, поддерживаемые
данным сетевым устройством можно определить, вызвав   ethtool ethX .
 
 duplex   half | full 

 
Устанавливает полу- или полный режим двусторонней передачи данных.
 
 port   tp | aui | bnc | mii 

 
Указывает порт для устройства.
 
 autoneg   on | off 

 
Настраивает режим авто-согласования, если он поддерживается данным устройством.
Обычно этот режим включен, но в случае возникновения проблем с некоторыми устройствами,
вы можете его отключить.
 

Таким образом, решить проблему перенастройки режима работы сетевого устройства, например,
сразу во время загрузки операционной системы можно, создав исполняемый файл-скрипт
 

 /etc/rc.d/rc.local ,
 

содержащий, к примеру, такие настройки:
 

#!/bin/sh
 

/usr/sbin/ethtool -s eth0 speed 10 duplex full autoneg off
 

----------
 phyad  N 

 
PHY адрес.
 
 xcvr   internal | external 

 
Позволяет задать тип приёмо-передатчика. В настоящее время могут быть указаны только
внутренний (internal) и внешний (external) тип. В будущем, с появлением новых типов,
они также будут здесь добавлены.
 wol   p | u | m | b | a | g | s | d ...

 
Устанавливает различные параметры "Пробуждения" (Wake-on-LAN) устройства. Не все устройства
поддерживают эту возможность. Аргументом для этого параметра является строка символов, задающая
активизируемые функции "Пробуждения":
 

 
 p 

 
при физической активности
 u 

 
при получении unicast сообщения
 m 

 
при получении multicast сообщения
 b 

 
при получении broadcast сообщения
 a 

 
при получении ARP запроса
 g 

 
при получении MagicPacket(tm)
 s 

 
Активировать SecureOn(tm) пароль для MagicPacket(tm)
 d 

 
Отключить все функции "Пробуждения". Этот параметр очищает все предыдущие настройки
"Пробуждения".

 
 

 sopass  xx : yy : zz : aa : bb : cc 
Устанавливает SecureOn(tm) пароль. Аргумент для этого параметра должен состоять из 6 байт
в формате ethernet MAC ( xx : yy : zz : aa : bb : cc ).
 msglvl  N 

 
Установка уровня информативности сообщений драйвера. Может быть задан различный уровень
для каждого драйвера.
 
   
 ОШИБКИ 

Не поддерживаются (поддерживаются только некоторые) абсолютно все сетевые устройства.
   
 АВТОР 

 ethtool 

была написана David Miller.
 
Изменения и улучшения добавлены: 
Jeff Garzik, 
Tim Hockin,
Jakub Jelinek,
Andre Majorel,
Eli Kupermann.
   
 AVAILABILITY 

 ethtool 

доступна через Web на сайте SourceForge
 http://sourceforge.net/projects/gkernel/ 

   
 ПЕРЕВОД 

оригинального файла на английском ethtool.8.gz (2457 байт от 22.10.2002)
(+примеры) выполнен Aleksander N.Gorohovski < angel@feht.dgtu.donetsk.ua > 01.05.2006.
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ПАРАМЕТРЫ 
 ОШИБКИ 
 АВТОР 
 AVAILABILITY 
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