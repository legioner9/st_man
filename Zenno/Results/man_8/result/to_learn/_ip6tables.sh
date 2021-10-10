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
 
 
 
 ip6tables (8) >>  ip6tables  (8)   ( Русские man: Команды системного администрирования )   ip6tables  (8)   ( Linux man: Команды системного администрирования ) 


   
 ИМЯ 

iptables - инструмент администрирования фильтра пакетов IPv6
   
 ОБЗОР 

 ip6tables [-t таблица] -[AD]  цепочка описание-правил [опции]

 

 iptables [-t таблица] -I  цепочка [номер-правила] описание-правил [опции]

 

 ip6tables [-t таблица] -R  цепочка номер-правила описание-правил [опции]

 

 ip6tables [-t таблица] -D  цепочка номер-правила [опции]

 

 ip6tables [-t таблица] -[LFZ]  [цепочка] [опции]

 

 ip6tables [-t таблица] -N  цепочка

 

 ip6tables [-t таблица] -X  [цепочка]

 

 ip6tables [-t таблица] -P  цепочка цель [опции]

 

 ip6tables [-t таблица] -E  старое-имя-цепочки новое-имя-цепочки

   
 ОПИСАНИЕ 

 ip6tables 

используется для установки, настройки и исследования таблиц
правил фильтрации IPv6-пакетов в ядре Linux.
 
Каждая таблица содержит несколько предопределённых цепочек и
может содержать цепочки, определённые пользователем. 
Каждая цепочка - это список правил, которые могут воздействовать на множества
пакетов.
Каждое правило определяет, какие действие произвести с пакетами, на которые оно действует.
Эти действия называются целью, целью может быть и переход на другую (определённую пользователем) цепочку в этой же таблице.
 
   
 ЦЕЛИ 

Правило брандмауэра (межсетевого экрана) определяет критерии для пакета и цели.
Если пакет не попадает под действие правила, тестируется следующее правило в цепочке;
если попадает, - тестируется правило указанное в цели,
которая может быть именем новой цепочки или одно из специальных целей:
 ACCEPT ,

 DROP ,

 QUEUE 

или
 RETURN .

 

 ACCEPT  

означает принять (пропустить далее) пакет
 DROP 

означает проигнорировать (отбросить) пакет.
 QUEUE 

означает передать пакет в адресное пространство пользователя
(получение пакета пользовательским процессом зависит
от обработчика очереди; в ядрах 2.4.x
и 2.6.x до 2.6.13 использовался обработчик
 ip_queue; 

в ядрах начиная с 2.6.14 появился дополнительный обработчик 
 nfnetlink_queue; 

в этом случае пакеты с целью QUEUE отправляются очереди номер 0;
см. также цель
 NFQUEUE 

ниже).
 RETURN 

означает остановить применение правил этой цепочки
и передать пакет следующему правилу предыдущей (вызывающей) цепочки.
Если достигается конец встроенной (предопределённой) цепочки или в ней 
к пакету применяется правило с целью 
 RETURN, 

то окончательное действие над пакетом (цель) определяется стратегией (политикой)
цепочки.
   
 ТАБЛИЦЫ 

Существует две независимых таблицы
(какие именно таблицы присутствуют в данный момент --
зависит от конфигурации ядра и наличия его модулей), поскольку NAT ещё не
реализована.
 
 -t, --table  таблица 

 
Задаёт таблицу, к которой будет применена команда.
Если ядро скомпилировано с автоматической загрузкой модулей,
то, при необходимости, будет загружен модуль, соответствующий таблице.
Итак, таблицы:
 
 
 filter :

 
Таблица используемая по-умолчанию (если опция -t не задана).
Эта таблица содержит предопределённые цепочки
 INPUT 

(для входящих пакетов - направленных данному компьютеру),
 FORWARD 

(для проходящих пакетов) и 
 OUTPUT 

(для исходящих пакетов - сгенерированных в локальной системе). 
 mangle :

 
Эта таблица используется для специальных изменений пакетов.
Она содержала две предопределённые цепочки в ядрах до версии 2.4.17: 
 PREROUTING 

(для изменения входящих пакетов до их перенаправления-маршрутизации) и
 OUTPUT 

(для изменения локально сгенерированных пакетов перед их маршрутизацией).
Начиная с ядер версии 2.4.18, включены ещё три другие предопределённые цепочки: 
 INPUT 

(для изменения входящих пакетов),
 FORWARD 

(для изменения проходящих пакетов) и 
 POSTROUTING 

(для изменения исходящих пакетов).
 raw :

 
Используется преимущественно для создания исключений в слежении за соединениями
совместно с целью NOTRACK. Для неё в netfilter сделаны специальные 
вставки имеющие высший приоритет и поэтому вызываемые до nf_conntrack
и всех других таблиц. В таблице имеются следующие предопределённые цепочки:
 PREROUTING 

(для пакетов приходящих из сетевых интерфейсов)
 OUTPUT 

(для пакетов генерируемых локальными процессами)
 
 

 
   
 ОПЦИИ 

Опции для 
 ip6tables 

