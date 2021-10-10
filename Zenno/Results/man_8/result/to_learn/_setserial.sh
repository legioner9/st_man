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
 
 
 
 setserial (8) >>  setserial  (8)   ( Русские man: Команды системного администрирования )   setserial  (8)   ( Linux man: Команды системного администрирования ) 
   
 НАЗВАНИЕ 

setserial - получить/установить информацию о последовательном порте в Linux
   
 СИНТАКСИС 

 setserial 

 [ -abqvVWz ] 

устройство
 [  параметр1  [  аргументы  ] ] ... 

 
 setserial -g 

 [ -abGv ] 

устройство1 ...
   
 ОПИСАНИЕ 

Программа
 setserial 

разработана для настройки и/или создания отчётов содержащих информацию о конфигурации последовательного интерфейса.
Эта информация включает в себя базовый адрес ввода/вывода (I/O port) и линию запроса прерываний (IRQ) для конкретного последовательного порта, и надо или нет интерпретировать разделяющий ключ как электронный ключ безопасности и другую.
 
Во время обычного процесса загрузки, инициализируются только порты COM 1-4, при этом по умолчанию используются значения базовых адресов ввода/вывода и линий запроса прерываний IRQ, которые приводятся ниже. Для назначения инициализации любых дополнительных последовательных портов, или изменения настроек портов COM 1-4 на нестандартные, используется программа
 setserial .

Обычно она вызывается скриптом
 rc.serial ,

который запускается из
 /etc/rc.local .

 
Аргумент(ы)
 устройство 

устанавливает последовательное устройство, которое будет конфигурироваться или опрашиваться. Обычно, это
 /dev/cua[0-3] .

 
Если параметры не указаны, то
 setserial 

выдаст тип микросхемы порта (например, 8250, 16450, 16550, 16550A, и так далее), аппаратный адрес ввода/вывода (I/O port), линию аппаратного прерывания (IRQ), назначенную частоту изменения состояния сигнала линии в бодах, и некоторые из его операционных флагов.
 
Если задана опция
 -g ,

то аргументы команды setserial интерпретируются как список устройств, характеристики которых следует показать.
 
Без опции
 -g ,

первый аргумент команды setserial интерпретируется как устройство, которое будет настраиваться или характеристики которого будут отображены, и любые дополнительные аргументы трактуются как параметры, которые должны быть присвоены этому последовательному устройству.
 
По большей части, для настройки параметров последовательного порта требуются привилегии суперпользователя. Однако, значения некоторых параметров могут устанавливаться и обычным пользователем, и эти исключения отмечены в этом руководстве.
 
   
 ОПЦИИ 

Команда
 setserial 

принимает следующие опции:
 
 
 -a 

 
В отчёте о конфигурации последовательного устройства выводить всю доступную информацию.
 -b 

 
В отчёте о конфигурации последовательного устройства выводить сводную информацию о настройках всех последовательных устройств, что может быть полезным для использовании в скриптах /etc/rc для отображения сообщений во время процесса загрузки системы.
 -G 

 
Вывести конфигурационную информацию последовательного порта в форме пригодной для подачи обратно в setserial в качестве аргументов командной строки.
 -q 

 
Быть скромнее. Строк в выводе команды
 setserial 

будет меньше.
 -v 

 
Быть многословнее. Вывод команды
 setserial 

будет расширен дополнительной информацией о текущем состоянии.
 -V 

 
Показать версию программы и выйти.
 -W 

 
Произвести "дикую" инициализацию и выйти. Эта опция больше не поддерживается в ядрах Linux версии 2.1 и выше.
 -z 

 
Обнулить флаги последовательного порта перед их установкой. Эта опция увязывает автоматическое сохранение флагов последовательного порта при использовании опции -G.
 
 
   
 ПАРАМЕТРЫ 

Последовательному порту могут быть присвоены следующие параметры.
 
