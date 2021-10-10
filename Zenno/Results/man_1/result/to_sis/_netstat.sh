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
 
 
 
 netstat (1)   netstat  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня )   netstat  (1)   ( FreeBSD man: Команды и прикладные программы пользовательского уровня ) >>  netstat  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   netstat  (8)   ( Linux man: Команды системного администрирования ) Ключ  netstat  обнаружен в базе ключевых слов. 
 
 
 netstat(1M) 
 netstat(1M)  
 
 

 НАЗВАНИЕ
 netstat  - показ статуса сети
 
 СИНТАКСИС
 
   
        netstat [-Aan] [-f  семейство_адресов ] [-I  интерфейс ]
          [-p  имя_протокола ] [ система ] [ core ]
     netstat [-n] [-s] [-i | -r] [-f  семейство_адресов ]
          [-I  интерфейс ] [-p  имя_протокола ] [ система ] [ core ]
     netstat [-n] [-I  интерфейс ]  интервал  [ система ] [ core ]

     

 ОПИСАНИЕ
 Команда  netstat  показывает содержимое различных структур данных,
связанных с сетью, в различных форматах в зависимости от указанных
опций.
 
 ИСПОЛЬЗОВАНИЕ
 Первая форма  команды показывает список активных  сокетов  (sockets)
для каждого протокола.  Вторая форма  выбирает одну из нескольких
других сетевых структур данных.  Третья форма  показывает
динамическую статистику пересылки пакетов по сконфигурированным
сетевым интерфейсам; аргумент  интервал  задает, сколько секунд
собирается информация между последовательными показами.
 
 Значение по умолчанию для аргумента система -  /unix ; для аргумента
 core  в качестве значения по умолчанию используется  /dev/kmem .
 
 Опции
 netstat  воспринимает следующие опции:
 
 
 -a
         Показывать состояние всех сокетов; обычно
        сокеты, используемые серверными процессами,
        не показываются.
 

 -A
         Показывать адреса любых управляющих блоков
        протокола, связанных с сокетами; используется
        для отладки.
 
 -i
         Показывать состояние  автоматически
        сконфигурированных  (auto-configured)
        интерфейсов. Интерфейсы, статически
        сконфигурированные в системе, но не
        найденные во время загрузки, не
        показываются.
 
 -n
         Показывать сетевые адреса как числа.  netstat  
        обычно показывает адреса как символы. Эту
        опцию можно использовать с любым форматом
        показа.
 
 -r
         Показать таблицы маршрутизации. При
        использовании с опцией  -s , показывает
        статистику маршрутизации.
 
 -s
         Показать статистическую информацию по
        протоколам. При использовании с опцией  -r ,
        показывает статистику маршрутизации.
 
 -f семейство_адресов
         Ограничить показ статистики или адресов
        управляющих блоков только указанным
         семейством_адресов , в качестве которого
        можно указывать:
         
 
                  inet 
                 Для семейства адресов AF_INET, или
        unix 
                 Для семейства адресов AF_UNIX.
        
 

 -I интерфейс
         Выделить информацию об указанном
        интерфейсе в отдельный столбец; по
        умолчанию (для  третьей формы  команды)
        используется интерфейс с наибольшим
        объемом переданной информации с момента
        последней перезагрузки системы. В качестве
         интерфейса  можно указывать любой из
        интерфейсов, перечисленных в файле
        конфигурации системы, например,  emd1  или  
lo0 .
 
 -p имя_протокола
         Ограничить показ статистики или адресов
        управляющих блоков только протоколом с
        указанным  именем_протокола , например,
         tcp .
   

 Выдаваемая информация
     Активные сокеты (первая форма)
 
 Для каждого активного сокета показывается протокол, размер очередей
приема и получения (в байтах), локальный и удаленный адрес, а также
внутреннее состояние протокола.
 
 Символьный формат, обычно используемый для показа адресов сокетов,
