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
 
 
 
 dhcp-options (5)   dhcp-options  (5)   ( FreeBSD man: Форматы файлов ) >>  dhcp-options  (5)   ( Русские man: Форматы файлов )   dhcp-options  (5)   ( Linux man: Форматы файлов ) 
 
 
 
   
 ИМЯ 

 
dhcp-options - Параметры конфигурации DHCP
 

Протокол DHCP позволяет клиентам получать параметры с сервера, описывающие конфигурацию сети
и сервисы доступные клиенту. При настройке  dhcpd (8) 
параметры задаются в файле конфигурации  dhcpd.conf (5) 
Синтаксис используемых параметров, их названия и формат описаны в этом документе.
 
 
   
 ОПИСАНИЕ ПАРАМЕТРОВ 

 
 

Параметры в DHCP описываются с помощью ключевого слова  option 
и следующих за ним названий параметра и его значения. Названия параметров и их формат
описаны ниже. Нет необходимости указывать все параметры при конфигурации, достаточно указать
только те что действительно необходимы. 
 
 

Значения параметров могут быть в нескольких форматах:
 

 
 ip-address  - значения могут быть представлены в виде IP-адреса или как доменное имя. В случае когда 
указывается доменное имя, необходимо убедиться что оно соответствует единственному IP-адресу.
 
 

 
 int32 
значение является 32-битным целым со знаком.
 
 uint32 
значение является 32-битным целым без знака.
 
 int16  и  uint16 
значение может быть 16-битным целым со знаком или без, соответственно.
 
 int8  и  uint8 
значение может быть 8-битным целым со знаком или без, соответственно.
Unsigned 8-bit integers are also sometimes referred to as octets.
 
 

 string 
значение являющееся строкой NVT ASCII, которая должна быть заключена в двойные кавычки. Например, для указания 
имени домена используется следующая форма:
 
 
         option domain-name &quot;isc.org&quot;;
 
 
 

 flag 
Булевский параметр, имеющий значение &quot;true&quot; или &quot;fasle&quot; (ну или &quot;on&quot; / &quot;off&quot;
  - как вам больше нравиться) 
 
 

 data-string 
параметр является строкой NVT ASCII, заключенной в двойные кавычки, или последовательность октетов в шестнадцатеричном
формате, разделенных двоеточиями. На пример:
 
 
         option dhcp-client-identifier &quot;CLIENT-FOO&quot;;
         или 
         option dhcp-client-identifier 43:4c:49:45:54:2d:46:4f:4f;
 
 
 

 
Информация о различных параметрах приведенная ниже, взята из последних
документов IETF описывающих DHCP. Параметры названия которых не перечислены
могут быть определены в форме: 
option- nnn , где   nnn  десятичный код параметра, далее может
следовать строка в двойных кавычках или последовательность шестнадцатеричных значений, разделенных двоеточиями.
На пример:
 

 
 
         option option-133 &quot;my-option-133-text&quot;;
         option option-129 1:54:c9:2b:47;
 
 
 

В виду того что демону dhcpd не известен формат этих параметров - проверка их правильности не производиться.
 
 

Стандартными параметрами являются следующие:
 
 

 
 option subnet-mask  ip-address ; 
 
 
 

Задает маску подсети клиента, согласно RFC 950. В случае если параметр не указан, dhcpd использует
значение маски подсети в которой находится используемый сервером адрес. 
 
 
 

 
 option time-offset  int32 ; 
 
 
 

Задает значение смещения времени на клиенте относительно Coordinated Universal Time (UTC), в секундах.
 
 
 

 
 option routers  ip-address  [ ,   ip-address ...] ; 
 

 
Список IP адресов маршрутизаторов для клиентской сети. Маршрутизаторы должны быть перечислены
в порядке предпочтительности.
 
 
 

 option time-servers  ip-address  [,  ip-address ...] ; 
 
 