Предполагается, что значения всех аргументов указаны в десятичной форме, кроме тех, которым предшествует "0x".
 
 
 port  базовый_адрес

 
Как описано выше, параметр
 port 

устанавливает базовый адрес ввода/вывода порта (I/O port).
 irq  номер_irq

 
Как и описано выше, параметр
 irq 

устанавливает номер линии запроса аппаратного прерывания IRQ.
 uart  тип_uart

 
Этот параметр используется для установки типа микросхемы UART. Разрешенные типы:
 никакой ,

8250, 16450, 16550, 16550A, 16650, 16650V2, 16654, 16750, 16850, 16950, и
16954.
Использование типа UART
 никакой ,

запретит использование порта.
 
Некоторые внутренние модемы заявлены, как имеющие "микросхему 16550A UART с буфером в 1 Кб". Это ложь. В действительности они не имеют 16550A-совместимую микросхему UART;
вместо этого у них имеется микросхема UART совместимая на уровне регистров с 16450 с буфером приёма в 1 Кб, для предотвращения переполнения приёмника.
Это важно, потому что они не имеют FIFO-буфера передачи. Следовательно, они несовместимы с микросхемами UART 16550A, и процесс автоматической конфигурации будет идентифицировать их правильно, как микросхемы 16450.
Если вы попытаетесь переопределить это применяя параметр
 uart ,

то сможете наблюдать потерянные символы во время передачи файла.
Эти микросхемы UART, обычно имеют и другие проблемы: что делает параметр
 skip_test 

для них, часто употребимым.
 autoconfig 

 
Когда этот параметр задан, то
 setserial 

запросит ядро о попытке автоматической конфигурации последовательного порта. Базовый адрес ввода/вывода должен быть установлен правильно; тогда ядро попытается определить тип микросхемы UART, и если задан параметр
 auto_irq ,

то Linux также попробует автоматически определить линию прерываний IRQ.
Параметр
 autoconfig 

должен указываться после параметров:  port ,  auto_irq , and  skip_test .
 auto_irq 

 
Попытаться определить линию прерываний IRQ во время выполнения автоматической конфигурации. Данная возможность не гарантирует, что результат её работы будет верным; некоторая аппаратура может обмануть ядро Linux. И в целом безопаснее не использовать возможности 
 auto_irq ,

предпочтительнее явно указать IRQ с помощью параметра
 irq .

 ^auto_irq 

 
 Не 

пытаться определить линию прерываний IRQ во время выполнения автоматической конфигурации.
 skip_test 

 
Пропустить проверку микросхемы UART. Некоторые внутренние модемы вместо микросхем UART, совместимых с чипами UART от National Semiconductor, имеют дешёвые имитирующие UART подделки. Некоторые из этих поделий не поддерживают в полном объёме режим обнаружения с применением внутренней "заглушки" (loopback), используемый ядром для уверенного определения типа микросхемы UART доступной по соответствующему адресу, прежде чем попытаться её сконфигурировать. Итак, вам не потребуется указывать этот параметр для надёжных внутренних модемов, ведь Linux может корректно инициализировать микросхемы UART.
 ^skip_test 

 
 Не 

пропускать проверку микросхемы UART во время выполнения автоматической конфигурации.
 baud_base  скорость_в_бодах

 
Этот параметр устанавливает частоту изменения состояния сигнала линии в бодах, которая является опорной частотой внутреннего генератора поделенной счётчиком-делителем на 16. Обычно, это значение равно 115200 бод, это также самая высокая скорость которую может поддерживать микросхема UART.
 spd_hi 

 
Использовать 57,6 Кбод, когда приложение запрашивает 38,4 Кбод.
Этот параметр может применяться непривилегированным пользователем.
 spd_vhi 

 
Использовать 115 Кбод, когда приложение запрашивает 38,4 Кбод.
Этот параметр может применяться непривилегированным пользователем.
 spd_shi 

 