могут быть разделены на несколько групп.
   
 КОМАНДЫ 

Эти опции определяют действие, выполняемое в данном сеансе работы программы.
В командной строке может быть указана только одна из этих опций,
если противоположное явно не указано в описании.
Длинные команды можно сокращать до первых букв,
но их должно быть достаточно, чтобы программа могла однозначно идентифицировать
команду.
 
 -A, --append  цепочка определение-правила 

 
Добавить одно или несколько правил в конец указанной цепочки.
Если имя источника и/или стока (назначения) соответствует нескольким адресам,
правило будет добавлено для всех возможных комбинаций адресов.
 -D, --delete  цепочка определение-правила 

 

 -D, --delete  цепочка номер-правила 

 
Удалить одно или несколько правил из указанной цепочки.
Существует две версии этой команды: правило может быть указано через его номер в
цепочке (счёт первого правила начинается с 1) или через соответствие правилу.
 -I, --insert  цепочка  [ номер-правила ]

 
 определение-правила "
В указанной цепочке вставить одно или более правил в позицию, заданную номером.
Так, если указан номер 1, правило или правила будут вставлены в начало цепочки.
Это подразумеваемая позиция, если номер не указан.
 -R, --replace  цепочка номер-правила определение-правила 

 
Заменить правило в указанной цепочке. Если имена источника и/или стока
соответствуют нескольким адресам,
команда не будет выполнена с сообщением об ошибке. Правила нумеруются с 1.
 -L, --list  [ цепочка ]

 
Показать все правила в выбранной цепочке.
Если цепочка не указана, то команда применяется ко всем цепочкам.
Как и всякая другая команда ip6tables, она воздействует на указанную таблицу
(filter, если таблица не указана), к примеру следующая команда выводит список
правил таблицы mangle:
  ip6tables -t mangle -n -L
 

Обратите внимание на опцию
 -n 

которая часто используется для отключения (медленного) определения имён DNS.
Также можно указать опцию -Z
 -Z 

(zero), в этом случае автоматически произойдёт перечисление правил цепочки и
обнуление её счётчиков.
Вид результата зависит от других аргументов.
Самый детальный результат может быть получен так:
  ip6tables -L -v
 

 -F, --flush  [ цепочка ]

 
Сбросить выбранную цепочку (все цепочки в таблице, если ни одна не указана).
Это эквивалентно удалению по одному всех правил.
 -Z, --zero  [ цепочка ]

 
Обнулить счётчики количества пакетов и байтов во всех или указанной цепочке.
Можно также указать 
 -L, --list 

чтобы отобразить значения счётчиков непосредственно перед их обнулением (см.
выше).
 -N, --new-chain  цепочка 

 
Создать новую, определённую пользователем цепочку с заданным именем.
В момент создания цепочки не должно быть уже существующих целей с указанным
именем.
 -X, --delete-chain  [ цепочка ]

 
Удалить цепочку, определённую пользователем.
При этом не должно быть ссылок на удаляемую цепочку.
Если такие ссылки есть, необходимо сначала удалить или изменить правила,
ссылающиеся на удаляемую цепочку.
Если цепочка не указана, из таблицы будут удалены все цепочки кроме встроенных.
 -P, --policy  цепочка цель 

 
Определить стратегию для цепочки.
Допустимые цели описаны в разделе 
 ЦЕЛИ 

настоящего документа.
Стратегия может быть задана только для встроенных цепочек и не может быть задана
для цепочек определённых пользователем.
 -E, --rename-chain  старое-имя новое-имя 

 
Переименовать цепочку, определённую пользователем.
Эта команда не изменяет структуру таблицы и используется только в косметических
целях.
 -h 

 
Подсказка. Выдаёт очень короткое описание синтаксиса команд.
 
   
 ПАРАМЕТРЫ 

Следующие параметры предназначены для формирования правил
(используются в командах add, delete, insert, replace и append).
 
 -p, --protocol  [!]  протокол 

 
Сетевой протокол применяемого правила или проверяемого пакета.
Допустимые значения:
 tcp ,

 udp ,

 icmpv6 ,

 esp ,

 all .

Также протоколы можно указывать в виде числа (соответствующего одному из
перечисленных или иному протоколу).
Названия протоколов также можно брать из файла /etc/protocols.
Расширения заголовков IPv6, кроме
 esp ,

запрещены.
 esp 

и 
 ipv6-nonext 

можно использовать на ядрах 2.6.11 и выше.
Знак "!" перед названием протокола инвертирует результат теста.
Число 0 эквивалентно 
 all .

Значение
 all 

соответствует всем протоколами и используется если данный параметр опущен.
 -s, --source  [!]  адрес [/ маска ]

 
Адрес источника.
 Адресом 

может быть имя хоста (не рекомендуем указывать имена хостов, разрешаемые через
запросы к удалённым DNS),
сетевой IPv6-адрес (либо диапазон адресов - при указании маски), 
или одиночный IPv6-адрес (сетевые имена не поддерживаются на данный момент).
 Маской 

может быть сетевая маска или число, соответствующее количеству определяющих
разрядов в сетевой маске.
Например, маска 
 64 