Список серверов времени, соответствующих RFC 868, доступных клиенту.
Сервера должны быть перечислены в порядке предпочтительности.
 
 
 

 
 option ien116-name-servers   ip-address  [ ,   ip-address ...];
 
 

Список IEN 116 name servers доступных для клиента.
Сервера должны быть перечислены в порядке предпочтительности.
 
 
 

 
 option domain-name-servers   ip-address  [ ,   ip-address ...] ; 
 
 

Список DNS серверов (STD 13, RFC 1035), доступных клиенту.
Сервера должны быть перечислены в порядке предпочтительности.
 
 
 

 
 option log-servers   ip-address  [ ,   ip-address ...] ; 
 
 

Список MIT-LCS UDP log servers, доступных клиенту.
Сервера должны быть перечислены в порядке предпочтительности.
 
 
 

 
 option cookie-servers   ip-address  [ ,   ip-address ...] ; 
 
 

Список cookie-серверов соответствующих RFC 865, доступных клиенту.
Сервера должны быть перечислены в порядке предпочтительности.
 
 
 

 
 option lpr-servers   ip-address   [ ,   ip-address ...] ; 
 
 

Список принт-серверов соответствующих RFC 1179, доступных клиенту.
Сервера должны быть перечислены в порядке предпочтительности.
 
 
 

 
 option impress-servers   ip-address  [ ,   ip-address ...] ; 
 
 

Список Imagen Impress серверов, доступных клиенту.
Сервера должны быть перечислены в порядке предпочтительности.
 
 
 

 
 option resource-location-servers   ip-address  [ ,   ip-address ...] ; 
 
 

Список Resource Location серверов соответствующих RFC 887, доступных клиенту.
Сервера должны быть перечислены в порядке предпочтительности.
 
 
 

 
 option host-name   string ; 
 
 
 

Параметр задает имя клиента. Имя может быть или не быть дополнено именем домена (предпочтительнее
использовать параметр domain-name для указания имени домена)
 
 
 

 
 option boot-size   uint16 ; 
 
 
 

Задает размер (в 512-байтных блоках) загрузочного образа для клиента.
 
 
 

 
 option merit-dump   string ; 
 
 
 

Позволяет задать путь к файлу, куда будет сброшен дамп, в случае краха клиента.
 
 
 

 
 option domain-name   string ; 
 
 
 

Параметр задает доменное имя, которое клиенты используют при запросах к DNS, при разрешении имен.
 
 
 

 
 option swap-server   ip-address ; 
 
 
 

Задает адрес клиентского swap сервера.
 
 
 

 
 option root-path   string ; 
 
 
 

Параметр задает путь к клиентскому корневому каталогу.
 
 
 

 
 option ip-forwarding   flag ; 
 
 
 

Параметр определяет возможность пересылки пакетов на клиенте.
Значение 0 означает запрет пересылки, 1 - разрешает пересылку пакетов.
 
 
 

 
 option non-local-source-routing   flag ; 
 
 
 

Значение параметра определяет возможность пересылки датаграмм с non-local source routes.
Значение 0 означает запрет на пересылку таких датаграмм, а значение 1 разрешает их пересылку.
 
 
 

 
 option policy-filter   ip-address ip-address  [ ,   ip-address ip-address ...] ; 
 
 

 
This option specifies policy filters for non-local source routing.
The filters consist of a list of IP addresses and masks which specify
destination/mask pairs with which to filter incoming source routes.
 

 
Any source routed datagram whose next-hop address does not match one
of the filters should be discarded by the client.
 

 
See STD 3 (RFC1122) for further information.
 
 
 

 
 option max-dgram-reassembly   uint16 ; 
 
 
 

 
This option specifies the maximum size datagram that the client
should be prepared to reassemble.  The minimum value legal value is
576.
 
 
 

 
 option default-ip-ttl   uint8; 
 
 
 