Использовать 230 Кбод, когда приложение запрашивает 38,4 Кбод.
Этот параметр может применяться непривилегированным пользователем.
 spd_warp 

 
Использовать 460 Кбод, когда приложение запрашивает 38,4 Кбод.
Этот параметр может применяться непривилегированным пользователем.
 spd_cust 

 
Использовать пользовательский делитель при установке скорости передачи данных, когда приложение запрашивает 38,4 Кбод. Делитель определяется по формуле D=115200/V, где V - скорость передачи, бит/с. Входная частота синхронизации 1,8432 МГц делится на заданный коэффициент, после чего получается 16-кратная частота передачи данных. Иначе говоря, будет установлена скорость
 baud_base 

делённая на
 divisor .

Этот параметр может применяться непривилегированным пользователем.
 spd_normal 

 
Использовать 38,4 Кбод, когда приложение запрашивает 38,4 Кбод.
Этот параметр может применяться непривилегированным пользователем.
 divisor  делитель

 
Этот параметр устанавливает пользовательское деление частоты синхронизации. Данный делитель будет использован, при применении параметра
 spd_cust 

и установке приложением скорости передачи данных последовательного порта в 38,4 Кбод.
Этот параметр может применяться непривилегированным пользователем.
 sak 

 
Установить разделяющий ключ в электронный ключ безопасности.
 ^sak 

 
Выключить электронный ключ безопасности.
 fourport 

 
Сконфигурировать порт как четырёх-портовую карту AST.
 ^fourport 

 
Выключить настройку четырёх-портовой карты AST.
 close_delay  задержка

 
Определить период времени, в сотых долях секунды, в течении которого выход сигнала готовности терминала (компьютера/модема) к обмену данными DTR (Data Terminal Ready) должен быть низким, после которого устройство осуществляющее исходящий звонок будет закрыто, прежде чем, для осуществления дозвона, заблокированное устройство повысит уровень выходного сигнала DTR снова. По умолчанию, значение параметра задержки равно 50, или пол-секунды.
 closing_wait  задержка

 
Определить период времени, в сотых долях секунды, в течении которого ядро будет ожидать поступление данных передаваемых из последовательного порта, прежде чем закрыть порт. Если указать "нисколько", то задержка происходить не будет. Если указать "бесконечно", то ожидание ядром передачи буферизованых данных будет неограниченным. По умолчанию значение задержки установлено в 3000 или 30 секунд.
Эта стандартное значение подойдёт для большинства устройств. Если выбрана слишком продолжительная задержка, то последовательный порт может "подвиснуть" на долгое время ожидая данные от прерванного соединения.
Если выбран слишком короткая задержка, то появляется риск, что некоторые передаваемые данные будут утеряны. В случае, если устройство чрезвычайно медленное, такое как плоттер, потребуется установить большее значение closing_wait.
 session_lockout 

 
Блокировать обращения других сеансов к порту исходящих вызовов (/dev/cuaXX).
Процесс, однажды открыв порт, не разрешит процессу с другим идентификатором сеанса открыть этот порт, пока первый процесс его не закроет.
 ^session_lockout 

 
 Не 

блокировать обращения других сеансов к порту исходящих вызовов.
 pgrp_lockout 

 
Блокировать обращения процессов других групп к порту исходящих вызовов (/dev/cuaXX).
Процесс, однажды открыв порт, не разрешит процессам других групп открыть этот порт, пока первый процесс его не закроет.
 ^pgrp_lockout 

 
 Не 

блокировать обращения процессов других групп к порту исходящих вызовов.
 hup_notify 

 
По окончании использования линии процессом осуществлявшем исходящий звонок (либо при его завершении или обрыве связи), известить процесс блокированный при попытке открытия линии для ожидания входящих звонков, возвратом EAGAIN в состояние "открыто".
 
