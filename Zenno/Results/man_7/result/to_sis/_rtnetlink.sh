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
 
 
 
 rtnetlink (7)   rtnetlink  (3)   ( Русские man: Библиотечные вызовы )   rtnetlink  (3)   ( Linux man: Библиотечные вызовы )   rtnetlink  (4)   ( Linux man: Специальные файлы /dev/* ) >>  rtnetlink  (7)   ( Русские man: Макропакеты и соглашения )   rtnetlink  (7)   ( Linux man: Макропакеты и соглашения ) 
   
 НАЗВАНИЕ 

rtnetlink, NETLINK_ROUTE - сокет маршрутизации IPv4 Linux.
   
 СИНТАКСИС 

 #include < asm/types.h > 

 

 #include < linux/netlink.h > 

 

 #include < linux/rtnetlink.h > 

 

 #include < sys/socket.h > 

 rtnetlink_socket = socket(PF_NETLINK, int  socket_type , NETLINK_ROUTE); 

   
 ОПИСАНИЕ 

Rtnetlink позволяет читать и изменять таблицы маршрутизации ядра. Он 
используется внутри ядра для связи различных подсистем (хотя такое
использование здесь не описано) и для связи с программами
пространства пользователя. Управлять сетевыми маршрутами, адресами ip,
параметрами соединений, настройками соседних машин, порядком отправки пакетов
в очередь, классами трафика и классификаторами пакетов можно с помощью сокета
 NETLINK_ROUTE .

Он базируется на сообщениях netlink, дополнительная информация об этом приведена в
 netlink (7).

   
 АТРИБУТЫ МАРШРУТИЗАЦИИ 

Hекоторые сообщения rtnetlink имеют дополнительные атрибуты, следующие за
начальным заголовком:
 
struct rtattr
{
    unsigned short rta_len;     /* Длина опции */
    unsigned short rta_type;    /* Тип опции */
    /* данные */ 
};
 

Управлять этими атрибутами можно только с помощью макросов RTA_* либо с 
помощью libnetlink, см.
 rtnetlink (3).

   
 СООБЩЕНИЯ 

Rtnetlink состоит из сообщений следующих типов
(в дополнение к стандартным сообщениям netlink):
 
 RTM_NEWLINK ,  RTM_DELLINK ,  RTM_GETLINK 

 
Создать, удалить или получить информацию об определенном сетевом интерфейсе.
Эти сообщения содержат структуру
 ifinfomsg ,

за которой следует ряд структур
 rtattr .

 
struct ifinfomsg
{
    unsigned char  ifi_family;  /* AF_UNSPEC */
    unsigned short ifi_type;    /* тип устройства */ 
    int            ifi_index;   /* индекс интерфейса   */
    unsigned int   ifi_flags;   /* флаги устройства  */
    unsigned int   ifi_change;  /* маска смены */
};
 

 ifi_flags  

содержит флаги устройства, см.
 netdevice (7); 

 ifi_index 

является уникальным индексом интерфейса;
 ifi_change 

зарезервировано для использования в будущем и всегда должно быть
равно 0xFFFFFFFF. 
 
 Атрибуты маршрутизации 
 rta_type тип значения описание 
 
 IFLA_UNSPEC - не указано. 
 IFLA_ADDRESS аппаратный адрес адрес интерфейса (L2). 
 IFLA_BROADCAST аппаратный адрес широковещательный адрес (L2). 
 IFLA_IFNAME asciiz строка имя устройства. 
 IFLA_MTU unsigned int MTU устройства. 
 IFLA_LINK int тип соединения. 
 IFLA_QDISC asciiz строка способ постановки в очередь. 
 IFLA_STATS 
struct net_device_stats
 статистика интерфейса. 
 

 RTM_NEWADDR ,  RTM_DELADDR ,  RTM_GETADDR 

 
Добавить, удалить или получить информацию об адресе IP, связанном с 
интерфейсом. В Linux 2.2 интерфейс может иметь несколько адресов IP; они  
являются альтернативными псевдонимами устройств 2.0. В Linux 2.2 эти сообщения
поддерживают как адреса IPv4, так и IPv6. Они содержат структуру
 ifaddrmsg ,

за которой могут следовать атрибуты маршрутизации
 rtaddr .

 
struct ifaddrmsg
{
    unsigned char  ifa_family;  /* Тип адреса */
    unsigned char  ifa_prefixlen;/* Длина префикса адреса */
    unsigned char  ifa_flags;   /* Флаги адреса */
    unsigned char  ifa_scope;   /* Область адреса */
    int            ifa_index;   /* Индекс интерфейса   */
};
 

 ifa_family 

является типом семейства адреса (в данный момент
 AF_INET 

или
 AF_INET6),  

 ifa_prefixlen 

является длиной маски адреса, если она определена для семейства (как для IPv4),
 ifa_scope 

является областью адреса,
 ifa_index 

является индексом интерфейса, с которым связан адрес.
 ifa_flags 

- слово флагов:
 IFA_F_SECONDARY 