Значение которое на клиенте будет использовано по умолчанию для TTL в исходящих датаграммах.
 
 
 

 
 option path-mtu-aging-timeout   uint32 ; 
 
 
 

 
This option specifies the timeout (in seconds) to use when aging Path
MTU values discovered by the mechanism defined in RFC 1191.
 
 
 

 
 option path-mtu-plateau-table   uint16  [ ,   uint16 ...] ; 
 
 

 
This option specifies a table of MTU sizes to use when performing
Path MTU Discovery as defined in RFC 1191.  The table is formatted as
a list of 16-bit unsigned integers, ordered from smallest to largest.
The minimum MTU value cannot be smaller than 68.
 
 
 

 
 option interface-mtu   uint16 ; 
 
 
 

 
This option specifies the MTU to use on this interface.   The minimum
legal value for the MTU is 68.
 
 
 

 
 option all-subnets-local   flag ; 
 
 
 

 
This option specifies whether or not the client may assume that all
subnets of the IP network to which the client is connected use the
same MTU as the subnet of that network to which the client is
directly connected.  A value of 1 indicates that all subnets share
the same MTU.  A value of 0 means that the client should assume that
some subnets of the directly connected network may have smaller MTUs.
 
 
 

 
 option broadcast-address   ip-address ; 
 
 
 

Параметр задает широковещательный адрес клиентской подсети. Корректные значения широковещательных
адресов указаны в секции 3.2.1.3 of STD 3 (RFC1122).
 
 
 

 
 option perform-mask-discovery   flag ; 
 
 
 

Указывает должен ли клиент определять маску подсети посредством запросов ICMP.
Значение 0 указывает что клиент не должен выполнять процедуру определения маски,
1 разрешает клиенту определять маску подсети используя ICMP.
 
 
 

 
 option mask-supplier   flag ; 
 
 
 

 
This option specifies whether or not the client should respond to
subnet mask requests using ICMP.  A value of 0 indicates that the
client should not respond.  A value of 1 means that the client should
respond.
 
 
 

 
 option router-discovery   flag ; 
 
 
 

 
This option specifies whether or not the client should solicit
routers using the Router Discovery mechanism defined in RFC 1256.
A value of 0 indicates that the client should not perform
router discovery.  A value of 1 means that the client should perform
router discovery.
 
 
 

 
 option router-solicitation-address   ip-address ; 
 
 
 

 
This option specifies the address to which the client should transmit
router solicitation requests.
 
 
 

 
 option static-routes   ip-address ip-address  [ ,   ip-address ip-address ...] ; 
 
 

 
This option specifies a list of static routes that the client should
install in its routing cache.  If multiple routes to the same
destination are specified, they are listed in descending order of
priority.
 

 
The routes consist of a list of IP address pairs.  The first address
is the destination address, and the second address is the router for
the destination.
 

 
The default route (0.0.0.0) is an illegal destination for a static
route.  To specify the default route, use the
 routers 
 
option.
 
 
 

 
 option trailer-encapsulation   flag ; 
 
 
 

 
This option specifies whether or not the client should negotiate the
use of trailers (RFC 893 [14]) when using the ARP protocol.  A value
of 0 indicates that the client should not attempt to use trailers.  A
value of 1 means that the client should attempt to use trailers.
 
 
 

 
 option arp-cache-timeout   uint32 ; 
 
 
 

 
This option specifies the timeout in seconds for ARP cache entries.
 
 
 

 
 option ieee802-3-encapsulation   flag ; 
 
 
 

 
This option specifies whether or not the client should use Ethernet
Version 2 (RFC 894) or IEEE 802.3 (RFC 1042) encapsulation if the
interface is an Ethernet.  A value of 0 indicates that the client
should use RFC 894 encapsulation.  A value of 1 means that the client
should use RFC 1042 encapsulation.
 
 
 

 
 option default-tcp-ttl   uint8 ; 
 
 
 

 