Применение этот параметр находит для терминалов (getty), которые блокируют последовательные порты во время ответа на входящий звонок. Это позволит (getty) сбросить модем (конфигурация которого могла быть изменена приложением использовавшим устройство исходящих звонков), прежде чем снова заблокировать его на открытие.
 ^hup_notify 

 
 Не 

уведомлять процесс блокированный при попытке открытия линии для ожидания входящих звонков, в случае если устройство исходящих звонков сформирует сигнал разъединения.
 split_termios 

 
Отдельно обрабатывать установки termios для устройства исходящих и для устройства входящих звонков.
 ^split_termios 

 
Использовать одну и туже структуру termios для хранения настроек устройств и входящих и исходящих звонков.
 callout_nohup 

 
Если соответствующий последовательный порт открыт как устройство исходящих звонков, не обрывать терминальное соединение (tty) в случае обнаружения отсутствия сигнала несущей.
 ^callout_nohup 

 
 Не 

игнорировать разрыв терминального соединения когда последовательный порт открыт как устройство исходящих звонков. Конечно же, если разрыв соединения произошёл, флаг HUPCL в termios должен быть включен.
 low_latency 

 
Минимизировать время ожидания приёма данных последовательным портом ценой большего использования ресурсов CPU.  (Обычно, для снижения накладных расходов, среднее время ожидания равно 5-10 мс, прежде чем символы начнут передаваться.) По умолчанию этот параметр отключен, но для некоторых приложений работающих в реальном времени он может быть полезным.
 ^low_latency 

 
Оптимизировать обработку последовательных символов в пользу эффективного использования CPU и ценой среднего времени ожидания обработки в 5-10 мс.
Данный параметр установлен по умолчанию.
 
   
 КОНФИГУРИРОВАНИЕ ПОСЛЕДОВАТЕЛЬНЫХ ПОРТОВ 

Управление последовательным портом разделяется на два этапа - предварительное конфигурирование аппаратных средств и текущее (оперативное) переключение режимов работы прикладным и системным ПО.
Важно отметить, что setserial  не  настраивает аппаратное обеспечение, конкретную последовательную микросхему на использование конкретного базового адреса ввода/вывода. Setserial всего лишь говорит ядру Linux где найти для данного последовательного порта, соответствующие ему базовый адрес ввода/вывода (I/O port) и линию аппаратных прерываний IRQ. Аппаратные средства могут настраиваться следующим образом. Порт, расположенный на плате расширения (мультикарте), устанавливаемый в слот расширения PCI (или ISA, ISA+VLB), обычно конфигурируется переключателями на самой плате. Порт, расположенный на системной (материнской) плате, обычно конфигурируется в BIOS, иногда переключением некоторых DIP-переключателей на плате.
 
Этот раздел предоставит информацию, которая поможет вам в конфигурировании последовательных портов.
 
"Стандартная в MS-DOS" конфигурация портов представлена ниже:
 
 /dev/ttys0 (COM1), port 0x3f8, irq 4
/dev/ttys1 (COM2), port 0x2f8, irq 3
/dev/ttys2 (COM3), port 0x3e8, irq 4
/dev/ttys3 (COM4), port 0x2e8, irq 3
 
 

 
Из-за ограничений, накладываемых архитектурой шины AT/ISA, линия запроса прерываний IRQ не может разделяться между двумя или более последовательными портами.
Если вы попытаетесь использовать два порта одновременно, то один из них, или сразу оба будут работать ненадёжно.
Это ограничение можно преодолеть, используя специальные многопортовые карты, которые разработаны так, чтобы несколько последовательных портов могли разделять одну линию аппаратных прерываний IRQ.
Linux поддерживает многопортовые последовательные карты, включая AST
FourPort, плату Accent Async, плату Usenet Serial II board, платы Bocaboard BB-1004, BB-1008, и BB-2016, и последовательную плату HUB-6.
 