для вторичного адреса (старый интерфейс-псевдоним),
 IFA_F_PERMANENT 

для постоянного адреса, установленного пользователем, и других 
неописанных флагов.
 
 Атрибуты 
 rta_type тип значения описание 
 
 IFA_UNSPEC - не указан. 
 IFA_ADDRESS raw-адрес протокола адрес интерфейса 
 IFA_LOCAL raw-адрес протокола локальный адрес 
 IFA_LABEL asciiz строка имя интерфейса 
 IFA_BROADCAST raw-адрес протокола широковещательный адрес. 
 IFA_ANYCAST raw-адрес протокола адрес anycast 
 IFA_CACHEINFO struct ifa_cacheinfo информация об адресе.  
 

 RTM_NEWROUTE ,  RTM_DELROUTE ,  RTM_GETROUTE 

 
Создать, удалить или получить информацию о сетевом маршруте.
Это сообщение содержит структуру
 rtmsg ,

за которой может следовать ряд структур
 rtattr .

Для 
 RTM_GETROUTE 

устанвока 
 rtm_dst_len  

и 
 rtm_src_len  

в 0 будет обозначать, что вы получили все элементы для определенной
балицы маршрутизации. Для всех других полей, за исключением 
 rtm_table  

и 
 rtm_protocol ,

0 будет являться шаблоном.
 
 
struct rtmsg
{
    unsigned char  rtm_family;  /* Семейство адресов маршрута */
    unsigned char  rtm_dst_len; /* Длина источника */
    unsigned char  rtm_src_len; /* Длина пути назначения */ 
    unsigned char  rtm_tos;     /* Фильтр TOS */
    unsigned char  rtm_table;   /* Идентификатор таблицы маршрутизации */
    unsigned char  rtm_protocol;/* Протокол маршрутизации; см. ниже */
    unsigned char  rtm_scope;   /* См. ниже */
    unsigned char  rtm_type;    /* См. ниже */
    unsigned int   rtm_flags;   
};
 

 
 rtm_type тип маршрута 
 
 RTN_UNSPEC неизвестный маршрут 
 RTN_UNICAST шлюз или прямой маршрут 
 RTN_LOCAL маршрут локального интерфейса 
 RTN_BROADCAST 
локальный многоадресный маршрут (посылаемый как многоадресная передача)
 
 RTN_ANYCAST 
локальный многоадресный маршрут (посылаемый как одноадресная передача)
 
 RTN_MULTICAST многоадресный маршрут 
 RTN_BLACKHOLE маршрут "выброса" пакетов (packet dropping) 
 RTN_UNREACHABLE недоступный пункт назначения 
 RTN_PROHIBIT маршрут отказа от пакетов (packet rejection) 
 RTN_THROW продолжить поиск маршрута в другой таблице 
 RTN_NAT правило преобразования сетевого адреса 
 RTN_XRESOLVE 
ссылка на внешнюю систему определения адресов (не включено в систему)
 
 

 
 rtm_protocol источник маршрута. 
 
 RTPROT_UNSPEC неизвестен 
 RTPROT_REDIRECT 
перенаправление ICMP (в данный момент не используется)
 
 RTPROT_KERNEL ядро 
 RTPROT_BOOT при загрузке 
 RTPROT_STATIC администратор 
 

Значения, больше чем
 RTPROT_STATIC ,

не интерпретируются ядром и служат лишь для предоставления пользователю информации.
Они могут быть использованы для пометки источника информации о маршрутизации или
для различения демонов маршрутизации. Назначенные идентификаторы
демонов маршрутизации всегда приводятся в
 < linux/rtnetlink.h > .

 rtm_scope  

это расстояние до назначения:
 
 RT_SCOPE_UNIVERSE глобальный маршрут 
 RT_SCOPE_SITE 
внутренний маршрут в локальной автономной системе
 
 RT_SCOPE_LINK маршрут этого соединения 
 RT_SCOPE_HOST маршрут в локальной машине 
 RT_SCOPE_NOWHERE пункт назначения не существует 
 

Значения между
 RT_SCOPE_UNIVERSE 

и
 RT_SCOPE_SITE 

доступны пользователю.
 
 

 rtm_flags 

может иметь следующие значения:
 
 RTM_F_NOTIFY 
если маршрут меняется, оповестить пользователя по rtnetlink
 
 RTM_F_CLONED маршрут - клон другого маршрута 
 RTM_F_EQUALIZE эквалайзер многоадресного вещания (еще не включен в программу) 
 

 rtm_table 

Указывает таблицу маршрутизации
 
 RT_TABLE_UNSPEC неуказанная таблица маршрутизации 
 RT_TABLE_DEFAULT таблица по умолчанию 
 RT_TABLE_MAIN основная таблица 
 RT_TABLE_LOCAL локальная таблица 
 

Пользователь может присваивать таблице произвольные значения между
 RT_TABLE_UNSPEC 

