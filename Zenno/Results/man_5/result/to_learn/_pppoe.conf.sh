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
 
 
 
 pppoe.conf (5) >>  pppoe.conf  (5)   ( Русские man: Форматы файлов )   pppoe.conf  (5)   ( Linux man: Форматы файлов ) 


 ИМЯ 
 

 

pppoe.conf - файл конфигурации, используемый  pppoe-start(8) ,  pppoe-stop(8) ,  pppoe-status(8)  и  pppoe-connect(8) 
 

 

 ОПИСАНИЕ 
 

 

/etc/ppp/pppoe.conf - это сценарий оболочки, который содержит конфигурационную информацию для PPPoE-сценариев Roaring Penguin. Отметим, что pppoe.conf используется только различными сценариями оболочки pppoe-*, но не самим pppoe.
 

 
pppoe.conf состоит из последовательности назначений переменных оболочки. Переменные и их описания таковы:
 

 

 ETH 
 

 

Ethernet-интерфейс подключённый к ADSL-модему (например, eth0).
 

 

 USER 
 

 

Идентификатор пользователя (например, b1xxnxnx@sympatico.ca).
 

 

 SERVICENAME 
 

 

Если переменная задана, тогда её значение передаётся в pppoe с опцией  -S . Она указывает имя запрашиваемой службы. Обычно вы должны оставить её пустой.
 

 

 ACNAME 
 

 

Если переменная задана, тогда её значение передаётся в pppoe с опцией  -C . Она указывает имя концентратора доступа, к которому нужно подключиться. Обычно вы должны оставить её пустой.
 

 

 DEMAND 
 

 

Если задано число, то канал активируется по требованию и отключается через DEMAND секунд. Если установлено no, канал остаётся постоянно активен, вместо того чтобы активироваться по требованию.
 

 

 DNSTYPE 
 

 

Одно из NOCHANGE, SPECIFY или SERVER. Если установлено NOCHANGE,  pppoe-connect  не будет настраивать  DNS . Если установлено SPECIFY, он будет перезаписывать /etc/resolv.conf значениями  DNS1  и  DNS2 . Если установлено SERVER, он снабдит  pppd  опцией  usepeerdns , и создаст символическую ссылку /etc/resolv.conf, указывающую на /etc/ppp/resolv.conf.
 

 

 DNS1, DNS2 
 

 

IP-адреса  DNS -серверов, если вы используете DNSTYPE=SPECIFY.
 

 

 USERCTL 
 

 

Если в файле конфигурации появится строка USERCTL=yes (точно как указано, без пробелов или комментариев), тогда /sbin/ifup разрешит устанавливать и разрывать соединение пользователям, не являющимся root.
 

 

 PEERDNS 
 

 

Если установлена в yes, то  pppoe-connect  снабдит  pppd  опцией  usepeerdns , которая заставит его получить адреса  DNS -серверов от партнёра и создать новый файл /etc/resolv.conf. В другом случае,  pppoe-connect  не снабдит  pppd  этой опцией и  pppd  не станет менять /etc/resolv.conf.
 

 

 CONNECT_POLL 
 

 

Как часто (в секундах)  pppoe-start  должен проверять, что новый PPP-интерфейс перешёл в активное состояние. Если переменная установлена в 0, то  pppoe-start  просто создаст сеанс PPP, но не будет ожидать, когда интерфейс перейдёт в активное состояние.
 

 

 CONNECT_TIMEOUT 
 

 

Как долго (в секундах)  pppoe-start  должен ожидать, что новый PPP-интерфейс перешёл в активное состояние, прежде чем решит, что  pppoe-connect  не сработал и завершит сеанс.
 

 

 PING 
 

 

Символ, который будет отправляться эхом каждые  CONNECT_POLL  секунд, когда  pppoe-start  ожидает активации PPP-интерфейса.
 

 

 FORCEPING 
 

 

Символ, который будет отправляться эхом каждые  CONNECT_POLL  секунд, когда  pppoe-start  ожидает активации PPP-интерфейса. Похоже на PING, но символ отправляется эхом даже если стандартный вывод  pppoe-start  - не терминальное устройство.
 

 

 PIDFILE 
 

 