эквивалентна 
 ffff:ffff:ffff:ffff:0000:0000:0000:0000 .

Знак "!" перед спецификацией адреса инвертирует результат теста.
Опция --src
 --src 

является псевдонимом данного параметра.
 -d, --destination  [!]  адрес [/ маска ]

 
Адрес цели. Синтаксис аналогичен синтаксису параметра 
 -s 

Опция 
 --dst 

является псевдонимом данного параметра.
 -j, --jump  цель 

 
Определяет цель правила; т.е., что делать, когда пакет попадает под условия
правила.
Целью может быть цепочка определённая пользователем (отличная от цепочки
правила),
одна из встроенных целей, определяющая окончательное действие над пакетом,
или расширение (см. раздел 
 РАСШИРЕНИЯ  

далее). Если эта опция не задана в правиле, то правило не будет применяться, но
счётчик количества применений правила будет увеличен.
 -i, --in-interface  [!]  имя 

 
Имя интерфейса, через который должен быть получен обрабатываемый пакет
(только для пакетов входящих в цепочки 
 INPUT ,

и 
 PREROUTING ). 

Использование аргумента "!" перед именем интерфейса инвертирует результат теста.
Если имя интерфейса оканчивается на "+", то это означает любой интерфейс, имя
которого начинается с указанного имени.
Если эта опция опущена, при обработке пакета интерфейс, с которого он был
получен, не учитывается.
 -o, --out-interface  [!]  имя 

 
Имя интерфейса, через который отправляется обрабатываемый пакет
(только для пакетов входящих в цепочки 
 FORWARD ,

 OUTPUT 

и 
 POSTROUTING ). 

Использование аргумента "!" перед именем интерфейса инвертирует результат теста.
Если имя интерфейса оканчивается на "+", то это означает любой интерфейс, имя
которого начинается с указанного имени.
Если эта опция опущена, при обработке пакета интерфейс, с которого он был
получен, не учитывается.
 
 

фрагментам фрагментированного пакета.


номера портов или тип ICMP.

первому фрагменту или к нефрагментированному пакету.

 -c, --set-counters  число-пакетов число-байт 

Позволяет инициализировать в правиле счётчики пакетов и байтов (при выполнении
операций
 INSERT, 

 APPEND, 

 REPLACE ). 

 
   
 ПРОЧИЕ ОПЦИИ 

Имеются следующие дополнительные опции:
 
 -v, --verbose 

 
Увеличить подробность сообщений.
При указании её с командой list будет выводиться имя интерфейса,
параметры правил и маски TOS.
Также выводятся счётчики ("K", "M", "G" соответствуют множителям
1 000, 1 000 000 и 1 000 000 000; см.
 -x ). 

Если ключ используется с командами --append, --insert, --delete или --replace,
то будет выведен подробный отчёт о произведенной операции.
 -n, --numeric 

 
Выводить IP-адреса и номера портов в числовом виде предотвращая попытки
преобразовать их в символические имена.
 -x, --exact 

 
Для всех чисел в выходных данных выводить их точные значения без округления
и без использования множителей K, M, G.
Этот ключ используется только с командой 
 -L 

и не применим с другими командами.
 --line-numbers 

 
Режим вывода номеров строк при отображении списка правил командой --list.
Номер строки соответствует позиции правила в цепочке.
 --modprobe=команда 

 
Команда загрузки модулей ядра (при добавлении правил в цепочку).
Может использоваться в случае, когда модули ядра находится вне стандартного пути
поиска.
 
   
 РАСШИРЕНИЯ МЕХАНИЗМА ТЕСТИРОВАНИЯ 

Возможности тестирования пакетов расширяются через модули.
Последние загружаются либо автоматически при указании
 -p 

/
 --protocol , 

либо явно при указании имени модуля через
 -m 

/
 --match . 

После загрузки модуля становятся доступными дополнительные опции командной
строки в зависимости от модуля.
Справку по новым ключам можно получить с помощью ключа
 -h 

/
 --help . 

Допустимо указание нескольких модулей.
Результаты тестирования, выдаваемые модулем, обычно можно инвертировать, указав 
 ! 

перед его именем.
В базовую поставку входят следующие модули.

   
 ah 

Этот модуль тестирует по параметрам аутентификационного заголовка пакетов IPsec.
 
 --ahspi  [!]  spi [: spi ]

 
Последовательный периферийный интерфейс (SPI).
 --ahlen  [!]  размер 

 
Общий размер заголовка в октетах (байтах).
 --ahres 

 
Пропускать пакеты если зарезервированное поле заполнено нулями.
 
   
 condition 

Результат теста совпадает со значением в соответствующем файле /proc - 0 или 1.
 
 --condition  [!]  имя-файла 

 
Выдать результат теста из /proc/net/ip6t_condition/имя-файла.
 
   
 dst 

Фильтрует пакеты по параметрам заголовка "Destination Options"
 
 --dst-len  [!]  размер 

 
Общий размер заголовка в октетах.
 --dst-opts  тип [: размер ][, тип [: размер ]...]

 