Выбор альтернативной линии прерываний IRQ затруднён, так как большинство из них уже занято. В следующей таблице приведён список назначенных линий прерываний IRQ "стандартных для MS-DOS":
 
 IRQ 3: COM2
IRQ 4: COM1
IRQ 5: LPT2
IRQ 7: LPT1
 
 

 
Большинство людей находят, что IRQ 5 это хороший выбор, предполагая, что только один параллельный порт компьютера будет задействован. Другой хороший вариант это IRQ 2 (он же IRQ 9); несмотря на то, что эта линия IRQ иногда используется сетевой картой, и реже бывает, что карта VGA сконфигурирована на использование IRQ 2 для прерываний вертикальной развёртки.
Если ваша карта VGA настроена именно так, попробуйте отключить это, и тогда вы сможете присвоить эту линию IRQ другой карте. В Linux и большинстве других операционных систем в этом нет необходимости.
 
Пожалуй, только линии прерываний IRQ 3, 4, и 7 используются последовательными и параллельными портами. (Если ваша последовательная карта имеет 16-битный коннектор, и поддерживает высокие номера прерываний, то также будут доступны IRQ 10, 11, 12, и 15.)
 
На машинах класса AT, линия IRQ 2 представляется как IRQ 9, и Linux так и будет её интерпретировать.
 
Иные линии прерываний IRQ, кроме 2 (9), 3, 4, 5, 7, 10, 11, 12, и 15,
 не 

должны использоваться, так как присвоены другим аппаратным средствам и, в общем случае, не могут быть изменены. "Стандартно" аппаратные прерывания распределены следующим образом:
 
 IRQ  0      Прерывания от таймера
IRQ  1      Прерывания от клавиатуры
IRQ  2      Связь со вторым контроллером прерываний (каскадное прерывание)
IRQ  3      Последовательный порт 2
IRQ  4      Последовательный 1
IRQ  5      Параллельный порт 2 или звуковая карта (в PS/2 свободно)
IRQ  6      Контроллер дисковода
IRQ  7      Параллельный порт 1
IRQ  8      Текущее время
IRQ  9      Свободно или сетевая карта, иногда переназначено на IRQ2
IRQ 10      Свободно
IRQ 11      Свободно, SCSI адаптер или поддержка IRQ для управления PCI 
IRQ 12      Свободно или порт мыши Bus Mouse
IRQ 13      Математический сопроцессор
IRQ 14      Контроллер дисковых накопителей (первичный IDE)
IRQ 15      Контроллер дисковых накопителей (вторичный IDE) или свободно 
 
 

 
   
 НАСТРОЙКА МНОГОПОРТОВЫХ ПЛАТ 

 
Некоторые многопортовые последовательные платы разделяют одну линию прерываний IRQ между одним или несколькими портами, обнаруживая ожидает или нет обслуживания любой из портов.
Если многопортовая плата поддерживает эти порты, то вам следует использовать их, во избежании появления запертых устройств в случае потери прерывания.
 
Для настройки этих портов укажите параметр
 set_multiport 

и следующие за ним значения параметров множества портов. Параметры множества портов указываются в формате:
 port (порт)

который будет проверен,
 mask (маска)

которая указывает на значимые в регистре биты, и наконец, параметр 
 match (сопоставление),

определяющий значимые в регистре биты, которые должны быть тождественны в случае отсутствия незавершённых заданий.
 
Может быть определено до четырёх комбинаций port/mask/match. Первая из этих комбинаций, должна быть определена параметрами
 port1 ,

 mask1 ,

и
 match1 .

Вторая комбинация задаётся указанием
 port2 ,

 mask2 ,

и
 match2 ,

и так далее. Для отключения этой проверки множества портов, значение
 port1 

следует установить в ноль.
 
Для просмотра многопортовых настроек, в вызове команды setserial укажите параметр
 get_multiport .

 
Далее приведены обычно используемые настройки для некоторых последовательных плат:
 
 AST FourPort    port1 0x1BF mask1 0xf match1 0xf

