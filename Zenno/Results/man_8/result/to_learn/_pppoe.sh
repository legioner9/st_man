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
 
 
 
 pppoe (8) >>  pppoe  (8)   ( Русские man: Команды системного администрирования )   pppoe  (8)   ( Linux man: Команды системного администрирования ) Ключ  pppoe  обнаружен в базе ключевых слов. 


 ИМЯ 
 

 

pppoe - PPPoE-клиент, работающий в пространстве пользователя
 

 

 ОБЗОР 
 

 

pppd pty 'pppoe [опции_pppoe]' [опции_pppd]
 

 
pppoe -A [опции_pppoe]
 

 

 ОПИСАНИЕ 
 

 

pppoe - это PPPoE-клиент (Point-to-Point Protocol over Ethernet) для Linux и других UNIX-систем, работающий в пространстве пользователя. pppoe работает совместно с pppd - демоном PPP, чтобы создать PPP-соединение через Ethernet, которое используется многими DSL-провайдерами.
 

 

 ОПЦИИ 
 

 

 -I интерфейс 
 

 

Опция -I указывает используемый Ethernet-интерфейс. В Linux это обычно eth0 или eth1. Интерфейс должен быть поднят перед запуском pppoe, но на нём не должен быть настроен IP-адрес.
 

 

 -T тайм-аут 
 

 

Опция -T заставляет pppoe выйти, если в течение тайм-аут секунд в сеансе не обнаружен трафик. Я рекомендую чтобы вы использовали эту опцию как дополнительную меру безопасности. Но если вы используете эту опцию, вы должны убедиться, что PPP генерирует достаточно трафика, так чтобы тайм-аут обычно не срабатывал. Лучший способ достичь этого - использовать опцию  lcp-echo-interval  pppd. Вы должны установить тайм-аут PPPoE примерно в 4 раза больше интервала LCP-эхо.
 

 

 -D имя_файла 
 

 

Опция -D заставляет сбрасывать каждый пакет в файл с именем имя_файла. Предполагается использовать её только для отладки; она выводит большое количество информации и сильно уменьшает производительность.
 

 

 -V 
 

 

Опция -V заставляет pppoe напечатать номер его версии и выйти.
 

 

 -A 
 

 

Опция -A заставляет pppoe отправить пакет PADI и затем печатает имена концентраторов доступа из каждого принятого пакета PADO. Не используйте эту опцию совместно с pppd, опция -A предназначена только для интерактивного использования, чтобы получить интересующую информацию о концентраторе доступа.
 

 

 -S имя_службы 
 

 

Указывает имя желаемой службы. pppoe начнёт установку сеанса только с тем концентратором доступа, который может предоставить указанную службу. В большинстве случаев вы не должны указывать эту опцию. Используйте её только если вы знаете, что имеется несколько концентраторов доступа или знаете, что вам нужно определённое имя службы.
 

 

 -C имя_концентратора_доступа 
 

 

Указывает имя желаемого концентратора доступа. pppoe начнёт установку сеанса с указанным концентратором доступа. В большинстве случаев вы не должны указывать эту опцию. Используйте её только если вы знаете, что имеется несколько концентраторов доступа. Если указаны обе опции,  -S  и -C, они обе должны подойти, чтобы pppoe начал установку сеанса.
 

 

 -U 
 

 

Заставляет pppoe использовать метку Host-Uniq в своих пакетах обнаружения. Это позволит запустить несколько pppoe демонов, не создавая помехи наложением пакетов обнаружения. Вы должны снабдить этой опцией всех демонов pppoe, если вы собираетесь запустить несколько демонов одновременно.
 

 

 -s 
 

 