Номер опции и размер данных в октетах.
 
   
 esp 

Служит для проверки значений SPI в заголовках ESP пакетов IPSec.
 
 --espspi  [!]  spi [: spi ]

 
 
   
 eui64 

Фильтрует по компоненту EUI-64 адреса IPv6 настроенного автоматически без
сохранения состояния.
Модуль производит сравнение EUI-64 полученного из исходного MAC-адреса
Ehternet-фрейма с младшими 64 разрядами IPv6-адреса источника.
Разряд "Universal/Local" не учитывается.
Модуль не пропускает другие фреймы на уровне канала связи
и может использоваться только в цепочках
 PREROUTING ,

 INPUT, 

 FORWARD .

   
 frag 

Фильтрует по параметрам заголовка "Fragment".
 
 --fragid  [!]  идентификатор [: идентификатор ]

 
Пропускать пакеты с идентификатором равным указанному или входящему в указанный
диапазон.
 --fraglen  [!]  размер 

 
Недействительно для ядер 2.6.10 и выше.
Размер заголовка Fragment фиксирован и ключ не имеет смысла.
 --fragres  

 
Пропускать пакеты, если зарезервированное поле заполнено нулями.
 --fragfirst  

 
Пропускать при первом фрагменте.
 [--fragmore] 

 
Пропускать если фрагментов несколько.
 [--fraglast] 

 
Пропускать при последнем фрагменте.
 
   
 fuzzy 

Результат теста зависит от скорости доставки пакетов по методу FLC (Fuzzy Logic
Controller):
пока скорость доставки пакетов не достигает нижнего порога, условие никогда не
будет выполняться; 
при скорости в диапазоне между нижним и верхним порогами частота выполнения
условий будет расти пропорционально скорости доставки пакетов;
после превышения верхнего порога скорости частота выполнения условий достигнет
максимального значения.
 
 --lower-limit  скорость 

 
Нижний порог (пакетов в секунду).
 --upper-limit  скорость 

 
Верхний порог (пакетов в секунду).
 
   
 hbh 

Фильтрует по параметрам заголовка "Hop-by-Hop"
 
 --hbh-len  [!]  размер 

 
Общий размер заголовка в октетах.
 --hbh-opts  тип [: размер ][, тип [: размер ]...]

 
Номер опции и размер данных в октетах.
 
   
 hl 

Фильтрует по полю "Hop Limit" заголовка IPv6.
 
 --hl-eq  [!]  значение 

 
Пропускать пакеты с Hop Limit равным указанному  значению .
 --hl-lt  значение 

 
Пропускать пакеты с Hop Limit меньше указанного  значения .
 --hl-gt  значение 

 
Пропускать пакеты с Hop Limit больше указанного  значения .
 
   
 icmp6 

Это расширение загружается при указании `--protocol ipv6-icmp' или `--protocol
icmpv6'
 
 --icmpv6-type  [!]  тип [/ код ]| имя-типа 

 
Тип ICMPv6 в виде числа или имени в соответствии с 
  ip6tables -p ipv6-icmp -h
 

 
   
 ipv6header 

Фильтрует по заголовкам расширений IPv6 и/или заголовку более высокого уровня.
 
 --header  [!]  заголовок [, заголовок ...]

 
Пропускать пакеты с набором заголовком точно равным указанному.
Заголовки встроенные в ESP не учитываются.
В качестве
 заголовка 

можно указывать:
 hop | hop-by-hop 

(заголовок "Hop-by-Hop Options"),
 dst 

(заголовок "Destination Options header"),
 route 

(заголовок "Routing header"),
 frag 

(заголовок "Fragment header"),
 auth 

(заголовок "Authentication header"),
 esp 

(заголовок "Encapsulating Security Payload"),
 none 

(заголовок "No Next header") - соответствующий 59 в поле Next Header заголовка
IPv6 или любого заголовка расширений IPv6, -
 proto 

- соответствующий любому заголовку протокола более верхнего уровня.
Возможно использование имён протоколов в соответствии с /etc/protocols 
и номеров. 255 соответствует 
 proto .

 [--soft] 

 
Смягчить условия: пропускать пакет если в нём присутствуют _как минимум_
указанные
заголовки.
 
   
 length 

Позволяет проверять размеры пакетов (точно или по диапазону).
Заголовок IPv6 не считается.
 
 --length  [!]  размер [: размер ]

 
 
   
 limit 

Этот модуль выдаёт положительный результат с фиксированной частотой.
Правило использующее это расширение будет выполняться до момента достижения
лимита
(и наоборот, если указан "!").
Может использоваться вместе с целью
 LOG 

для получения ограниченного протоколирования.
 
 --limit  частота 

 
