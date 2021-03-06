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
 
 
 
 tftpd (8)   tftpd  (8)   ( FreeBSD man: Команды системного администрирования ) >>  tftpd  (8)   ( Русские man: Команды системного администрирования ) 
   
 ИМЯ 

tftpd - сервер TFTP
   
 СИНТАКСИС 

 
 tftpd   каталог 
 
   
 ОПИСАНИЕ 

 

 tftpd  это сервер, поддерживающий протокол DARPA
TFTP
(RFC1350).
TFTP сервер запускается
 inetd (8).
 

 Каталог  - обязательный аргумент; если он не указан, то
 tftpd  завершает работу. Этот путь присоединяется к имени запрошенного файла, фактически 
используя указания корня (chrooting)  tftpd  в этом каталоге.
Имена файлов проверяются для недопущения выхода из этого каталога, однако
администратор может обойти это ограничение, используя символические ссылки.
 

Это отличает данную версию сервера от других вариантов  tftpd  под другими системами Unix, 
которые принимают список каталогов и требуют указания полного пути к запрашиваемому файлу.
Есть две причины, почему так не стоит делать: 
во-первых, это неудобно, клиенты не предполагают 
знание о формате или файловой системе сервера.
И вторая, протокол TFTP не средство для просмотра серверных файловых систем,
это только агент, позволяющий загружать "тупые" клиенты. 
 

В случае когда  tftpd  используется вместе с
 rarpd (8),
каталоги tftp в параметрах этих серверов должны быть одинаковы, поскольку предполагается, что
каждый клиент, загруженный через TFTP, использует образ, соответствующий IP-адресу с суффиксом
архитектуры согласно соглашениям Sun Microsystems. 
См.  
 rarpd (8)
для получения дополнительно информации.
   
 БЕЗОПАСНОСТЬ 

 

Протокол TFTP не предусматривает аутентификации.
В связи с этой особенностью,  tftpd  не может ограничить
доступ файлов и позволяет получить доступ только к файлам, имеющим право на чтение для всех.
Файлы могут быть записаны только если они существуют и имеют права на запись для всех.
 

Очевидно, что по соображениям безопасности, каталог TFTP,  не может 
содержит конфиденциальную информацию любого вида, поскольку она может быть прочитана любым клиентом. 
Загруженные образы, как правило, не содержат
такой информации, однако вы должны подумать дважды перед
размещением конфигурационных файлов Cisco IOS через TFTP, так как они содержат
 незашифрованные  пароли и могут содержать много информации
о сети, которую вы не хотите выставлять на всеобщее обозрение.
 

Сервер  tftpd  запускается  inetd 
с пониженными административными правами, то есть с пользовательским ID, дающим минимальный
доступ к опубликованным файлам в каталоге tftp. Если сеанс запускается
под правами суперпользователя, то  tftpd  сбрасывает UID и GID
до 65534, что, скорее всего, не является тем, что вам нужно.
Однако, это не так существенно. Помните, только доступные для всех файлы
могут быть записаны или прочитаны через TFTP.
   
 СМ. ТАКЖЕ 

 

 rarpd (8),
 tftp (1),
 inetd (8).
   
 ИСТОРИЯ 

 

Команда  tftpd  впервые появилась в 4.2BSD. Исходный код в iputils
приведён в порядок как синтаксически (ANSIлизирован), так и семантически (UDP сокет IO).
 

Программа распространяется с iputils главным образом как хорошая демонстрация интересных особенностей
(MSG_CONFIRM) позволяющих загружать большие образы с "тупых" клиентов,
не отвечающих ARP запросам до тех пор, пока они не загрузятся.
Однако, он полностью функционален и может быть использован в работе.
   
 ДОСТУПНОСТЬ 

 

 tftpd  часть пакета  iputils 
и последние версии доступны в виде исходного кода на FTP-сервере с анонимным доступом по адресу:
 ftp://ftp.inr.ac.ru/ip-routing/iputils-current.tar.gz. 
   
 ПЕРЕВОД 

Перевод с английского russians < pawel5@mail.ru > 2007

 
   Index 
 
 ИМЯ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 БЕЗОПАСНОСТЬ 
 СМ. ТАКЖЕ 
 ИСТОРИЯ 
 ДОСТУПНОСТЬ 
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