и
 RT_TABLE_DEFAULT .

 
 Атрибуты 
 rta_type тип значения описание 
 
 RTA_UNSPEC - игнорируется. 
 RTA_DST адрес протокола адрес назначения маршрута. 
 RTA_SRC адрес протокола адрес источника маршрута. 
 RTA_IIF int индекс входного интерфейса. 
 RTA_OIF int индекс выходного интерфейса. 
 RTA_GATEWAY адрес протокола шлюз маршрута 
 RTA_PRIORITY int приоритет маршрута 
 RTA_PREFSRC 
 RTA_METRICS int метрика маршрута 
 RTA_MULTIPATH 
 RTA_PROTOINFO 
 RTA_FLOW 
 RTA_CACHEINFO 
 

 Заполните эти значения! 

 
 RTM_NEWNEIGH ,  RTM_DELNEIGH ,  RTM_GETNEIGH 

 
Добавить, удалить или получить информацию о записи, сделанной соседней машиной
(например, запись ARP). Это сообщение содержит структуру
 ndmsg .

 
struct ndmsg
{
    unsigned char  ndm_family;
    int            ndm_ifindex; /* Индекс интерфейса */
    __u16          ndm_state;   /* Состояние */ 
    __u8           ndm_flags;   /* Флаги */
    __u8           ndm_type;   
};
struct nda_cacheinfo
{
    __u32          ndm_confirmed;
    __u32          ndm_used;
    __u32          ndm_updated;
    __u32          ndm_refcnt;
};
 

 ndm_state 

является битовой маской со следующими состояниями:
 
 NUD_INCOMPLETE запись кэша, определяемая в данный момент 
 NUD_REACHABLE подтвержденная работающая запись кэша 
 NUD_STALE устаревшая запись кэша 
 NUD_DELAY запись, ожидающая сигнал таймера 
 NUD_PROBE запись, вновь проверяемая в данный момент 
 NUD_FAILED неверная запись кэша 
 NUD_NOARP устройство без кэша назначений 
 NUD_PERMANENT статическая запись 
 

Возможные значения
 ndm_flags :

 
 NTF_PROXY запись прокси arp 
 NTF_ROUTER маршрутизатор IPv6 
 

 более точно описывайте поля структуры 

Поле 
 rta_type 

структуры
 rtaddr 

имеет следующие значения:
 
 NDA_UNSPEC неизвестный тип 
 NDA_DST адрес назначения кэша соседних машин на сетевом уровне 
 NDA_LLADDR адрес соседней машины уровня соединения 
 NDA_CACHEINFO статистические данные кэша. 
 

Если значением поля
 rta_type 

является
 NDA_CACHEINFO ,

то далее находится заголовок
 struct nda_cacheinfo 

 RTM_NEWRULE ,  RTM_DELRULE ,  RTM_GETRULE 

 
Добавить, удалить или получить правило маршрутизации. Передает структуру
 struct rtmsg . 

 RTM_NEWQDISC ,  RTM_DELQDISC ,  RTM_GETQDISC 

 
Добавить, удалить или получить способ отправки пакета в очередь.
Сообщение содержит структуру
 struct tcmsg , 

за ним может следовать ряд атрибутов:
 
struct tcmsg
{
    unsigned char  tcm_family;
    int            tcm_ifindex; /* индекс интерфейса */
    __u32          tcm_handle;  /* манипулятор способа */ 
    __u32          tcm_parent;  /* родительский способ */
    __u32          tcm_info;
};
 

 
 Атрибуты 
 rta_type тип значения описание 
 
 TCA_UNSPEC - не указано 
 TCA_KIND asciiz строка название способа постановки в очередь 
 TCA_OPTIONS последовательность байтов далее следуют опции способа 
 TCA_STATS struct tc_stats статистика способа. 
 TCA_XSTATS зависит от способа статистика, специфичная для модуля. 
 TCA_RATE struct tc_estimator ограничение темпа. 
 

Кроме того, возможны различные другие атрибуты, предназначенные только для модуля.
За дополнительной информацией обращайтесь к соответствующим файлам заголовков.
 RTM_NEWTCLASS ,  RTM_DELTCLASS ,  RTM_GETTCLASS 

 
Добавить, удалить или получить класс трафика. Эти сообщения содержат структуру
 struct tcmsg ,

как описано выше.
 RTM_NEWTFILTER ,  RTM_DELTFILTER ,  RTM_GETTFILTER 

 
Добавить, удалить или получить информацию о фильтре трафика. Эти сообщения
содержат структуру
 struct tcmsg ,

как описано выше.
 
   
 ВЕРСИИ 

 rtnetlink  

появился в Linux 2.2.
   
 НАЙДЕННЫЕ ОШИБКИ 

Эта страница руководства далеко не полная.
   
 СМ. ТАКЖЕ 

 netlink (7),

 cmsg (3),

 ip (7),

 rtnetlink (3)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 АТРИБУТЫ МАРШРУТИЗАЦИИ 
 СООБЩЕНИЯ 
 ВЕРСИИ 
 НАЙДЕННЫЕ ОШИБКИ 
 СМ. ТАКЖЕ 
 
 
 
 
 
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