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
 
 
 
 unix (7)   unix  (4)   ( FreeBSD man: Специальные файлы /dev/* )   unix  (4)   ( Linux man: Специальные файлы /dev/* ) >>  unix  (7)   ( Русские man: Макропакеты и соглашения )   unix  (7)   ( Linux man: Макропакеты и соглашения ) Ключ  unix  обнаружен в базе ключевых слов. 
   
 НАЗВАНИЕ 

unix, PF_UNIX, AF_UNIX, PF_LOCAL, AF_LOCAL - сокеты для локальной связи процессов.
   
 СИНТАКСИС 

 #include < sys/socket.h > 

 

 #include < sys/un.h > 

 unix_socket  = socket(PF_UNIX, type, 0); 

 

 error  = socketpair(PF_UNIX, type, 0, int * sv ); 

   
 ОПИСАНИЕ 

Семейство сокетов
 PF_UNIX 

(также известное, как
 PF_LOCAL )

используется для связи процессов в одной машине. Unix-сокеты могут быть
как безымянными (созданными 
 socketpair (2)),

так и связанными с файлом класса "сокет".
Кроме того, Linux поддерживает абстрактное пространство имен, не зависимое от
файловой системы.
 

Возможным типом сокетов, ориентированных на поток, является
 SOCK_STREAM  

, а
 SOCK_DGRAM 

является типом сокетов, ориентированных на датаграммы, сохраняющие границы
сообщений. Unix-сокеты всегда надежны и не путают датаграммы.
 

Сокеты unix поддерживают передачу файловых описателей и информации о процессе
другим процессам, используя вспомогательные данные.
   
 ФОРМАТЫ АДРЕСОВ 

Адрес Unix определен как имя файла в файловой системе или уникальная строка в
абстрактном пространстве имен. Сокеты, созданные с помощью
 socketpair (2) , 

являются безымянными. Безымянным сокетам могут быть заданы адреса назначения
с помощью
 connect (2).

Локальный адрес может быть задан с помощью 
 bind (2).

Если сокет соединен и не имеет локального адреса, то в абстрактном пространстве
имен автоматически будет создано уникальное имя.
 
 #define UNIX_PATH_MAX   108

struct sockaddr_un {
    sa_family_t  sun_family;              /* AF_UNIX */
    char         sun_path[UNIX_PATH_MAX]; /* имя пути */
};
 

 

 sun_family  

всегда содержит
 AF_UNIX .

 sun_path 

содержит оканчивающееся нулем имя сокета в файловой системе. Если
 sun_path 

начинается с нулевого байта, то оно ссылается на абстрактное пространство имен,
поддерживаемое модулем протокола Unix.
Адрес сокета в этом пространстве имен задается оставшимися байтами
 sun_path .

Обратите внимание, что имена в абстрактном пространстве имен не оканчиваются
нулем. 
   
 ОПЦИИ СОКЕТОВ 

В силу исторических причин эти опции сокета указывают на тип SOL_SOCKET,
даже если данные опции специфичны для PF_UNIX. Они могут быть установлены с помощью
 setsockopt (2)

и прочитаны с помощью
 getsockopt (2);

тип SOL_SOCKET указывается в качестве семейства сокета.
 
 SO_PASSCRED 

 
Разрешает прием информации о посылающем процессе во вспомогательном
сообщении. Если при включении этой опции сокет пока еще не соединен, то в абстрактном
пространстве имен будет автоматически создано уникальное имя. Ожидается
целочисленный логический флаг.
 
   
 ВСПОМОГАТЕЛЬНЫЕ СООБЩЕНИЯ 

Вспомогательные данные отправляются и принимаются, используя
 sendmsg (2)

и
 recvmsg (2).

В силу исторических причин перечисленные вспомогательные сообщения
имеют тип SOL_SOCKET, даже если сообщения специфичны для PF_UNIX. 
Для того, чтобы отправить их, установите значение поля
 cmsg_level 

структуры
 cmsghdr 

равным SOL_SOCKET, а значение поля
 cmsg_type  

равным его типу. 
Дополнительная информация приведена в
 cmsg (3).

 
 SCM_RIGHTS 

 
Передать или принять набор описателей открытых файлов другого процесса.
Часть с данными содержит целочисленный массив файловых описателей.
Переданные файловые описатели действуют так, как если бы они были созданы
 dup (2).

 SCM_CREDENTIALS 

 
Передать или принять информацию о Unix. Может быть использовано для
аутентификации. Информация передается в виде структуры
 struct ucred 