Заставляет pppoe использовать синхронную инкапсуляцию PPP. Если вы используете эту опцию, тогда вы должны использовать опцию sync в pppd. Предпочтительно использовать эту опцию если она работает, потому что она сильно снижает накладные расходы CPU на pppoe. Однако она МОЖЕТ быть ненадёжной на медленных машинах  существует соревнование между записью данных pppd и чтением их pppoe. Если вы обнаружите ошибки или аварийные завершения программ при использовании синхронного PPP, отключите его  не пишите мне о поддержке!
 

 

 -m MSS 
 

 

Заставляет pppoe фиксировать максимальный размер сегмента TCP на заданном значении. Поскольку из-за накладных расходов PPPoE максимальный размер сегмента PPPoE меньше, чем при нормальной инкапсуляции Ethernet. Это может вызывать проблемы на компьютерах в локальной сети за пределами шлюза, использующего PPPoE. Если у вас имеется локальная сеть за шлюзом, и шлюз подключается к Интернет посредством PPPoE, строго рекомендуется использовать опцию -m 1412. Это позволит не устанавливать MTU на всех узлах в локальной сети.
 

 

 -H MAC 
 

 

Заставляет pppoe использовать указанный Ethernet MAC-адрес в качестве исходного адреса для отправки пакетов. MAC должен быть указан в виде AA:BB:CC:DD:EE:FF. Если указана эта опция, pppoe переведёт интерфейс в неразборчивый режим.
 

 

 -p файл 
 

 

Заставляет pppoe записывать его идентификатор процесса в указанный файл. Это можно использовать для поиска и принудительного завершения процессов pppoe.
 

 

 -e sess:mac 
 

 

Заставляет pppoe пропускать фазу обнаружения и перейти прямо к фазе сеанса. Сеанс задаётся идентификатором sess и MAC-адресом партнёра, указанным в mac. Этот режим не предназначен для нормального использования; он предназначен только для  pppoe-server(8) .
 

 

 -n 
 

 

Заставляет pppoe не открывать сокет обнаружения. Этот режим не предназначен для нормального использования; он предназначен только для  pppoe-server(8) .
 

 

 -k 
 

 

Заставляет pppoe завершить существующий сеанс отправкой кадра PADT, и затем выйти. Вы должны использовать опцию -e совместно с этой опцией для указания завершаемого сеанса. Это может быть использовано для закрытия сеансов, когда партнёр имеет ошибки в реализации процедуры завершения сеанса.
 

 

 -d 
 

 

Заставляет pppoe произвести обнаружение, вывести информацию о сеансе и завершить работу. Информация о сеансе печатается в соответствии с форматом, ожидаемым опцией  -e . Эта опция позволяет вам начать обнаружение PPPoE, произвести некоторую другую работу, и затем начать действующий сеанс PPP. Будьте аккуратны; если вы используете эту опцию в цикле, вы можете создать много сеансов, которые могут раздражать вашего партнёра.
 

 

 -f disc:sess 
 

 

Опция -f задаёт типы кадров Ethernet для кадров обнаружения и кадров сеансов PPPoE. Типы указываются как шестнадцатеричные числа, разделённые двоеточиями. Стандарт PPPoE использует типы кадров 8863:8864. Вы не должны использовать эту опцию, если вы не абсолютно уверены, что ваш партнёр работает с использованием нестандартных типов кадров. Если ваш провайдер использует нестандартные типы кадров, жалуйтесь!
 

 

 -h 
 

 

Опция -h заставляет pppoe напечатать информацию об использовании и завершить работу.
 

 

 ЗА КУЛИСАМИ PPPOE 
 

 