Максимальная средняя частота положительных результатов.
После числа можно указывать единицы:
`/second', `/minute', `/hour', `/day'; значение по умолчанию - 
3/час.
 --limit-burst  number 

 
Ограничение на исходное число пропускаемых пакетов:
это число увеличивается на единицу каждый раз когда ограничение на частоту
положительных результатов не достигается.
Это происходит столько раз, сколько указано в данном параметре.
Значение по умолчанию - 5.
 
   
 mac 

 
 --mac-source  [!]  адрес 

 
Выполнять тестирование по MAC-адресу отправителя.
Адрес должен указываться в форме XX:XX:XX:XX:XX:XX.
Использование данного условия имеет смысл только при получении пакетов от
устройства Ethernet, проходящих одну из цепочек
 PREROUTING ,

 FORWARD 

и
 INPUT . 

 
   
 mark 

Тестирует по полю mark. Это специальное поле, которое существует только в
области памяти ядра и связывается с конкретным пакетом.
(для установки этого поля используется цель
 MARK , 

описанная ниже).
 
 --mark  число [/ маска ]

 
Пропускать пакеты с указанной отметкой (представляющей собой беззнаковое целое)
Если указана  маска , то перед сравнением она накладывается на указанное
значение (логическое И).
 
   
 multiport 

Позволяет указывать в тексте правила несколько (до 15) портов и диапазонов
портов.
Диапазон портов (порт:порт) считается за два порта (в отношении ограничения в
15).
Используется только вместе с 
 -p tcp 

или
 -p udp .

 
 --source-ports  [!] порт [, порт [, порт:порт ...]]

 
Пропускать пакеты с исходным портом равным одному из указанных.
Краткая форма ключа -
 --sports . 

 --destination-ports  [!] порт [, порт [, порт:порт ...]]

 
Пропускать пакеты с портом назначения равным одному из указанных.
Краткая форма ключа -
 --dports . 

 --ports  [!] порт [, порт [, порт:порт ...]]

 
Пропускать пакеты с одинаковыми исходным и портом назначения и равными одному из
указанных.
 
   
 nth 

Пропускает каждый `n'-ый пакет
 
 --every  n 

 
Пропускать каждый n-ый пакет.
 [ --counter  номер ] 

 
Использовать внутренний счётчик с указанным номером. Значение по умолчанию -
`0'.
 [ --start  число ] 

 
Начальное значение счётчика (вместо стандартного `0').
Обычно между `0' и `n'-1.
 [ --packet  k ] 

 
Пропускать k-ый пакет из набора n пакетов. Соответственно, значение должно быть
между `0' и `n'-1.
 
   
 owner 

Позволяет фильтровать по параметрам "владельца" пакета.
Этот критерий можно использовать только в цепочке 
 OUTPUT , 

но даже в этом случае могут попадаться пакеты без владельца
(например, ответы ISMP ping), и такие пакеты не будут пропускаться.
Имеет статус экспериментального.
 
 --uid-owner  идентификатор-пользователя 

 
Пропускать пакеты генерируемые процессами работающими от указанного
пользователя.
 --gid-owner  идентификатор-группы 

 
Пропускать пакеты, генерируемые процессами работающими от пользователя входящего
в указанную группу.
 --pid-owner  идентификатор-процесса 

 
Пропускать пакеты, генерируемые процессом с указанным идентификатором.
 --sid-owner  идентификатор-сеанса 

 
Пропускать пакеты, генерируемые процессами в сеансе с указанным идентификатором.
 
 


соответствующую функцию)

 Примечание: фильтрация по pid, sid и команде не работает в SMP-системах 

 
   
 physdev 

Позволяет организовывать фильтрацию по устройствам, используемым для связи двух
локальных сетей.
Это модуль является частью инфраструктуры для IP-брандмауэра "прозрачно"
связывающего сети. Имеет смысл использовать только с ядрами 2.5.44.
 
 --physdev-in  [!]  имя 

 
Порт связи сетей, через который получен пакет (только для пакетов, проходящих
цепочки
 INPUT ,

 FORWARD 

и 
 PREROUTING ). 

Если имя интерфейса оканчивается на "+", то будут пропускаться пакеты со всех
интерфейсов, имя которых начинается 
с указанной последовательности.
Если пакет получен из устройства, которое не связывает локальные сети,
он не будет пропущен (если только не указано "!").
 --physdev-out  [!]  имя 

 
Порт связи сетей, через который пакет отправляется
(для пакетов проходящих цепочки 
 FORWARD ,

 OUTPUT 

и 
 POSTROUTING ). 

Если имя интерфейса оканчивается на "+", то будут пропускаться пакеты со всех
интерфейсов, имя которых начинается 
с указанной последовательности. Тестирование по порту вывода в цепочках
 OUTPUT 

 nat  и  mangle 

невозможно, зато в
 filter OUTPUT 

- возможно. Если пакет отправляется не через устройство связи двух сетей,
или если отправляющее устройство на данном этапе неизвестно,
то такой пакет не будет пропущен (если только не указан "!").
 [!]  --physdev-is-in 

 
Пропускать пакеты, полученные через интерфейс связи двух сетей.
 [!]  --physdev-is-out 

 
Пропускать пакеты, отправляемые через интерфейс связи двух сетей.
 [!]  --physdev-is-bridged 

 
Пропускать пакеты для которых не выполняется маршрутизация (т.к. они проходят
через "мост" между сетями)
Имеет смысл только в цепочках FORWARD и POSTROUTING.
 
   
 policy 

