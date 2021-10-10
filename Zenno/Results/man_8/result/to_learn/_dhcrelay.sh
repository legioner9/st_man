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
 
 
 
 dhcrelay (8) >>  dhcrelay  (8)   ( Русские man: Команды системного администрирования )   dhcrelay  (8)   ( Linux man: Команды системного администрирования ) 
 
 
   
 ИМЯ 

 
dhcrelay - агент ретранслятор для протокола DHCP
 
 
   
 КРАТКО 

 
 dhcrelay  [ -p port ] [ -d ] [ -q ] [ -i if0  [ ... -i ifN ]]  server0  [ ...serverN ]
 
 
   
 ОПИСАНИЕ 

 
Ретранслирующий агент dhcrelay, предназначен для передачи DHCP запросов из подсетей где нет собственного сервера DHCP в 
подсети содержащие такие сервера.
 
 
   
 КАК ОНО РАБОТАЕТ ? 

 
 

Relay Agent слушает на всех интерфейсах и ожидает DHCP запросы. Когда запрос получен, dhcrelay переправляет его серверам
указанным в списке заданном в командной строке. Если ответ от DHCP сервера получен, он перенаправляется клиенту.
 
 

 
   
 КОМАНДНАЯ СТРОКА 

 
 

Имена сетевых интерфейсов на которых dhcrelay должен слушать сеть и ожидать запросы указываются с помощью параметра
 -i , если имена интерфейсов не указаны, то dhcrelay определяет все интерфейсы, по возможности исключает non-broadсast и 
на остальных ожидает DHCP запросы.
 
 

Если предполагается использовать dhcrelay на порту отличном от стандартного ( порт 67 ), то нужно использовать  
параметр  -p . В основном используется в отладочных целях. 
В случае если указан параметр  -p , то relay-агент 
will transmit responses to clients
at a port number that is one greater than the one specified - i.e., if
you specify
 -p 
67, then the relay agent will listen on port 67 and transmit to port
68.   Transmissions to servers will be sent to the same port number
that it specified in the
 -p  flag.
 
 

Обычно dhcrelay выполняется как фоновый процесс, что бы заставить его выполняться на переднем плане можно указать
в командной строке параметр  -d .
 
 

При старте dhcrelay обычно выводит на экран информацию о конфигурации сети, что бы подавить вывод используйте параметр
 -q 
 

 
Обязательным параметром в командной строке является имя хотя бы одного DHCP сервера, которому будут перенаправляться
клиентские запросы.
 

 
 
   
 СМ. ТАКЖЕ 

 
 dhclient (8),  dhcpd (8), RFC2132, RFC2131.
 
   
 АВТОРЫ 

Сервер  dhcpd (8) 
написан Ted Lemon < mellon@vix.com >
по контракту с Vixie Labs. Финансирование осуществлялось ISC. Информацию об ISC можно найти их сайте в интернет: 
 http://www.isc.org/isc. 
 
 
   
 ПЕРЕВОД 

Перевод выполнен Лаптевым Андреем - 
< lantan@chat.ru >

 
   Index 
 
 ИМЯ 
 КРАТКО 
 ОПИСАНИЕ 
 КАК ОНО РАБОТАЕТ ? 
 КОМАНДНАЯ СТРОКА 
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