PPPoE (Point-to-Point over Ethernet) описан в  RFC2516  и является протоколом, который предоставляет абстракцию сеанса, работающего поверх соединённых мостом Ethernet-сетей.
 

 
PPPoE работает инкапсулируя кадры PPP в кадры Ethernet. Протокол имеет два чётких этапа: этап обнаружения и этап сеанса.
 

 
На этапе обнаружения узел отправляет широковещательно особый кадр PADI (PPPoE Active Discovery Initiation) для обнаружения любых концентраторов доступа. Концентраторы доступа (обычно только один концентратор доступа) отвечают пакетами PADO (PPPoE Active Discovery Offer), анонсируя присутствие и предоставляемые ими службы. Узел выбирает один из концентраторов доступа и передаёт пакет PADR (PPPoE Active Discovery Request), запрашивающий сеанс. Концентратор доступа отвечает пакетом PADS (PPPoE Active Discovery Session-Confirmation). Затем протокол переходит на этап сеанса.
 

 
На этапе сеанса узел и концентратор доступа обмениваются кадрами PPP вложенными в кадры Ethernet. Обычный MTU Ethernet - 1500 байт, но PPPoE добавляет к накладным расходам PPP-кадра два байта, что означает что наибольший MTU PPP-интерфейса - 1492 байта. Это приводит к различным проблемам, если вы используете Linux-машину как фильтрующий шлюз, и интерфейс за пакетным фильтром имеет MTU больше 1492. Фактически, для безопасности, я рекомендую установить на машины за фильтрующим шлюзом MTU 1412, чтобы в наихудшем случае разрешить TCP и IP опции в соответствующих заголовках.
 

 
Обычно PPP использует LCP (Link Control Protocol - Протокол Управления Каналом) чтобы завершить канал PPP. Однако спецификация PPPoE разрешает завершать канал с помощью специального пакета PADT (PPPoE Active Discovery Terminate). Этот клиент распознаёт этот пакет и пытается завершиться корректно, если был принят запрос завершения сеанса PPP.
 

 

 ЦЕЛИ ПРОЕКТИРОВАНИЯ 
 

 

Мои цели для этого PPPoE клиента были следующими, в порядке убывания важности:

 
 
  Он должен работать. 
 
  Он должен быть программой, работающей в пространстве пользователя, а не частью ядра. 
 
  Код должен быть прост для чтения и сопровождения. 
 
  Он должен быть полностью совместим с  RFC2516 , предложенным стандартом PPPoE. 
 
  Он никогда не должен зависать  если соединение повреждено, он может обнаружить это и выйти, позволяя сценарию-обёртке (wrapper) перезапустить соединение. 
 
  Он должен быть довольно эффективным. 
 
 

 

Я верю, что я достиг всех этих целей, но (конечно) открыт для предложений, исправлений и идей. Посетите мою домашнюю страницу  http://www.roaringpenguin.com , чтобы узнать контактную информацию.
 

 

 ЗАМЕЧАНИЯ 
 

 

Для наилучших результатов, вы должны задать pppd опцию mtu 1492. Я наблюдал проблемы с чрезмерно большими кадрами, если я не устанавливал эту опцию. Также, если pppoe запущен на фильтрующем шлюзе, все машины за фильтрующим шлюзом должны иметь MTU 1412.
 

 
Если у вас есть проблемы, проверьте системные журналы. pppoe журналирует интересную информацию в системный журнал. Вы можете включить журналирование сообщений уровня отладки для получения полной диагностики.
 

 

 АВТОРЫ 
 

 

pppoe был написан Дэвидом Ф. Сколлом (David F. Skoll)  dfs@roaringpenguin.com , который был вдохновлён более ранними версиями Люка Страса (Luke Stras).
 

 
Домашняя страница pppoe -  http://www.roaringpenguin.com/pppoe/ .
 

 

 АВТОР ПЕРЕВОДА 
 

 

Перевод на русский язык выполнил Владимир Ступин  wheelof@gmail.com 
 

 

 СМОТРИ ТАКЖЕ 
 

 

 pppd(8) ,  pppoe-sniff(8) ,  pppoe-server(8) ,  pppoe-relay(8) , /usr/share/doc/pppoe/README.Debian.gz

 

 

        
      
    
       
         
           
                     
           
          man/pppoe_8.txt · Последние изменения: 2009-02-05 20:24 (внешнее изменение)           
         
       

 
 
 
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