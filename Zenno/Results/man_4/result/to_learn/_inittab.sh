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
 
 
 
 inittab (4)   inittab  (4)   ( Solaris man: Специальные файлы /dev/* ) >>  inittab  (4)   ( Русские man: Специальные файлы /dev/* )   inittab  (5)   ( Linux man: Форматы файлов ) 
 
 
 Форматы файлов 
 inittab(4) 
 
 

 НАЗВАНИЕ 

 inittab  - сценарий для  init 

 ОПИСАНИЕ 

 Файл  /etc/inittab  управляет порождением процессов программой  init .
Чаще всего программа  init  порождает процессы- демоны . 

 Файл  inittab  состоит из записей следующего формата: 

 
 идентификатор : уровень_выполнения : действие : процесс 
 

 Записи разделяются символами новой строки; но если перед символом новой строки
идет обратная косая ( \ ), запись продолжается на следующей строке. 
Максимальная длина записи - 512 символов. В поле  процесс  можно использовать
комментарии с помощью нотации, описанной на странице справочного руководства
 sh(1) . На количество записей в файле  inittab  никаких
ограничений не налагается (только на размер одной записи). Запись состоит из
следующих полей: 

 
 идентификатор 
Идин или два символа, уникально идентифицирующих запись. 
 уровень_выполнения 
Задает уровень выполнения, на котором долджна обрабатываться эта запись. Уровни выполнения, 
по сути, соответствуют конфигурации процессов в системе. Другими словами, с каждым процессом,
порожденным программой  init , связывается уровень (или уровни) выполнения, на котором
он может существовать. Уровни выполнения представлены числами от 0 до 6. Например, если
система работает на уровне выполнения 1, обрабатываются только записи, в поле 
 уровень_выполнения  которых указано значение 1.

 Когда процесс  init  получает запрос на изменение уровня выполнения, всем процессам, 
для которых в поле  уровень_выполнения  не указан целевой уровень, посылается
сигнал  SIGTERM , а через 5 секунд их работа принудительно прерывается сигналом
 SIGKILL . Поле  уровень_выполнения  может задавать несколько уровней
выполнения для процесса в виде любой комбинации значений от 0 до 6. Если уровень
выполнения не задан, предполагается, что процесс может работать на всех
уровнях выполнения, от 0 до 6. 

 Есть еще три значения,  a ,  b  и  c , которые можно
указывать в поле  уровень_выполнения , хотя они и не задают уровни
выполнения. Записи, в поле  уровень_выполнения  которых указаны эти значения,
обрабатываются только когда процесс  init  или  telinit  явно просит их
выполнить (независимо от текущего уровня выполнения в системе). См. 
 init(1M) . Отличие от уровней выполнения в том,
что процесс  init  не может перейти на уровень  a ,  b  или  c .
Кроме того, запрос на выполнение любого из этих процессов не изменяет текущего уровня 
выполнения. Более того, процесс, запущенный командой  a ,  b  или  c ,
не прекращается при изменении уровня выполнения программой  init .
Они прекращают работу только если соответствующая строка в файле  inittab 
помечена как  off  в поле  действие , полностью удалена из  inittab  или
программа  init  переходит в однопользовательское состояние. 
 
 действие 
Ключевые слова в этом поле сообщают программе  init  , как обрабатывать 
процесс, заданный в соответствующем поле. Программа  init  распознает
следующие действия:
 
 respawn 
Если процесс не существует, запустить его; не ждать завершения работы процесса
(продолжать просмотр файла  inittab ), а когда процесс завершит существование,
перезапустить его. Если процесс существует, не делать ничего и продолжить просмотр
файла  inittab .
 
 wait 
Когда  init  переходит на уровень выполнения, соответствующий полю 
 уровень_выполнения  данной записи, запустить процесс и дождаться его завершения.
При всех последующих перечитываниях файла  inittab  процессом  init 
на том же уровне выполнения эта запись игнорируется.
 
 once 
При переходе процесса  init на уровень выполнения, соответствующий этой записи,
запустить процесс и не ждать его завершения. Когда процесс завершит работу, 
не перезапускать его. Если  init  переходит на новый уровень выполнения, и
процесс остался работать после предыдущего изменения уровня, он не перезапускается.
 
 boot 
Эта запись должна обрабатываться только при первоначальном чтении файла  inittab  
при загрузке  init .  init  запустит  процесс  и не будет ждать его
завершения; когда процесс завершается, init его не перезапускает. Чтобы эта
инструкция имела смысл, поле  уровень_выполнения  должно быть пустым
или соответствать начальному уровню выполнения  init  при загрузке. Это действие
подходит для функции инициализации после перезагрузки аппаратного обеспечения системы.
 
 bootwait 
Эта запись должна обрабатываться только при первоначальном переходе процесса  init 
с однопользовательского в многопользовтельский режим после загрузки системы. 
(Если  initdefault  имеет значение 2, процесс срабатывает сразу после загрузки.)
 init  запускает процесс, ждет его завершения и после этого его уже не перезапускает.
 
 powerfail 
Связанный с этой записью процесс выполняется только при получении процессом 
 init  сигнала сбоя питания,  SIGPWR  (см. 
 signal(3C) ).
 
 powerwait 
Связанный с этой записью процесс выполняется только при получении процессом 
 init  сигнала сбоя питания,  SIGPWR , причем,  init  ждет
завершения процесса прежде чем продолжать дальнейшую обработку
файла  inittab .
 
 off 
Если процесс, связанный с этой записью, в настоящее время работает, ему посылается
предупреждающий сигнал  SIGTERM , а через 5 процесс прерывается принудительно
посылкой сигнала  SIGKILL . Если процесс не существует, запись игнорируется.
 
 ondemand 
Это действие, по сути, являеся синонимом для действия  respawn . Оно функционально
идентично  respawn , но, чтобы не было ассоциации с уровнями выполнения,
используется другое ключевое слово. Это действие используется только со значениями
 a ,  b  или  c  в поле  уровень_выполнения .
 
 initdefault 
Запись с этим действием просматривается только при первоначальном вызове  init .
Процесс  init  использует эту запись, чтобы определить, на какой уровень выполнения
первоначально переходить. Для этого берется максимальный уровень выполнения, указанный в
поле  уровень_выполнения . Если поле  уровень_выполнения  - пустое, 
оно интерпретируется как  0123456 , и  init  переходи на уровень выполнения
6. Это приведет к зацикливанию системы (она будет постоянно переходить в 
режим микропрограммного обеспечения и перезагружаться). Кроме того, если  init 
не находит записи  initdefault  в файле  inittab , он запрашивает начальный 
уровень выполнения у пользователя при перезагрузке.
 
 sysinit 
Записи этого типа выполняются прежде, чем программа  init  попытается
обратиться к консоли (другими словами, до выдачи приглашения  Console Login: ).
Предполагается, что такие записи будут использоваться толкьо для инициализации
устройств, на которые процесс  init  может попытаться выдать запрос уровня
выполнения. Эти записи выполняются, и процесс  init  ждет их завершения,
прежде чем продолжать работу.
 
 
 
 процесс 
Задает команду, которую надо выполнить. Перед всем полем  процесс 
добавляется команда  exec  и все вместе передается программе  sh 
в виде  sh -c 'exec  команда ' . Поэтому в поле  процесс  можно
указывать любую допустимую команду  sh .
 
 

 ССЫЛКИ 

 
	 sh(1) ,
	 who(1) ,
	 init(1M) ,
	 ttymon(1M) ,
	 exec(2) ,
	 open(2) ,
	 signal(3C) 
 

 Последнее изменение: 3 июля 1990 года 

 
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