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
 
 
 
 resolv.conf (5)   resolv.conf  (4)   ( Solaris man: Специальные файлы /dev/* )   resolv.conf  (4)   ( Русские man: Специальные файлы /dev/* )   resolv.conf  (5)   ( FreeBSD man: Форматы файлов ) >>  resolv.conf  (5)   ( Русские man: Форматы файлов )   resolv.conf  (5)   ( Linux man: Форматы файлов ) 

   
 ИМЯ 

resolver - файл с настройками для резолвера
   
 ОБЗОР 

/etc/resolv.conf
   
 ОПИСАНИЕ 

 

 Резолвер --

это набор подпрограмм в библиотеке C, которые предоставляют доступ к
Internel DNS (Domain Name System) (Системе Доменных Имен Интернет) (прим. пер. -- DNS
обеспечивает возможность преобразования символьных имен машин в
IP-адреса и наоборот, IP-адресов в символьные имена).
Файл с настройками для резолвера содержит
информацию, которую первым делом читают подпрограммы резолвера, вызванные
каким-либо процессом. Данный файл устроен так, чтобы его мог читать человек
и содержит список ключевых слов и значений, которые предоставляют
резолверу различную информацию.
 

В нормально настроенной системе данный файл не нужен: запросы будут
обрабатываться сервером на локальном хосте, имя домена определяется
из имени машины, а путь поиска машины по домену конструируется из имени
домена.
 

Вот разные параметры конфигурации:
 
 nameserver 
адрес сервера имен в Интернет (в нотации xxx.xxx.xxx.xxx), который будет
обрабатывать запросы от резолвера.  Серверов имен может быть максимум MAXNS
(в данный момент -- 3), по одному на каждой строке.  Если задано несколько
серверов, то библиотека резолвера опрашивает их в порядке перечисления.
Если записей  nameserver  нет, то по умолчанию используется сервер
имен на локальной машине. (Используемый алгоритм пытается подключиться
к серверу имен и, если запрос не был обработан через некоторый промежуток
времени, делается попытка подключиться к следующему серверу имен, и
так до тех пор пока не будет обработан весь список серверов, затем
повторить процедуру, пока не будет достигнуто максимальное количество
повторов).
 domain 
Локальное имя домена.
Большинство запросов на имена машин в этом домене смогут использовать
лишь краткие имена, без указания имени домена.  Если записей  domain 
нет, то домен определяется из имени локальной машины, которое
возвращается функцией
 gethostname ();
доменной частью имени считается все, что следует после первой точки `.'.
Наконец, если имя машины не содержит доменной части, назначается
корневой домен.
 search 
Список для поиска имен машин.
Список обычно определяется из локального имени домена; по умолчанию он
содержит только имя локального домена. В списке может быть задано
несколько доменов, которые должны следовать за ключевым словом
 search  и отделяться друг от друга пробелами или табуляциями.
В большинстве случаев, если в запросе к резолверу задано короткое имя машины
(без доменной части), то к нему будет поочередно добавляться каждый
домен из заданного списка, пока не будет найдено полное совпадающее имя машины.
Заметим, что данный процесс может быть медленным, и станет генерировать ощутимый
сетевой траффик, если серверы, обслуживающие перечисленные в списке
домены, не являются локальными, а также что запросы вернут ошибку
тайм-аута, если сервер для одного из доменов недоступен.
 
Список в данный момент ограничен шестью доменами, общая длина имен которых не
должна превышать 256 символов.
 sortlist 
Разрешает сортировку адресов, которые возвращаются вызовом
 gethostbyname() .

Опция sortlist задается с помощью пары: IP адрес/маска сети. Маска сети
является необязательной, по умолчанию используется текущая маска сети.
Пары из IP-адреса и необязательной маски сети разделяются прямой косой
чертой. Может быть задано до 10 пар.
 
пример: sortlist 130.155.160.0/255.255.240.0 130.155.0.0
 options 
Данная опция разрешает изменение определенных переменных резолвера.
Синтаксис такой:
 
 options   опция   ... 
 
где  опция  может принимать одно из следующих значений:
 
 debug  --- устанавливает RES_DEBUG в _res.options.
 
 ndots: n  --- устанавливает порог для количества точек, которое
должно быть в имени, заданном в  res_query  (см.  resolver (@LIB_NETWORK_EXT@))
перед тем как будет создан  начальный абсолютный запрос (initial absolute
query) . По умолчанию,  n  ``1'', означает, что если в имени есть
хоть одна точка, будет попытка считать это имя абсолютным перед
добавлением к нему элементов из списка  search .
 
 

Ключевые слова  domain  и  search  являются взаимно исключающими.
Если эти слова заданы оба, то будет работать то, которое задано последним.
 

Ключевое слово  search  в файле  resolv.conf  может быть перекрыто,
если переменная окружения `` LOCALDOMAIN '' содержит список доменов,
разделенных пробелами.
 

Ключевое слово  options  в файле  resolv.conf  может быть дополнено,
если переменная окружения `` RES_OPTIONS '' будет содержать список
вышеописанных опций резолвера.
 

Ключевое слово и значение должны быть в одной строке, и кроме того, ключевое
слово (например,  nameserver ), должно быть первым в строке. Значение
должно отделяться от ключевого слова пробелом.
   
 ФАЙЛЫ 

 /etc/resolv.conf 

   
 СМОТРИ ТАКЖЕ 

 gethostbyname (3),

 hostname (7),

 named (8),

 

Name Server Operations Guide for BIND (Руководство по Серверу Имен для BIND)
 

 
   Index 
 
 ИМЯ 
 ОБЗОР 
 ОПИСАНИЕ 
 ФАЙЛЫ 
 СМОТРИ ТАКЖЕ 
 
 
 
 
 
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