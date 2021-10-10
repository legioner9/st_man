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
 
 
 
 etcnet-options (5) >>  etcnet-options  (5)   ( Русские man: Форматы файлов ) 
   
 ИМЯ 

/etc/net опции интерфейса
   
 ОПИСАНИЕ 

 
   
 ОБЫЧНЫЕ ОПЦИИ 

 
 TYPE 

 
Эта опция определяет тип интерфейса. Это требуется, если тип интерфейса не может быть определен по имени интерфейса и если DISABLED не установлено.
 DISABLED 

 
Установите значение "yes" чтобы игнорировать интерфейс. Обратите внимание, что установив значение DISABLED
"yes" в ifaces/default/options и не имея "DISABLED=no"
в опциях, специфичных для интерфейса, файл фактически заблокирует ВСЕ интерфейсы.
 BOOTPROTO 

 
BOOTPROTO может быть любым из следующих: static, dhcp, ipv4ll.
* "static": использует ipv4address/ipv6address

Если вы не хотите приписать какой-либо адрес интерфейсу, но все же сохраняете его
поднятым и работающим, вы можете использовать 'static' и не иметь файлов ipv4address.
* "dhcp": запускает DHCP клиента
* "ipv4ll": запускает IPv4LL клиента (zcip)
Насколько известно, не существует работающей реализации DHCP для IPv6.
IPv4LL не требуется для IPv6, из-за link-scope адресов.
Дополнительные свойства -  multi-method конфигурации (методы могут быть разграничены
посредством ' ', ',' или '-':
* "dhcp-static": пробует DHCP, если неудачно, изменяет
* "dhcp-ipv4ll": то же, но возвращение к IPv4LL
* "dhcp-ipv4ll-static": пробует DHCP, возвращение к IPv4LL (ошибка очень маловероятна),
возвращение к статическому /etc/net попробует сконфигурировать интерфейс по методу первого
следующего. Обратите внимание что etcnet обрабатывает маршруты и правила несмотря на BOOTPROTO.
 ONBOOT 

 
Определяет, будет ли интерфейс автоматически запущен во время запуска системы или при вызове 'service network start'.
 USE_HOTPLUG 

 
Если установлено yes, iface будет пропущен при загрузке.
Обратите внимание, что стандартные hotplug вызывают /sbin/ifup и /sbin/ifdown.
Это должно быть заменено на /etc/net/scripts/ifup-removable and
/etc/net/scripts/ifdown-removable соответственно, если вы хотите использовать
etcnet с hotplug.
 USE_PCMCIA 

 
То же, что и для pcmcia_cs
 CONFIG_IPV4, CONFIG_IPV6, CONFIG_IPX 

 
Эти опции определяют, хотите ли вы выполнить конфигурацию определенного протокола или нет.
 CONFIG_QOS 

 
Эта опция разрешает конфигурацию Linux QoS. Эта тема раскрывается в руководстве etcnet-qos.
 CONFIG_WIRELESS 

 
Эта опция разрешает конфигурацию беспроводных соединений.
 CONFIG_FW 

 
Эта опция разрешает конфигурацию брандмауэра. Эта тема раскрывается в файле README.firewall.
 KEEP_DOWN 

 
Если установлено yes, интерфейс не будет поднят, но будет сконфигурирован. Маловероятно, что вам понадобится эта опция.
 DONT_FLUSH 

 
IPv4/IPv6. Не удалять существующие адреса из интерфейса до того как назначите новые. Также удалять адреса при переконфигурации.
 IFUP_CHILDREN 

 
Если установлено yes, вызвать ifup для всех дочерних (имеющих текущий интерфейс в списке REQUIRES) после установки текущего интерфейса.
 IFUP_PARENTS 

 
Если установлено yes, вызвать ifup для всех родительских (перечисленных в текущем списке REQUIRES) перед тем как будет установлен текущий интерфейс.
Обратите внимание: это не будет работать для ifplugd-контролируемых интерфейсов.
 IFDOWN_CHILDREN 

 
Если установлено yes, вызвать ifdown для всех дочерних (имеющих текущий интерфейс в списке REQUIRES) перед тем как текущий интерфейс прекратит работу.
 IFDOWN_PARENTS 

 
Если установлено yes, вызвать ifdown для всех родительских (перечисленных в текущем списке REQUIRES) после того как текущий интерфейс прекратит работу.
Обратите внимание: это не будет работать для ifplugd-контролируемых интерфейсов.
 
   
 Опции Ethernet 

 
 MODULE 

 
Имя модуля ядра (или список имен в кавычках), который должен быть загружен перед инициализацией интерфейса.
 USE_IFPLUGD 

 
Специальный метод конфигурации. Интерфейс будет создан, но
ни одна конфигурация не будет выполнена, пока кабель не будет подключен. Когда ifplugd
определит наличие кабеля, он запустит ifup-ifplugd для
завершения конфигурации. Значения:
no:   не использовать это свойство
yes:  организовать ifplugd для каждого подобного интерфейса
auto: то же что 'yes', если ifplugd доступен и карта поддерживает обнаружение сети
 PERSISTENT_IFPLUGD 

 
Два операционных режима возможны с USE_IFPLUGD=auto: постоянный ifplugd
(ifplugd будет запущен один раз и в дальнейшем при необходимости приостановлен/возобновлен) и
временный ifplugd (ifplugd будет остановлен при ifdown и запущен при ifup
каждый раз). Режим по умолчанию - сохранять ifplugd запущенным.
 IFPLUGD_EXTRA_ARGS 

 
/etc/net автоматически создаст список параметров ifplugd, но вы можете добавить дополнительные параметры к этой опции.
 LINKDETECT 

 
Опция LINKDETECT позволяет аннулировать время DHCP/IPv4LL, если кабель Ethernet не подключен во время запуска. Это свойство требует ifplugstatus
и выключено по умолчанию поскольку не все сетевые карты правильно сообщают состояние сети. Возможные значения: yes/no/auto.

 MACADDR_WAITTIME 

 
Некоторые модули сетевых карт сначала создают сетевое устройство, затем вызывают инициализацию и через некоторое время заполняют данные MAC-адреса.
Hotplug начинает работу немедленно после того, как создан  интерфейс, так что если вы указываете MAC-адрес в iftab, может произойти ошибка.
Если это значение ненулевое, /etc/net будет ждать определенное количество раз по 0.1 с пока MAC-адрес станет не 00:00:00:00:00:00.
ПРЕДУПРЕЖДЕНИЕ: ЭТО - ЭКСПЕРИМЕНТАЛЬНОЕ СВОЙСТВО!!!
 IWCONFIG 

 
Опциональный путь к iwconfig.
 WPA_SUPPLICANT 

 
Опциональный путь к wpa_supplicant.
 WPA_DRIVER 

 
Имя опционального WPA-драйвера, для попадания к wpa_supplicant.
 DHCP_CLIENT 

 
Полный путь к DHCP-клиенту. Текущие dhclient и dhcpcd распознаются и соответственно создается список опций командной строки.
 DHCP_ARGS 

 
Параметры дополнительного опционального DHCP-клиента.
 DHCP_HOSTNAME 

 
Возможные значения: 'localhost' (вычислить действительное имя host и отправить
DHCP серверу с опцией -h); 'AUTO' (получить имя хоста от DHCP сервера
с опцией -H); 'NONE' (ничего не посылать); любая другая строка (послать строку как имя хоста с -h). Значение 'AUTO' работает только с dhcpcd-клиентом.
 
   
 Опции IP-тоннеля 

 
 TUNTYPE 

 
Тип IP-тоннеля: 'ipip' (по умолчанию), 'gre' или 'sit'.
 TUNLOCAL 

 
Локальная точка тоннеля.
 TUNREMOTE 

 
Точка тоннеля на удаленной системе.
 TUNOPTIONS 

 
Добавить опции тоннеля (TTL, GRE-ключи и пр). Не устанавливайте здесь значение 'dev'.
 HOST 

 
Опциональный host-интерфейс. Если установлено, это имя будет использовано для опции 'dev'.
 
   
 Опции тоннеля IPSec 

По крайней мере один код или дайджест должен быть сконфигурирован.
CIPHERFILE и DIGESTFILE ищутся в каталоге iface.
Если определен CIPHER, CIPHERFILE тоже должен быть определен,
то же самое для DIGEST и DIGESTFILE.
 
 IPSECADM 

 
Опциональное местоположение ipsecadm.
 TUNLOCAL 

 
Локальная точка тоннеля.
 TUNREMOTE 

 
Точка тоннеля на удаленной системе.
 TUNSPI 

 
SPI должен быть определен для IPSec-тоннеля. SPI - шестнадцатеричное число, значения меньше чем 0x2000 зарезервированы.
 CIPHER 

 
Имя кода.
 CIPHERFILE 

 
Имя файла кода.
 DIGEST 

 
Имя дайджеста.
 DIGESTFILE 

 
Имя файла дайджеста.
 HOST 

 
Параметр "ipsecadm --nextdev".
 
   
 Опции VLAN 

 
 VCONFIG 

 
Опциональный путь к vconfig.
 NAMETYPE 

 
Опциональное название типа именования VLAN, подробности см. vconfig --help. Эта опция также используется при работе vlantab. Возможные значения: VLAN_PLUS_VID, VLAN_PLUS_VID_NO_PAD, DEV_PLUS_VID, DEV_PLUS_VID_NO_PAD (по умолчанию).
 HOST 

 
Требуемое родительское имя iface.
 VID 

 
Требуемый VLAN ID.
 
   
 Опции DVB  

 
 DVBTYPE 

 
Это обязательная опция. Текущие поддерживаемые значения:
ss223 для SkyStar-2 rev. 2.3, ss226 для SkyStar-2 rev. 2.6,
pentanet для Pent@NET, pentaval для  Pent@VALUE 
 
 

Опции SkyStar-2
 
 PID 

 
 SZAP 

 
 SZAP_ARGS 

 
 DVBNET 

 
 CHANNELS_CONF 

 
Для карт SkyStar вы можете указать местоположение channels.conf (по умолчанию 
channels.conf ищется в каталоге конфигурации интерфейса).
 
 

Опции Pent@NET 
 
 PENTANETT 

 
Местоположение pentanett
 PENTANET_CONF 

 
Имя файла config.
 
 

Опции  Pent@VALUE  
 
 PENTAVALT 

 
Местоположение pentavalt 
 PENTAVAL_CONF 

 
Имя файла config
 
   
 Опции соединения 

 
 IFENSLAVE 

 
 HOST 

 
 BONDMODE 

 
Рабочий режим (опционально). Возможные значения: 0 для round robin (по умолчанию),
1 для active-backup, 2 для xor, 3 для broadcast, 4 для IEEE 802.3ad
Агрегирование динамической связи.
 BONDOPTIONS 

 
Дополнительные опции. Они будет давать эффект в зависимости от интерфейса. Список из modinfo bond:
 

miimon:int: Интервал проверки линии в миллисекундах
 

updelay:int: Задержка перед установкой соединения в миллисекундах
 

downdelay:int: Задержка перед обрывом соединения в миллисекундах
 

use_carrier:int: Использовать netif_carrier_ok (против MII ioctls) в miimon; 0 для выключения, 1 для включения (по умолчанию)
 

primary:string: Первичное используемое сетевое устройство
 

lacp_rate:string: LACPDU tx частота запроса из 802.3ad partner (медленно/быстро)
 

arp_interval:int: arp-интервал в миллисекундах
 

arp_ip_target:string массив (мин = 1, макс = 16): arp-цели в виде n.n.n.n
 

 
   
 Опции моста 

 
 BRCTL 

 
Опциональная замена пути brctl.
 HOST 

 
Эта переменная должна быть определена для каждого интерфейса моста. Это строка в кавычках со списком ethernet-интерфейсов, разделенных пробелами. Не забывайте создавать конфигурации и для подчиненных интерфейсов.
 
   
 Опции PPP 

 

Этот раздел повторяет информацию страницы руководства  pppd (8).
 
 PPPTYPE 

 
PPP-подтип. Допустимые типы: dialup, pptp, pppoe.
Типы pptp и pptp полезны при правильно установленных переменных REQIURES и HOST соответственно. Подтип dialup добавит 'modem' к списку опций pppd.
 PPTP_SERVER 

 
Для подтипа "pptp" вы должны задать имя хоста или IP-адрес PPtP-сервера, к которому вы подключаетесь. В противном случае остается PPPTYPE=dialup.
 HOST 

 
pppoe-клиенту необходимо имя целевого интерфейса. Вы должны задать его в переменной HOST, create-ppp автоматически создаст правильную опцию pty для pppd. Эта опция обязательна если PPPTYPE=pppoe.
 PPPOE 

 
Опциональный путь pppoe.
 PPPOE_EXTRA_OPTIONS 

 
 PPTP 

 
Опциональный путь pptp-клиента.
 PPTP_EXTRA_OPTIONS 

 
 PPPD 

 
Опциональное местоположение pppd
 PPPOPTIONS 

 
Дополнительные параметры pppd. Обратите внимание, что файлы интерфейс-специфичных опций заменят PPPOPTIONS из options-ppp, без добавления.
 CHAT 

 
Опциональное местоположение chat
 CHATOPTIONS 

 
Опции chat (таймаут, полнота вывода информации и т.д.)
 PPPOPTIONSFILE 

 
 PPPINITCHAT 

 
 PPPCONNECTCHAT 

 
 PPPDISCONNECTCHAT 

 
 RESTORE_DEFAULTROUTE 

 
pppd не сохраняет маршрут по умолчанию. Мы могли бы сохранить и восстановить его с помощью ip-up/ip-down, но эта функция проделает это за нас.
 PPPTIMEOUT 

 
Ваша подключение по PPP не отключаться на большее количество секунд, чем задано в этой опции.
/etc/net будет использовать опции pppd lcp-echo-interval и lcp-echo-failure, если эта опция установлена.
 
 
   
 ПЕРЕВОД 

Vsevolod Khalizev < vkhalizev@gmail.com > 2007.

 
   Index 
 
 ИМЯ 
 ОПИСАНИЕ 
 ОБЫЧНЫЕ ОПЦИИ 
 Опции Ethernet 
 Опции IP-тоннеля 
 Опции тоннеля IPSec 
 Опции VLAN 
 Опции DVB  
 Опции соединения 
 Опции моста 
 Опции PPP 
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