- это либо:
 
         имя_хоста.порт
 

 если имя хоста указано, либо:
 
         сеть.порт
 

 если адрес сокета задает сеть, но не конкретный хост. Имена хостов и
сетей берутся из соответствующих записей в файле
 /etc/hosts  или
 /etc/networks .
 
 Если имя сети или хоста для адреса неизвестно (или если указана опция
 -n ), адрес показывается числами. Не указанные или "обобщенные"
адреса и порты показываются как " * ". Подробнее о соглашениях по
именованию в Internet см. страницу справочного руководства
 inet(7) 
.
    Сокеты TCP
 Для сокетов TCP допустимы следующие значения состояния:
 
 
 CLOSED
         Закрыт. Сокет не используется.
 
 LISTEN
         Ожидает входящих соединений.
 
 SYN_SENT
         Активно пытается установить соединение.
 
 SYN_RECEIVED
         Идет начальная синхронизация соединения.
 
 ESTABLISHED
         Соединение установлено.
 
 CLOSE_WAIT
         Удаленная сторона отключилась; ожидание
        закрытия сокета.
 
 FIN_WAIT_1
         Сокет закрыт; отключение соединения.
 
 CLOSING
         Сокет закрыт, затем удаленная сторона
        отключилась; ожидание подтверждения.
 
 LAST_ACK
         Удаленная сторона отключилась, затем сокет
        закрыт; ожидание подтверждения.
 
 FIN_WAIT_2
         Сокет закрыт; ожидание отключения
        удаленной стороны.
 
 TIME_WAIT
         Ожидание после закрытия повторной
        передачи отключения удаленной стороны.
 

     Сетевые структуры данных (вторая форма)
 
 Показываемые данные зависят от выбора опции,  -i  или  -r . Если указаны
обе опции,  netstat  выберет  -i .
 
    Показ таблицы маршрутизации
 
 Таблица маршрутизации показывает все имеющиеся  маршруты  (routes)
и статус каждого из них. Каждый маршрут состоит из целевого хоста
или сети и  шлюза  (gateway), который используется для пересылки
пакетов. Столбец  flags  (флаги) показывает статус маршрута ( U , если он
включен), ведет ли маршрут на шлюз ( G ), был ли маршрут создан
динамически при помощи перенаправления ( D ) и используется ли адрес
индивидуального хоста ( H ) вместо адреса сети. Например,  интерфейс
закольцовывания  (loopback transport provider),  lo0 , всегда имеет флаг  H .
 
 Прямые маршруты создаются для каждого интерфейса, подключенного к
локальному хосту; поле  gateway  (шлюз) для таких записей показывает
адрес выходного интерфейса.
 
 Столбец  refcnt  показывает текущее количество активных использований
для маршрута. Протоколы, ориентированные на соединение, обычно
используют в ходе соединения один маршрут, тогда как протоколы без
соединения получают маршрут для каждой посылки одному и тому же
адресату.
 
 Столбец  use  показывает количество пакетов, посланных по маршруту.
 
 Столбец  interface  показывает сетевой интерфейс, используемый
маршрутом.
 
     
Суммарная статистика передачи данных (третья форма)
 
 Когда задан аргумент  интервал ,  netstat  показывает таблицу суммарной
статистической информации о переданных пакетах, ошибках и
коллизиях. Первая показываемая строка данных, а также каждая
последующая 24-я строка содержит суммарную статистическую
информацию с момента последней перезагрузки системы. Каждая
последующая строка показывает данные, накопленные за очередной
указанный в командной строке  интервал  с момента последнего показа.
 
 Предупреждения
 Таблицы ядра могут изменяться по ходу их обработки программой
 netstat , что приводит к некорректным или неполным результатам.
 
 ССЫЛКИ
 
         hosts(4) ,
         networks(4) ,
         protocols(4) ,
         services(4) ,
         trpt(1M)
 

 Copyright 1994 Novell, Inc.
 Copyright 1999  В. Кравчук ,
 OpenXS Initiative , перевод на русский язык
 
 
 
 
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