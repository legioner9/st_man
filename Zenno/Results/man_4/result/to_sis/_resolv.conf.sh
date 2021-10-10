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
 
 
 
 resolv.conf (4)   resolv.conf  (4)   ( Solaris man: Специальные файлы /dev/* ) >>  resolv.conf  (4)   ( Русские man: Специальные файлы /dev/* )   resolv.conf  (5)   ( FreeBSD man: Форматы файлов )   resolv.conf  (5)   ( Русские man: Форматы файлов )   resolv.conf  (5)   ( Linux man: Форматы файлов ) 
 
 
 Форматы файлов 
 resolv.conf(4) 
 
 

 НАЗВАНИЕ 

 resolv.conf  - файл конфигурации для процедур сервера имен 

 ОПИСАНИЕ 

 Этот файл используется процедурами инициализации из бибилотеки
 resolver(3RESOLV)  языка C. Процедуры разрешения имен
обеспечивают доступ к системе доменных имен Internet 
(Internet Domain Name System). 

 Файл конфигурации содержит информацию, которая читается процедурами 
разрешения имен при первом их вызове процессом. Файл создавался для
чтения администратором, и содержит список пар ключевое слово-значение,
дающих различного рода информацию для процедур разрешения имен.
Пары ключевое слово-значение имеют вид: 
 ключевое_слово значение
 
 Поддерживаются следующие опции конфигурации: 
 
 nameserver адрес 
Задает Internet-адрес (в формате чисел с точками) сервера имен,
на который надо переправлять все запросы. В файле  resolv.conf 
можно указывать до  MAXNS  (в настоящее время - трех) 
серверов имен, по одному в строке. Если указано несколько серверов,
процедуры разрешения имен будут обращаться к серверам имен
в порядке перечисления.

 Если в файле нет строк  nameserver , процедуры разрешения имен
используют сервер имен на локальной машине. 

 Процедуры разрашения имен работают по следующему алгоритму:
попробовать обратиться к первому указанному серверу имен.
Если запрос не выполняется за отведенное время, попробовать
обратиться к следующему серверу, указанному в файле конфигурации,
и т.д. пока не будет исчерпан список серверов. 

 Если все запросы не дали результата за отведенное время,
снова попытаться обратиться ко всем перечисленным серверам,
пока не будет исчепано максимиально допустимое количество попыток. 
 
 domain имя 
Задает локальное доменное имя в качестве стандарного домена.

 Большинство запросов имен в домене может использовать короткие имена,
относительно локального домена. Если строки  domain  в файле конфигурации
нет, домен определяется по значению переменной среды,  LOCALDOMAIN ,
если оно задано, по полному имени домена (см. 
 domainname(1M) ) путем отбрасывания
первого уровня млм по имени хоста 
( gethostname(3C) ),
используя часть имени после первой точки. Наконец, если имя хоста не
содержит имя домена,  предполагается корневой домен. 
 
 search список_поиска 
Задает список поиска для имен хостов. Список поиска обычно определяется
по имени локального домена; по умолчанию он содержит только имя локального
домена. Это можно изменить, перречислив домены, в которых нужно вести
поиск, в  списке_поиска . Имена доменов в этом списке разделяются
символами пробела или табуляции.

 При разрешении большинства запросов сервер имен пытается использовать
поочередно каждый компонент пути поиска, пока не будет найдено соответствующее
имя. Учтите, что этот процесс может оказаться медленным и вызывать
передачу по сети большого объема данных, если серверы имен для указанных 
доменов - не локальные. Кроме того, запрос не будет выполнен за отведенное
время, если для одного из указанных доменов не будет доступен ни один сервер
имен. 

 Список поиска сейчас может содержать не более шести доменов и не может
быть длиннее 256 символов. 
 
 sortlist список_сортировки 
Вызывает сортировку адресов, возвращаемых функцией 
 gethostbyname(3NSL) ,
в соответствии с локальными правилами. Список сортировки задается
в виде пар IP-адрес/маска сети. Маску сети указывать не обязательно -
по умолчанию используется естественная маска сети. В паре IP-адрес и
необязательная маска сети разделяются косой чертой. В списке можно
указывать до 10 пар. Например, следующая спецификация требует от
функции  gethostbyname()  выдавать адреса, соответствующие
сети  130.155.160.0/255.255.240.0 , до адресов сети  130.155.0.0 .

 sortlist
130.155.160.0/255.255.240.0
130.155.0.0
 

 options список_опций 
Задает необязательные особенности работы для различных процедур
разрешения имен в соответствии с указанным списком опций,
каждая из которых эквивалентна внутренней переменной процедуры разрешения.

 В качестве отдельных значений в списке опций можно указывать: 
 
 debug  
Устанавливает значение  RES_DEBUG  в поле  _res.options .
 
 ndots:n 
Устанавливает минимальное количество точек, которые должны
обязательно присутствовать в имени, переданном функции  res_query()  
(см.  resolver(3RESOLV) ),
прежде чем будет выполняться начальный абсолютный запрос 
(имя запрашивается как есть). Стандартное значение  n  - 1. 
Поэтому если в имени есть точки, сначала имя пытаются разрешить как
абсолютное, прежде чем добавлять к нему имена доменов из списка поиска.
 
 retry:n 
Устанавливает количество попыток подключения к каждому серверу имен.
Хотя можно задавать  retry:0 , это значение эквивалентно 
 retry:1 . Стандартное значение  n  - 4.
 
 retrans:n 
Устанавливает базовое время ожидания перед повторной передачей
(retransmit  timeout), в секундах. Стандартное значение - 5. 
При каждой повторной передаче время ожидания удваивается, так что,
при стандартных значениях  retry  и  retrans  получаем
общее время ожидания для каждого сервера имен  5+10+20+40=75 
секунд. Хотя можно задавать  retrans:0 , это значение эквивалентно
 retrans:1 . 
 
 
 

 Ключевые слова  domain  и 
 search  - взаимоисключающие. Если указано
несколько таких опций, приоритет имеет та, что указана последней. 

 Опции, установленные в процессе обработки строк в локальном файле
 resolv.conf , могут быть изменены для каждого процесса путем
задания в качестве значения переменной среды  LOCALDOMAIN  списка
доменов для поиска через пробел. 

 Опции, установленные в процессе обработки строк в локальном файле
 resolv.conf , могут быть дополнены для каждого процесса путем
задания в качестве значения переменной среды  RES_OPTIONS  списка
опций процедур разрешения имен через запятую. Соответствующие
опции перечислены после ключевого слова  options . 

 Пары ключевое слово-значение должны задаваться в отдельных строках,
причем, ключевое слово (например,  nameserver ) должно начинать
строку. Значение или список значений задается после ключевого слова,
после пробельных символов. 

 ФАЙЛЫ 
 
 /etc/resolv.conf 
 

 ССЫЛКИ 

 
 domainname(1M) , 
 in.named(1M) , 
 gethostbyname(3NSL) ,
 gethostname(3C) , 
 resolver(3RESOLV) 
 
Vixie, Paul, Dunlap, Keven  J.,  Karels,  Michael  J.,   Name
Server  Operations  Guide for BIND (public domain) , Internet
Software Consortium, 1996.
 

 Последнее изменение: 7 января 1997 года 

 
Copyleft (no c) 2003  В. Кравчук ,
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