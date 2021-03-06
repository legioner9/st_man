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
 
 
 
 sendmsg (2)   sendmsg  (2)   ( FreeBSD man: Системные вызовы ) >>  sendmsg  (2)   ( Русские man: Системные вызовы )   sendmsg  (2)   ( Linux man: Системные вызовы )   sendmsg  (3)   ( Solaris man: Библиотечные вызовы )   sendmsg  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

send, sendto, sendmsg - отправляет сообщения в сокет
   
 СИНТАКСИС 

 #include < sys/types.h > 

 

 #include < sys/socket.h > 

 
 ssize_t send(int  s , const void * msg , size_t  len , 

 int  flags ); 

 

 ssize_t sendto(int  s , const void * msg , size_t  len , 

 int  flags , const struct sockaddr * to , socklen_t  tolen ); 

 

 ssize_t sendmsg(int  s , const struct msghdr * msg , 

 int  flags ); 

   
 ОПИСАНИЕ 

 send ,

 sendto ,

и
 sendmsg 

используются для пересылки сообщений в другой сокет.
 send 

можно использовать, только если сокет находится в состоянии
 соединения ,

тогда как
 sendto 

и
 sendmsg 

можно использовать в любое время.
 

Адрес получателя задается параметром
 to 

длиной
 tolen .

Длина сообщения задается параметром
 len .

Если сообщение слишком длинное, чтобы быть отосланным протоколом
нижнего уровня, возвращается ошибка
 EMSGSIZE ,

а сообщение не отсылается.
 

Неудачная отправка не показывается
  с помощью  
 send .

Локальные ошибки принимают значение -1.
 

Когда сообщение не помещается в буфер отправки сокета,
 send 

обычно дожидается завершения отправки, если только сокет не находится
в неблокирующем режиме.  Если сокет находится в неблокирующем режиме, 
то в этом случае возвращается
 EAGAIN .

Системный вызов
 select (2)

можно использовать для выяснения, возможно ли отправлять данные.
 

Параметр
 flags 

является битовой маской и может содержать такие флаги:
 
 MSG_OOB 

 
Посылает
 внепотоковые 

данные, если сокет это поддерживает (как, например, сокеты типа
 SOCK_STREAM );

протокол более низкого уровня также должен поддерживать
 внепотоковые 

данные.
 MSG_DONTROUTE 

 
Не использовать маршрутизацию при отправке пакета, а посылать его
только на хосты в локальной сети.  Обычно это используется в
диагностических программах и программах маршрутизации.  Этот флаг
определен только для маршрутизируемых семейств протоколов; пакетные
сокеты не используют маршрутизацию.
 MSG_DONTWAIT 

 
Включает режим non-blocking; если операция должна была
заблокировать программу, возвращается
 EAGAIN 

(этот режим также можно задать с помощью опции
 O_NONBLOCK ,

команды
 F_SETFL 

и функции
 fcntl (2)).

 MSG_NOSIGNAL 

 
Требует не посылать сигнал
 SIGPIPE ,

если при работе с ориентированным на поток сокетом другая сторона
обрывает соединение. Код ошибки
 EPIPE 

возвращается в любом случае.
 MSG_CONFIRM  (только в Linux 2.3+)

 
Сообщает (на уровне связи), что процесс пересылки произошел: вы получаете
успешный ответ с другой стороны. Если уровень связи не получает его, он
регулярно перепроверяет сеть (например посредством однонаправленной
передачи ARP).
Это работает с сокетами
 SOCK_DGRAM 

и
 SOCK_RAW 

и в настоящее время реализовано для IPv4 и IPv6. См.
 arp (7)

для более подробной информации.
 
 

Определение структуры
 msghdr 

описано в
 recv (2) и

ниже с описаниями полей.
 
 
 
 
struct msghdr {                                                                               
    void    * msg_name;     /* необязательный адрес */
    socklen_t       msg_namelen;    /* размер адреса */
    struct iovec    * msg_iov;      /* массив scatter/gather */
    size_t  msg_iovlen;     /* количество элементов в msg_iov */
    void    * msg_control;  /* вспомогательные данные, см. ниже */
    socklen_t       msg_controllen; /* длина буфера вспомогательных данных */
    int     msg_flags;      /* флаги принятого сообщения */
};                                                                                            

 

 

 
 

Управляющую информацию можно посылать с помощью компонентов
 msg_control 

и
 msg_controllen .

Максимальная длина управляющего буфера, которую поддерживает ядро,
ограничена значением
 net.core.optmem_max ;

см.
 socket (7).

   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Эти системные вызовы возвращают количество отправленных символов или
-1, если произошла ошибка.
   
 НАЙДЕННЫЕ ОШИБКИ 

Есть несколько стандартных ошибок, генерируемых на уровне сокетов.
Модули протоколов более низкого уровня могут также возвращать дополнительные
коды ошибок; смотри соответствующие страницы руководства.
 
 EBADF 

 
Указан неверный описатель.
 ENOTSOCK 

 
Аргумент
 s 

не является сокетом.
 EFAULT 

 
В качестве параметра передан неверный адрес.
 EMSGSIZE 

 
Сокет требует, чтобы сообщение было отослано за время одной операции
(атомарно), а размер сообщения не позволяет этого.
 EAGAIN  или  EWOULDBLOCK 

 
Сокет помечен как non-blocking, а запрошенная операция должна была 
заблокировать его.
 ENOBUFS 

 
Исходящая очередь сетевого интерфейса заполнена. Обычно это означает,
что интерфейс прекратил отправку, но это может быть также вызвано
временной перегрузкой системы.  (Этого не может произойти в Linux, потому
что пакеты в этой системе просто "отбрасываются", когда очередь устройства
переполняется.)
 EINTR 

 
Поступил соответствующий сигнал.
 ENOMEM 

 
Недостаточно памяти в системе.
 EINVAL 

 
Передан неверный аргумент.
 EPIPE 

 
Локальный сокет, ориентированный на соединение, был закрыт. В
этом случае процесс также получит сигнал
 SIGPIPE ,

если только не установлен флаг
 MSG_NOSIGNAL .

 
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

4.4BSD, SVr4, POSIX 1003.1g draft (эти системные вызовы появились в
4.2BSD).
 MSG_CONFIRM 

является расширением для Linux.
   
 ЗАМЕЧАНИЯ 

Вышеприведенные прототипы соответствуют прототипам glibc2.
Single Unix Specification согласен с ними, за исключением того, что в этом стандарте
возвращаемые значения определены как ssize_t (тогда как в BSD 4.x,
libc4 и libc5 они определены как int).
Аргумент
 flags 

является int в BSD 4.x, но unsigned int в libc4 и libc5.
Аргумент
 len 

является int в BSD 4.x, но size_t в libc4 и libc5.
Аргумент
 fromlen 

является int * в BSD 4.x, libc4 и libc5.
См. также
 accept (2).

   
 СМ. ТАКЖЕ 

 fcntl (2),

 recv (2),

 select (2),

 getsockopt (2),

 sendfile (2),

 socket (2),

 write (2),

 socket (7),

 ip (7),

 tcp (7),

 udp (7)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 НАЙДЕННЫЕ ОШИБКИ 
 СООТВЕТСТВИЕ СТАНДАРТАМ 
 ЗАМЕЧАНИЯ 
 СМ. ТАКЖЕ 
 
 
 
 
 
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