Boca BB-1004/8  port1 0x107 mask1 0xff match1 0

Boca BB-2016    port1 0x107 mask1 0xff match1 0 
                port2 0x147 mask2 0xff match2 0
 
 

 
   
 Конфигурирование Hayes ESP 

Также
 setserial 

может быть использована для настройки последовательной платы Hayes ESP.
 

Нижеперечисленные параметры используются для настройки последовательных портов ESP:
 
 rx_trigger 

 
Уровень триггера (в байтах) FIFO-приёмника. Следствием установки большего значения, может быть уменьшение количества прерываний и следовательно повышение производительности; тем не менее, слишком большое значение может привести к потерям данных. Допустимые значения от 1 до 1023.
 tx_trigger 

 
Уровень триггера (в байтах) FIFO-передатчика. Следствием установки большего значения, может быть уменьшение количества прерываний и следовательно повышение производительности; тем не менее, слишком большое значение может привести к потерям данных. Допустимые значения от 1 до 1023.
 flow_off 

 
Уровень (в байтах), на котором порт ESP "отключит поток" от удалённого передатчика (т.е., сообщит ему о прекращении отправки байтов). Допустимые значения от 1 до 1023. Это значение должно быть больше уровня триггера приёмника и уровня "flow on (включить поток)".
 flow_on 

 
Уровень (в байтах), на котором порт ESP "включит поток" от удалённого передатчика (т.е., сообщит ему о продолжении отправки байтов). Допустимые значения от 1 до 1023. Это значение должно быть меньше уровня "flow off (отключить поток)", но больше уровня триггера приёмника.
 rx_timeout 

 
Период времени ожидания портом ESP, после получения последнего символа, перед вызовом прерывания. Параметр может принимать значение от 0 до 255. Слишком высокое значение увеличит время реакции, а слишком низкое повлечёт излишние прерывания.
 
 
   
 ПРЕДОСТЕРЕЖЕНИЕ 

ПРЕДОСТЕРЕЖЕНИЕ: Настройка последовательного порта для использования неверного базового адреса ввода/вывода может запереть вашу машину.
   
 FILES 

 /etc/rc.local 

 /etc/rc.serial 

   
 СМ. ТАКЖЕ 

 tty (4),

 ttys (4),

kernel/chr_drv/serial.c
   
 АВТОР 

Оригинальная версия setserial была написана Риком Сладким (Rick Sladkey)
( jrs@world.std.com ), изменения были внесены Майклом К. Джонсоном (Michael K. Johnson)
( johnsonm@stolaf.edu ).
 
Эта версия была переписана "с нуля" Тэодором Ц'о (Theodore Ts'o)
( tytso@mit.edu ) 1/1/93. Исключительная ответственность за любые ошибки и проблемы лежит на нём.
   
 БЛАГОДАРНОСТИ 

В процессе перевода сильно помогли главы 9 и 10 книги Михаила Гука "Аппаратные средства IBM PC. Энциклопедия". С большой признательностью, в часть "КОНФИГУРИРОВАНИЕ ПОСЛЕДОВАТЕЛЬНЫХ ПОРТОВ" включены почти дословно пара предложений из раздела 9.2.7 той же книги.
   
 ПЕРЕВОД 

Василий Коломеец (Vasily Kolomeets) < boojuman@gmail.com >
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ОПЦИИ 
 ПАРАМЕТРЫ 
 КОНФИГУРИРОВАНИЕ ПОСЛЕДОВАТЕЛЬНЫХ ПОРТОВ 
 НАСТРОЙКА МНОГОПОРТОВЫХ ПЛАТ 
 Конфигурирование Hayes ESP 
 ПРЕДОСТЕРЕЖЕНИЕ 
 FILES 
 СМ. ТАКЖЕ 
 АВТОР 
 БЛАГОДАРНОСТИ 
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