Позволяет фильтровать пакеты по стратегии обработки пакета IPsec.
 
 --dir  in|out 

 
Стратегия по которой следует фильтровать: стратегии извлечения данных из
сообщения или включения (инкапсуляции) оных.
Вариант
 in 

допустим в цепочках
 PREROUTING, INPUT и FORWARD , 

вариант
 out 

  - в цепочках
 POSTROUTING, OUTPUT и FORWARD . 

 --pol  none|ipsec 

 
Должен ли пакет подлежать обработке IPsec.
 --strict 

 
Пропускать пакеты с хотя бы одним правилом, соответствующим заданной стратегии
или обязательно со всеми.
 --reqid  id 

 
Пропускать пакеты с указанным идентификатором reqid правила стратегии.
Идентификатор указывается с помощью команды 
 setkey (8) , 

в качестве уровня используется
 unique:id . 

 --spi  spi 

 
Фильтровать пакеты на основе последовательного периферийного интерфейса (SPI)
SA.
 --proto  ah|esp|ipcomp 

 
Фильтровать пакеты на основе протокола инкапсуляции.
 --mode  tunnel|transport 

 
Фильтровать пакеты на основе режима инкапсуляции.
 --tunnel-src  адрес[/маска] 

 
Пропускать пакеты с исходным адресом [пункта] режима tunnel SA, входящим в
указанный диапазон.
Имеет смысл только при --mode tunnel.
 --tunnel-dst  адрес[/маска] 

 
Пропускать пакеты с адресом назначения режима tunnel SA, входящим в указанный
диапазон.
Имеет смысл только при --mode tunnel.
 --next 

 
Начать следующий элемент в спецификации стратегии. 
Может указываться вместе с 
--strict
 
   
 random 

Вероятностная фильтрация.
 
 --average  доля 

 
Пропускать указанную часть пакетов (в процентах).
Значение по умолчанию - 50%.
 
   
 rt 

Фильтрует по заголовку маршрутизации IPv6
 
 --rt-type  [!]  тип 

 
Пропускать пакеты с указанными типом (указывается номер).
 --rt-segsleft  [!]  число [: число-макс ]

 
Пропускать пакеты со значением поля segments left (количество оставшихся
сегментов)
входящим в указанный диапазон или равным указанному.
 --rt-len  [!]  длина 

 
Пропускать пакеты указанного размера.
 --rt-0-res 

 
Пропускать также пакеты с резервным полем (тип 0)
 --rt-0-addrs   адрес [, адрес ...]

 
Пропускать адреса с типом 0 (список).
 --rt-0-not-strict 

 
Список адресов с типом 0 не строгий.
 
   
 tcp 

Это расширение загружается при указании `--protocol tcp'.
Становятся доступными следующие ключи:
 
 --source-port  [!]  порт [: порт ]

 
Исходный порт (или диапазон портов), с которого должен быть отправлен пакет для
прохождения теста.
В качестве значения может указываться номер порта или название сетевой службы. 
Диапазон (включительно) портов указывается в формате
 первый-порт : последний-порт .

Если опускается первый порт, т.е. когда критерий записывается как --source-port
:80,
то в качестве начала диапазона принимается число 0.
Если опускается максимальный порт, т.е. когда критерий записывается как
--source-port 22:,
то в качестве конца диапазона принимается число 65535.
Если первый порт больше последнего, они меняются местами.
Краткая форма ключа -
 --sport . 

 --destination-port  [!]  порт [: порт ]

 
Порт (или диапазон портов) назначения. Краткая форма ключа -
 --dport . 

 --tcp-flags  [!]  флаги   comp 

 
Пропускать пакеты с указанным набором флагов TCP.
Первый аргумент - флаги (через запятую) которые нужно проверять,
второй - те флаги, которые должны быть установлены.
Возможные флаги:
 SYN ACK FIN RST URG PSH ALL NONE .

Так, условию
  ip6tables -A FORWARD -p tcp --tcp-flags SYN,ACK,FIN,RST SYN
 

будут соответствовать пакеты с установленным флагом SYN, и снятыми флагами
ACK, FIN, RST.
 [!] --syn 

 
Пропускать пакеты TCP с установленным флагом SYN и снятыми ACK,RST.
Такие пакеты используются для запроса создания TCP-соединения;
очевидно, блокирование таких пакетов приведёт к невозможности 
создания входящих TCP-соединений.
Эквивалентно  --tcp-flags SYN,RST,ACK SYN .
Указание "!" перед "--syn", смысл ключа инвертируется.
 --tcp-option  [!]  номер-опции 

 
Пропускать пакеты с установленной опцией TCP.
 
   
 udp 

Это расширение загружается при указании `--protocol udp'.
Доступны следующие ключи:
 
 --source-port  [!]  порт [: порт ]

 
Диапазон, в который должен входить исходный порт.
См. описание ключа 
 --source-port 

расширения TCP.
 --destination-port  [!]  port [: port ]

 
Диапазон, в который должен входить целевой порт.
См. описание ключа 
 --destination-port 