Файл, в который записывается идентификатор процесса  pppoe-connect  (например, /var/run/pppoe.pid). Два дополнительных файла ($PIDFILE.pppd и $PIDFILE.pppoe) содержат идентификаторы процессов  pppd  и  pppoe  соответственно.
 

 

 SYNCHRONOUS 
 

 

Индикация того, использовать синхронный PPP или нет (yes или no). Синхронный PPP безопасен на Linux-компьютерах с дисциплиной линии n_hdlc. (Если у вас есть файл с именем n_hdlc.o в вашем каталоге модулей, у вас есть эта дисциплина.) Это не рекомендуется на других компьютерах или на Linux-компьютерах без дисциплины линии n_hdlc, поскольку имеются несколько известных и неразрешимых состояний соревнования в клиенте, работающем в пространстве пользователя.
 

 

 CLAMPMSS 
 

 

Значение, которое фиксирует объявляемое значение MSS для сеансов TCP. По умолчанию 1412 должно подойти.
 

 

 LCP_INTERVAL 
 

 

Как часто (в секундах)  pppd  отправляет LCP-пакеты эхо-запрос.
 

 

 LCP_FAILURE 
 

 

Как много неотвеченных эхо-запросов LCP должно произойти, чтобы  pppd  посчитал, что связь разорвалась.
 

 

 PPPOE_TIMEOUT 
 

 

Количество секунд, через которое  pppoe  завершит работу, если он не обнаружит какой-либо активности канала.
 

 

 FIREWALL 
 

 

Одно из NONE, STANDALONE или MASQUERADE. Если NONE, тогда  pppoe-connect  не будет добавлять каких-либо правил в пакетный фильтр. Если STANDALONE, тогда он очистит существующие правила пакетного фильтра и установит базовые правила для самостоятельно работающего компьютера. Если MASQUERADE, тогда он очистит существующие правила пакетного фильтра и установит базовые правила для Интернет-шлюза. Если вы запускаете службы на вашей машине, эти сценарии с простыми правилами пакетного фильтра вам не подойдут; вы можете создать свои собственные правила пакетного фильтра и установить FIREWALL в NONE.
 

 

 PPPOE_EXTRA 
 

 

Любые дополнительные аргументы, передаваемые в  pppoe .
 

 

 PPPD_EXTRA 
 

 

Любые дополнительные аргументы, передаваемые в  pppd .
 

 

 LINUX_PLUGIN 
 

 

Если задано, то это полный путь к плагину PPPoE, работающему в режиме ядра (обычно /etc/ppp/plugins/rp-pppoe.so). Это заставит  pppoe-connect  использовать PPPoE в режиме ядра на системах Linux 2.4.x. Этот код экспериментальный и не поддерживается. Использование плагина может привести к игнорированию  CLAMPMSS ,  PPPOE_EXTRA ,  SYNCHRONOUS  и  PPPOE_TIMEOUT .
 

 
При использовании других файлов конфигурации с различными настройками  PIDFILE , вы можете управлять несколькими PPPoE-соединениями. Просто укажите файл конфигурации как аргумент  pppoe-start  и  pppoe-stop .
 

 

 АВТОР ПЕРЕВОДА 
 

 

Перевод на русский язык выполнил Владимир Ступин  wheelof@gmail.com 
 

 

 СМОТРИ ТАКЖЕ 
 

 

 pppoe(8) ,  pppoe-connect(8) ,  pppoe-start(8) ,  pppoe-stop(8) ,  pppd(8) ,  pppoe-setup(8) ,  pppoe-wrapper(1) 
 

 

 ССЫЛКИ НА ЭТОТ ДОКУМЕНТ 
 

 

 pppoe-connect(8) ,  pppoe-relay(8) ,  pppoe-server(8) ,  pppoe-setup(8) ,  pppoe-sniff(8) ,  pppoe-start(8) ,  pppoe-status(8) ,  pppoe-stop(8) 

 

 

        
      
    
       
         
           
                     
           
          man/pppoe.conf_5.txt · Последние изменения: 2009-02-05 20:24 (внешнее изменение)           
         
       

 
 
 
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