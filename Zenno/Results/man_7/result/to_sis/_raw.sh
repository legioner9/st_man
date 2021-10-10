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
 
 
 
 raw (7)   raw  (3)   ( FreeBSD man: Библиотечные вызовы )   raw  (4)   ( Linux man: Специальные файлы /dev/* ) >>  raw  (7)   ( Русские man: Макропакеты и соглашения )   raw  (7)   ( Linux man: Макропакеты и соглашения )   raw  (8)   ( Linux man: Команды системного администрирования ) Ключ  raw  обнаружен в базе ключевых слов. 
   
 НАЗВАНИЕ 

raw, SOCK_RAW - raw-сокеты для Linux IPv4
   
 СИНТАКСИС 

 #include < sys/socket.h > 

 

 #include < netinet/in.h > 

 

 raw_socket = socket(PF_INET, SOCK_RAW, int  protocol ); 

   
 ОПИСАНИЕ 

Raw-сокеты позволяют реализовать новые протоколы IPv4 в пространстве
пользователя. Raw-сокет получает и посылает необработанные датаграммы,
не включающие в себя заголовки уровня соединения.
 

Уровень IPv4 генерирует заголовок IP при посылке пакета, если только
сокету не задана опция
 IP_HDRINCL .

Если она задана, то пакет должен содержать заголовок IP. Принимаемые
пакеты всегда содержат заголовок IP.
 

Открывать raw-сокеты могут только процессы с идентификатором эффективного
пользователя, равным нулю, или имеющие возможность
 CAP_NET_RAW .

 

Все пакеты или ошибки, совпадающие с номером протокола
 protocol ,

указанным raw-сокету, передаются этому сокету. Список возможных протоколов
и назначенных им номеров указан в RFC1700 и в
 getprotobyname (3).

 

Протокол
 IPPROTO_RAW 

подразумевает разрешенный
 IP_HDRINCL  

и принимает все протоколы IP. Передача протоколов в этом случае не разрешена.
 
 Поля заголовка IP, изменяемые IP_HDRINCL при передаче 
 IP Checksum Всегда заполняется. 
 Source Address Заполняется, если значение равно нулю. 
 Packet Id Заполняется, если значение равно нулю. 
 Total Length Всегда заполняется. 
 

 

Если указано
 IP_HDRINCL 

и заголовок IP имеет ненулевой адрес назначения, то для маршрутизации
пакета используется адрес назначения сокета. Если указано значение
 MSG_DONTROUTE ,

то адрес назначения должен ссылаться на локальный интерфейс, иначе в любом
случае будет производится поиск в таблице маршрутизации, хотя маршруты через
шлюзы будут игнорироваться.
Если значение
 IP_HDRINCL 

не установлено, то опции заголовка IP в raw-сокетах могут быть установлены с
помощью
 setsockopt (2);

более подробная информация приведена в
 ip (7).

 

В Linux 2.2 все поля заголовка IP и опции могут быть заданы с помощью опций
сокета IP. Это означает, что raw-сокеты, как правило, необходимы лишь для
новых протоколов или протоколов без интерфейса пользователя (таких, как ICMP).
 

Принятый пакет передается всем подключенным (bound) к этому протоколу сокетам
до того, как он будет передан другим обработчикам протокола (например, 
протокольным модулям ядра).
   
 ФОРМАТЫ АДРЕСОВ 

Raw-сокеты используют стандартную адресную структуру
 sockaddr_in ,

определенную в
 ip (7).

Поле
 sin_port 

может быть использовано для указания номера протокола IP, но оно игнорируется в
Linux 2.2 и всегда должно быть равно нулю (см. ЗАМЕЧАНИЯ). Для входящих пакетов
 sin_port  

принимает значение протокола пакета.
Возможные протоколы IP описаны в файле
 < netinet/in.h > .

   
 ОПЦИИ СОКЕТОВ 

Опции raw-сокета могут быть установлены
 setsockopt (2)

и прочитаны
 getsockopt (2).

Для этого должен быть передан флаг семейства
 SOL_RAW .

 
 ICMP_FILTER 

 
Запускает специальный фильтр для raw-сокетов, подключенных к протоколу
 IPPROTO_ICMP .

Значение является набором битов для каждого типа сообщений ICMP, который должен
быть отфильтрован. По умолчанию сообщения ICMP не фильтруются.
 
 

Кроме того, поддерживаются все датаграммные опции сокетов
 SOL_IP  

 ip (7).

   
 ЗАМЕЧАНИЯ 

Raw-сокеты фрагментируют пакеты, если его общая длина превосходит MTU 
интерфейса (см. BUGS).
Более удобной и быстрой альтернативой является реализация
path MTU discovery, описанная в разделе
 IP_PMTU_DISCOVER  

 ip (7).

 

Raw-сокет может быть подключен к определенному локальному адресу с помощью
вызова
 bind (2).

Если он не подключен, принимаются все пакеты указанного протокола IP. Кроме
того, RAW-сокет может быть подключен к определенному сетевому устройству с
помощью
 SO_BINDTODEVICE; 

см. 
 socket (7).

 

Сокет
 IPPROTO_RAW 

предназначен только для передачи (посылки) пакетов.
Если Вы хотите получать все пакеты IP, используйте пакетный сокет (
 packet (7))

с протоколом
 ETH_P_IP .

Обратите внимание, что пакетные сокеты в отличие от raw-сокетов не собирают
фрагменты IP.
 

Если Вы хотите получать все пакеты ICMP для датаграммного сокета, то 
лучше использовать
 IP_RECVERR 

; см.
 ip (7).

 

Raw-сокеты могут "перехватывать" в Linux все протоколы, даже имеющие протокольный
модуль в ядре (такие, как ICMP или TCP). В этом случае пакеты передаются как
модулю ядра, так и raw-сокету(-ам). Это не должно быть отражено в переносимых
программах, так как многие другие реализации BSD-сокетов имеют определенные
ограничения.
 

Linux никогда не изменяет заголовки, полученные от пользователя (за исключением
заполнения некоторых обнуленных полей, как описано в случае с
 IP_HDRINCL ).

Такое поведение отличается от поведения многих других реализаций raw-сокетов.
 

RAW-сокеты, в общем случае, не являются переносимыми, поэтому следует избегать их
использования в переносимых программах.
 

Передача через raw-сокет должна освуществляться с помощью протокола IP из
 sin_port; 

эта возможность исчезла в Linux 2.2. Избежать этого можно, используя
 IP_HDRINCL. 

   
 ОБРАБОТКА ОШИБОК 

Ошибки, возникающие в сети, передаются пользователю, только если сокет подключен
или установлен флаг
 IP_RECVERR .

В целях совместимости в подключенные сокеты передаются только
 EMSGSIZE    

и
 EPROTO .

С
 IP_RECVERR 

все сетеые ошибки сохраняются в очереди ошибок.
   
 НАЙДЕННЫЕ ОШИБКИ 

 
 EMSGSIZE  

 
Размер пакета слишком велик, либо включен Path MTU Discovery
(флаг сокета
 IP_PMTU_DISCOVER ),

либо размер пакета превышает максимально разрешенный для IPv4 размер, равный 64Кб.
 EACCES 

 
Пользователь попытался передать пакет по широковещательному адресу при сброшенном
флаге широковещательной передачи.
 EPROTO 

 
Пришла ошибка ICMP, сообщающая о проблеме с параметрами.
 EFAULT 

 
Был передан неправильный адрес памяти.
 EOPNOTSUPP 

 
Сокетному вызову был передан неверный флаг (например,
 MSG_OOB ).

 EINVAL 

 
Hеверный аргумент.
 EPERM 

 
Пользователь не имеет прав на открытие raw-сокета. Это могут делать только
процессы с идентификатором эффективного пользователя, равным нулю, или имеющие атрибут
 CAP_NET_RAW .

 
   
 ВЕРСИИ 

 IP_RECVERR  

и  
 ICMP_FILTER  

появились в Linux 2.2. Они являются расширениями Linux и не должны 
использоваться в переносимых программах.
 

Коды raw-сокетов в версии Linux 2.0 при установленном флаге SO_BSDCOMPAT
были специально сделаны "совместимыми" с BSD по существующим ошибкам.
Из Linux 2.2 это было удалено.
   
 НАЙДЕННЫЕ ОШИБКИ 

Расширения "прозрачного" прокси не описаны.
 

Если установлена опция 
 IP_HDRINCL ,

датаграммы не будут фрагментированы и их размер будет ограничен MTU
интерфейсом. Это ограничение Linux 2.2.
 

В Linux 2.2 отсутствует настройка протокола IP для отправки его в
 sin_port ,

и всегда используется тот протокол, к которому был 
подключен сокет или который был упомянут при первом вызове
 socket (2).

   
 АВТОРЫ 

Эта страница руководства была написана Энди Клином (Andi Kleen). 
   
 СМ. ТАКЖЕ 

 ip (7),

 socket (7),

 recvmsg (2),

 sendmsg (2)

 RFC1191  

для path MTU discovery.
 RFC791 

и файл
 < linux/ip.h > 

для протокола IP.
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ФОРМАТЫ АДРЕСОВ 
 ОПЦИИ СОКЕТОВ 
 ЗАМЕЧАНИЯ 
 ОБРАБОТКА ОШИБОК 
 НАЙДЕННЫЕ ОШИБКИ 
 ВЕРСИИ 
 НАЙДЕННЫЕ ОШИБКИ 
 АВТОРЫ 
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