This option specifies the default TTL that the client should use when
sending TCP segments.  The minimum value is 1.
 
 
 

 
 option tcp-keepalive-interval   uint32 ; 
 
 
 

 
This option specifies the interval (in seconds) that the client TCP
should wait before sending a keepalive message on a TCP connection.
The time is specified as a 32-bit unsigned integer.  A value of zero
indicates that the client should not generate keepalive messages on
connections unless specifically requested by an application.
 
 
 

 
 option tcp-keepalive-garbage   flag ; 
 
 
 

 
This option specifies the whether or not the client should send TCP
keepalive messages with a octet of garbage for compatibility with
older implementations.  A value of 0 indicates that a garbage octet
should not be sent. A value of 1 indicates that a garbage octet
should be sent.
 
 
 

 
 option nis-domain   string ; 
 
 
 

 
This option specifies the name of the client's NIS (Sun Network
Information Services) domain.  The domain is formatted as a character
string consisting of characters from the NVT ASCII character set.
 
 
 

 
 option nis-servers   ip-address  [ ,   ip-address ...
 
] ; 
 
 

 
This option specifies a list of IP addresses indicating NIS servers
available to the client.
Сервера должны быть перечислены в порядке предпочтительности.
 
 
 

 
 option ntp-servers   ip-address  [ ,   ip-address ...
 
] ; 
 
 

 
This option specifies a list of IP addresses indicating NTP (RFC 1035)
servers available to the client. 
Сервера должны быть перечислены в порядке предпочтительности.
 
 
 

 
 option netbios-name-servers   ip-address  [ ,   ip-address ...] ; 
 
 

 
Задает список серверов имен NetBIOS (NBNS), соответствующих RFC 1001/1002
Сервера должны быть перечислены в порядке предпочтительности.
Сервера имен NetBIOS так же известны как сервера WINS. 
 
 
 

 
 option netbios-dd-server   ip-address  [ ,   ip-address ...
 
] ; 
 
 

 
The NetBIOS datagram distribution server (NBDD) option specifies a
list of RFC 1001/1002 NBDD servers.
Сервера должны быть перечислены в порядке предпочтительности.
 
 
 

 
 option netbios-node-type   uint8 ; 
 
 
 

Параметр позволяет сконфигурировать тип узла, т.е. способ разрешения имен
клиентами NetBIOS over TCP/IP. 
 

Возможные значения параметра:
 

 
 
 1 
 
 
B-node (Broadcast): Разрешение имен с помощью широковещательных запросов, WINS не используется.
 2 
 
 
P-node (Peer): Используется только WINS.
 4 
 
 
M-node (Mixed): Смешанный тип, сначала используется широковещательный запрос, затем в случае неудачи - WINS
 8 
 
 
H-node (Hybrid): Смешанный наоборот :)  WINS, а затем broadcast.
 
 
 
 

 
 option 
 
 netbios-scope 
 
 string ; 
 
 
 

 
The NetBIOS scope option specifies the NetBIOS over TCP/IP scope
parameter for the client as specified in RFC 1001/1002. See RFC1001,
RFC1002, and RFC1035 for character-set restrictions.
 
 
 

 
 option font-servers   ip-address  [ ,   ip-address ...
 
] ; 
 
 

 
This option specifies a list of X Window System Font servers available
to the client.
Сервера должны быть перечислены в порядке предпочтительности.
 
 
 

 
 option x-display-manager   ip-address  [ ,   ip-address ...
 
] ; 
 
 

 
This option specifies a list of systems that are running the X Window
System Display Manager and are available to the client. 
Адреса должны быть перечислены в порядке предпочтительности.
 
 
 

 
 option dhcp-client-identifier   data-string ; 
 
 
 

 
This option can be used to specify the a DHCP client identifier in a
host declaration, so that dhcpd can find the host record by matching
against the client identifier.
 
 
 option nisplus-domain   string ; 
 
 
 

 