расширения TCP.
 
   
 РАСШИРЕНИЯ МЕХАНИЗМА ОБРАБОТКИ 

В ip6tables можно добавлять дополнительные цели: 
Далее описаны модули включенные в стандартную поставку.

   
 CONNMARK 

Помечает соединения.
 
 --set-mark метка[/маска] 

 
Метка соединения. Если указана маска, изменяются только биты, которые равны
единице в маске.
 --save-mark [--mask маска] 

 
Перенести метку пакета в соединение. Если указана маска, копируются только
биты, которые равны единице в маске.
 --restore-mark [--mask маска] 

 
Перенести метку соединения в пакет. 
Если указана маска, копируются только биты, которые равны единице в маске.
Допустимо только в таблице 
 mangle . 

 
   
 CONNSECMARK 

Переносит метки механизма защиты из пакетов в соединения 
(если они ещё не имеют меток), и из соединений обратно в пакеты
(также если они ещё не имеют меток).
Обычно используется совместно с SECMARK, и только в таблице 
 mangle . 

 
 --save 

 
Если пакет имеет метку, а соединение - нет, то перенести её в соединение.
 --restore 

 
Если соединение имеет метку, а пакет - нет, то перенести её в соединение.
 
 
   
 HL 

Модифицирует поле Hop Limit ("ограничение на пересылку") заголовка IPv6.
Это поле выполняет аналогичные функции TTL в IPv4.
Изменение (особенно - увеличение) этого поля может быть опасным,
потому желательно избегать этого.
Используется в таблице 
 mangle . 

 
 Никогда не изменяйте (особенно - не увеличивайте) значение для пакетов, 

 
покидающих локальную сеть.
 --hl-set  значение 

 
Установить новое значение Hop Limit.
 --hl-dec  значение 

 
Уменьшить значение Hop Limit на указанное число.
 --hl-inc  значение 

 
Увеличить значение Hop Limit на указанное число.
 
   
 LOG 

Вносить в протокол ядра записи о пакетах (например, поля заголовка IPv6), для
которых указана данная цель.
Протокол ядра доступен по команде 
 dmesg . 

См.
 syslogd (8)).

Обработка после этой цели продолжается.
Так, для внесения записей о блокируемых пакетах 
укажите два отдельных правила с одинаковыми условиями,
для первого укажите цель LOG, для второго - DROP (или REJECT).
 
 --log-level  уровень 

 
Степень подробности (число, см.  syslog.conf (5)).
 --log-prefix  префикс 

 
Префикс для выделения записей протокола среди других. До 29 символов.
 --log-tcp-sequence 

 
Протоколировать номера последовательностей (sequence numbers) TCP.
Если протокол доступен обычным пользователям, это отрицательно скажется на
защищённости системы.
 --log-tcp-options 

 
Вносить в протокол параметры заголовка TCP.
 --log-ip-options 

 
Вносить в протокол параметры заголовка IPv6.
 --log-uid 

 
Вносить в протокол идентификатор пользователя, которому принадлежит процесс,
сгенерировавший пакет.
 
   
 MARK 

Используется для присвоения пакетам меток.
Может использоваться только в пределах таблицы
 mangle . 

Обычно используется вместе с iproute2.
 
 --set-mark  значение 

 
Задать значение nfmark.



 
   
 NFQUEUE 

Это расширение QUEUE. 
В отличие от QUEUE, позволяет помещать пакет в определённую очередь
идентифицируемую по 16-разрядному номеру.
 
 --queue-num  номер 

 
Номер очереди QUEUE. Допустимые номера - от 0 до 65535.
По умолчанию - 0.
 Работает только с ядрами 2.6.14 и выше, т.к. требует поддержку 
 nfnetlink_queue. 

 
   
 REJECT 

Используется для отправки сообщения об ошибке на хост, от которого получен
исходный пакет,
в остальном эквивалентно 
 DROP , 

обработка пакета останавливается на этой цели.
Может использоваться только в цепочках 
 INPUT ,

 FORWARD , 

 OUTPUT , 

а также в цепочках вложенных в них.
Следующий ключ определяет форму пакета с сообщением об ошибке:
 
 --reject-with  тип 

 
Сообщение ICMP об ошибке.
Возможные значения:
  icmp6-no-route 
  no-route 
  icmp6-adm-prohibited 
  adm-prohibited 
  icmp6-addr-unreachable 
  addr-unreach 
  icmp6-port-unreachable 
  port-unreach 
 

По умолчанию отправляется  port-unreach .
Для правил, которые фильтруют пакеты только принадлежащие протоколу TCP,
можно указывать
 tcp-reset : 

это приведёт к возврату пакетов TCP RST и полезно для блокирования тестов
 ident 

(113/tcp), выполняемых при отправке почты на недоступные узлы.
Использовать
 tcp-reset 

можно только с ядрами 2.6.14 и выше.
 
 
   
 ROUTE 

Позволяет явно изменять логику маршрутизации сетевой подсистемы. Используется в
таблице
 mangle . 

 
 --oif  интерфейс 

 