вспомогательного сообщения.
 
 
struct ucred {
    pid_t  pid;  /* идентификатор посылающего процеса */  
    uid_t  uid;  /* идентификатор пользователя посылающего процесса */ 
    gid_t  gid;  /* идентификатор группы посылающего процесса */ 
};
 

 

  
Информация, указываемая отправителем, проверяется ядром. Процесс с 
идентификатором эффективного пользователя ID 0 может указывать на
значения, отличные от его собственных. Отправитель должен указать
идентификатор своего процесса (если только он не имеет 
 CAP_SYS_ADMIN ),

свой идентификатор пользователя (если только он не имеет
 CAP_SETUID )

и идентификатор своей группы (если только он не имеет
 CAP_SETGID ).

Для получения сообщения структуры
 struct ucred 

для сокета должна быть запущена опция
 SO_PASSCRED .

 
   
 ВЕРСИИ 

 SCM_CREDENTIALS  

и абстрактное пространство имен появились в Linux 2.2 и не должны использоваться
в переносимых в другие системы программах.
(Некоторые клоны BSD также поддерживают передачу дополнительной информации,
не методы реализации передачи могут серьезно отличаться на разных системах.)
 
   
 ЗАМЕЧАНИЯ 

В реализации Linux есть права
доступа к каталогу, в котором находятся сокеты. Владелец, группа и права,
присвоенные сокетам, могут быть изменены. Если процесс не имеет прав 
на запись и поиск (запуск) в каталоге,
то создать новых сокет в нем не удастся. Соединение сокетных объектов требует
права на запись/чтение. Это действие отличается от действий большинства клонов BSD,
игнорирующих права сокетов Unix. Переносимые программы не должны зависеть от
этой возможности из соображений безопасности.
 

Подключение сокета к имени файла создает сокет в файловой системе, который
должен быть удален создателем, когда необходимость в нем отпадет (с помощью
 unlink (2)).

Обычная система ссылок Unix также подходит для работы с сокетами; 
сокет может быть удален в любое время, а реальное удаление из файловой системы 
будет произведено при снятии последней на него ссылки.
 

Для передачи файловых описателей или информации необходимо
передать/принять, по меньшей мере, один байт данных.
 
Потоки сокетов доменов unix не поддерживают запись данных
вне границ допустимых диапазонов.
   
 НАЙДЕННЫЕ ОШИБКИ 

 
 ENOMEM 

 
Hе хватает памяти.
 ECONNREFUSED 

 
Функция
 connect (2)

вызвана для сокета, который не является слушающим. Это может случится, если
удаленный сокет не существует или имя файла не является сокетом.
 EINVAL 

 
Передан неправильный аргумент. Основная причина - отсутствие установленного
AF_UNIX в поле sun_type переданного адреса (или сокет находится в
не совсем подходящем для производимой операции состянии).
 EOPNOTSUPP 

 
Потоковая операция вызвана для сокета, не ориентированного на потоки, или
произведена попытка использования опции внепоточных данных.
 EPROTONOSUPPORT 

 
Указанный протокол не является PF_UNIX.
 ESOCKTNOSUPPORT 

 
Hеизвестный тип сокета.
 EPROTOTYPE 

 
Удаленный сокет не совпадает с типом локального сокета (SOCK_DGRAM против
SOCK_STREAM).
 EADDRINUSE 

 
Выбранный локальный адрес уже присвоен, или сокетный объект файловой
системы уже существует. 
 EISCONN 

 
Функция 
 connect (2)

вызвана для уже соединенного сокета, или адрес назначения указывает на
соединенный сокет.
 ENOTCONN 

 
Сокетная операция требует адрес назначения, а сокет не соединен.
 ECONNRESET 

 
Удаленный сокет был неожиданно закрыт.
 EPIPE 

 
Удаленный сокет был закрыт в потоковом сокете. Если разрешено, то будет послан
сигнал 
 SIGPIPE .

Этого можно избежать, передав флаг 
 MSG_NOSIGNAL 

функции 
 sendmsg (2)

или 
 recvmsg (2).

 EFAULT 

 
Указанный пользователем адрес неверен.
 EPERM 

 
Отправитель указал неправильную информацию в структуре
 struct ucred .

 
 

Остальные ошибки могут генерироваться уровнем сокетов или файловой системой при
создании сокетного объекта. За дополнительной информацией обращайтесь к
соответствующей странице руководства.
   
 СМ. ТАКЖЕ 

 recvmsg (2),

 sendmsg (2),

 socket (2),

 socketpair (2),

 cmsg (3),

 socket (7)



 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ФОРМАТЫ АДРЕСОВ 
 ОПЦИИ СОКЕТОВ 
 ВСПОМОГАТЕЛЬНЫЕ СООБЩЕНИЯ 
 ВЕРСИИ 
 ЗАМЕЧАНИЯ 
 НАЙДЕННЫЕ ОШИБКИ 
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