This option specifies the name of the client's NIS+ domain.  The
domain is formatted as a character string consisting of characters
from the NVT ASCII character set.
 
 
 option nisplus-servers   ip-address  [ ,   ip-address ...
 
] ; 
 
 

 
Список серверов NIS+, доступных клиенту.
Сервера должны быть перечислены в порядке предпочтительности.
 
 
 

 
 option tftp-server-name   string ; 
 
 
 

 
This option is used to identify a TFTP server and, if supported by the
client, should have the same effect as the  server-name 
declaration.   BOOTP clients are unlikely to support this option.
Some DHCP clients will support it, and others actually require it.
 
 
 

 
 option bootfile-name   string ; 
 
 
 

 
This option is used to identify a bootstrap file.  If supported by the
client, it should have the same effect as the  filename 
declaration.  BOOTP clients are unlikely to support this option.  Some
DHCP clients will support it, and others actually require it.
 
 
 

 
 option mobile-ip-home-agent   ip-address  [ , 
 
 ip-address ... ] ; 
 
 

 
This option specifies a list of IP addresses indicating mobile IP
home agents available to the client.  Agents should be listed in
order of preference, although normally there will be only one such
agent.
 
 
 

 
 option smtp-server   ip-address  [ , 
 
 ip-address ... ] ; 
 
 

 
Список SMTP серверов, доступных клиенту.
Сервера должны быть перечислены в порядке предпочтительности.
 
 
 

 
 option pop-server   ip-address  [ , 
 
 ip-address ... ] ; 
 
 

Список POP серверов, доступных клиенту.
Сервера должны быть перечислены в порядке предпочтительности.
 
 
 

 
 option nntp-server   ip-address  [ , 
 
 ip-address ... ] ; 
 
 

Список NNTP серверов, доступных клиенту.
Сервера должны быть перечислены в порядке предпочтительности.
 
 
 

 
 option www-server   ip-address  [ , 
 
 ip-address ... ] ; 
 
 

Список WWW серверов, доступных клиенту.
Сервера должны быть перечислены в порядке предпочтительности.
 
 
 

 
 option finger-server   ip-address  [ , 
 
 ip-address ... ] ; 
 
 

Список Finger серверов, доступных клиенту.
Сервера должны быть перечислены в порядке предпочтительности.
 
 
 

 
 option irc-server   ip-address  [ , 
 
 ip-address ... ] ; 
 
 

Список IRC серверов, доступных клиенту.
Сервера должны быть перечислены в порядке предпочтительности.
 
 
 

 
 option streettalk-server   ip-address  [ , 
 
 ip-address ... ] ; 
 
 

Список StreetTalk серверов, доступных клиенту.
Сервера должны быть перечислены в порядке предпочтительности.
 
 
 

 
 option streetalk-directory-assistance-server   ip-address  [ , 
 
 ip-address ... ] ; 
 
 

 
The StreetTalk Directory Assistance (STDA) server option specifies a
list of STDA servers available to the client.  
Сервера должны быть перечислены в порядке предпочтительности.
 
 
 
   
 СМ. ТАКЖЕ 

 
 dhcpd.conf (5),  dhcpd.leases (5),
 dhcpd (8),
RFC2132, RFC2131.
 
 
   
 АВТОРЫ 

Сервер  dhcpd (8) 
написан Ted Lemon < mellon@vix.com >
по контракту с Vixie Labs. Финансирование осуществлялось ISC. Информацию об ISC можно найти их сайте в интернет: 
 http://www.isc.org/isc. 
 
 
   
 ПЕРЕВОД 

Перевод выполнен Лаптевым Андреем - 
< lantan@chat.ru >
 

 
   Index 
 
 ИМЯ 
 ОПИСАНИЕ ПАРАМЕТРОВ 
 СМ. ТАКЖЕ 
 АВТОРЫ 
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