Направить пакет через указанный интерфейс.
 --gw  IPv6-адрес 

 
Направить пакет через указанный шлюз.
 --continue  

 
Не прекращать тестирование пакета в цепочке.
Недопустимо, если указан `--tee'.
 --tee  

 
Выполнять указанные действия над копией пакета,
не прекращать тестирование исходного пакета в цепочке.
Недопустимо, если указан ключ `--continue'.
 
   
 SECMARK 

Устанавливает метки механизма защиты в пакетах.
Они используются подсистемами защиты наподобие SELinux.
Допустимо указание только в таблице
 mangle . 

 
 --selctx  контекст-защиты 

 
 
   
 TRACE 

Включает 
 трассировку пакетов  

соответствующих условию правила.
   
 ДИАГНОСТИКА 

Разнообразные сообщения выводятся на стандартный вывод.
Код выхода в случае отсутствия ошибок - 0.
Если команде переданы недопустимые ключи, код выхода равен 2,
при остальных ошибках код выхода равен 1.
   
 ОШИБКИ 

Работа счётчиков ненадёжна на sparc64.
   
 СОВМЕСТИМОСТЬ С IPCHAINS 

Пакет
 iptables 

очень похож на ipchains, написанные Расти Расселом (Rusty Russell).
Основное различие состоит в том, что цепочки
 INPUT 

и
 OUTPUT 

не применяются для "проходящих" пакетов.
Потому каждый пакет проходит только через одну из цепочек
(кроме трафика кольцевого интерфейса loopback, проходящего через 
INPUT и OUTPUT).
 

Другое различие состоит в том, что
 -i 

относится с входному интерфейсу;
 -o 

- к выходному, и оба они доступны для пакетов 
в цепочке 
 FORWARD . 



дополнительные расширения.



Натурально, имеется много менее значительных изменений.
   
 СМ. ТАКЖЕ 

 ip6tables-save (8),

 ip6tables-restore (8), 

 iptables (8),

 iptables-save (8),

 iptables-restore (8),

 libipq (3).


О фильтрации пакетов более подробно написано в packet-filtering-HOWTO,
о трансляции адресов - в NAT-HOWTO,
о нестандартных расширениях - в netfilter-extensions-HOWTO,
о программировании - в netfilter-hacking-HOWTO.
 

См.
 http://www.netfilter.org/ 

и
 http://www.linuxshare.ru/docs/security/iptables/iptables-tutorial.html. 

   
 АВТОРЫ 

Пакет iptables создал Расти Рассел (Rusty Russell), консультируясь с 
Майклом Ньюлингом (Michael Neuling) на ранних этапах.
 

Благодаря Марку Бушэ (Marc Boucher) был удалён код ipnatctl,
он был заменен более общей инфраструктурой селекции пакетов.
Им была реализована таблица mangle, фильтрация по владельцу,
метки и ещё много чего другого.
 

Джеймс Моррис (James Morris) реализовал цель TOS и фильтрацию по tos.
 

Джозеф Кадлецик (Jozsef Kadlecsik) реализовал цель REJECT.
 

Гаральд Уэльт (Harald Welte) реализовал цели ULOG и NFQUEUE,
libiptc, а также libipulog и цель+фильтр TTL.
 

 
Команду Netfilter Core Team составляют: Марк Бушэ (Marc Boucher),
Мартин Джозефсон (Martin Josefsson),
Джозеф Кадлецик (Jozsef Kadlecsik), 
Джеймс Моррис (James Morris),
Гаральд Уэльт (Harald Welte)
и Расти Рассел (Rusty Russell).
 

Настоящий документ создан Адрасом Киз-Жабо (Andras Kis-Szabo)
на основе страницы iptables для IPv4 написанной Херви Ейчинном (Herve Eychenne) < rv@wallfire.org >.



 
   
 ПЕРЕВОД 

Николай Шафоростов < shafff@ukr.net > 2007
 

 
   Index 
 
 ИМЯ 
 ОБЗОР 
 ОПИСАНИЕ 
 ЦЕЛИ 
 ТАБЛИЦЫ 
 ОПЦИИ 
 
 КОМАНДЫ 
 ПАРАМЕТРЫ 
 ПРОЧИЕ ОПЦИИ 
 
 РАСШИРЕНИЯ МЕХАНИЗМА ТЕСТИРОВАНИЯ 
 
 ah 
 condition 
 dst 
 esp 
 eui64 
 frag 
 fuzzy 
 hbh 
 hl 
 icmp6 
 ipv6header 
 length 
 limit 
 mac 
 mark 
 multiport 
 nth 
 owner 
 physdev 
 policy 
 random 
 rt 
 tcp 
 udp 
 
 РАСШИРЕНИЯ МЕХАНИЗМА ОБРАБОТКИ 
 
 CONNMARK 
 CONNSECMARK 
 HL 
 LOG 
 MARK 
 NFQUEUE 
 REJECT 
 ROUTE 
 SECMARK 
 TRACE 
 
 ДИАГНОСТИКА 
 ОШИБКИ 
 СОВМЕСТИМОСТЬ С IPCHAINS 
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