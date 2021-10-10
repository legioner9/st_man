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
 
 
 
 rresvport (3)   rresvport  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  rresvport  (3)   ( Русские man: Библиотечные вызовы )   rresvport  (3)   ( Linux man: Библиотечные вызовы ) BSD mandoc 
BSD 4.2

   
 НАЗВАНИЕ 

 rcmd 

 
 rresvport 

 
 iruserok 

 
 ruserok 

 - процедуры возврата потока на удаленную команду

   
 СИНТАКСИС 

Fd #include < unistd.h >

 int 
rcmd (char **ahost int inport const char *locuser const char *remuser const char *cmd int *fd2p); 

 int 
rresvport (int *port); 

 int 
iruserok (u_int32_t raddr int superuser const char *ruser const char *luser); 

 int 
ruserok (const char *rhost int superuser const char *ruser const char *luser); 

   
 ОПИСАНИЕ 

Функции 
rcmd (); 

применяются суперпользователем для исполнения команд на
удаленной машине при помощи схемы аутентификации,
основанной на зарезервированных номерах портов.
Функция
rresvport (); 

возвращает описатель сокета с адресом в привилегированном
пространстве пользователя. Функции
iruserok (); 

и
ruserok (); 

используются серверами для аутентификации клиентов, запрашивающих сервис
rcmd (.); 

Все четыре функции существуют в одном файле и используются сервером
 rshd (8)


(среди прочих).
 

Функция
rcmd (); 

ищет хост
Fa *ahost ,

используя
 gethostbyname (3)


и возвращая -1, если хост не существует. Иначе
Fa *ahost

устанавливается равным стандартному имени хоста, при этом
создается соединение с сервером на хорошо известном порту Интернет
Fa inport .

 

Если соединение успешно установлено, то
сокет в Интернет-домене типа
 SOCK_STREAM 

возвращается вызывающей программе
и передается удаленной команде как 
 stdin 

и
 stdout 

 
Если 
Fa fd2p

не равно нулю, то установится вспомогательный канал управления процессами,
а описатель его будет помещен в 
Fa *fd2p .

Управление процессами возвратит диагностический выход из команды
(устройства #2) в этом канале, а также примет байты в этот канал как номера сигналов
 UNIX  

для пересылки их группе процессов команды. Если
Fa fd2p

равно 0, то
 stderr 

(устройство #2 удаленного управления) будет работать аналогично
 stdout  

и для пересылки произвольных сигналов в удаленный процесс не будет создано
никаких привилегий, хотя Вы сможете привлечь к себе внимание, используя
данные "out-of-band".
 

Протокол подробно описан в
 rshd (8).


 

Функция
rresvport (); 

используется для получения сокета с привилегированным адресом,
"привязанным" к нему. Этот сокет подходит для его использования функцией
rcmd (); 

и некоторыми другими.  Привилегированные порты Интернет -
это порты с номерами от нуля до 1023-х. Только суперпользователь может
"привязать" адрес с таким номером к сокету.
 

Функции
iruserok (); 

и
ruserok (); 

берут соответственно IP-адрес или имя удаленного хоста,
два имени пользователя  и флаг, указывающий, является ли имя локального
пользователя именем суперпользователя.
Далее, если пользователь
 НЕ 

является суперпользователем, они проверяют файл
/etc/hosts.equiv

 
Если этот поиск не выполняется или выполнен неудачно, то проверяется
.rhosts

в домашнем каталоге пользователя (для получения информации о том,
разрешен ли данный сервис пользователю или нет).
 

Если этот файл не существует, не является простым файлом, если его владельцем
является не текущий пользователь или не суперпользователь
или если он недоступен для записи текущему пользователю,
проверка завершается появлением ошибки.
Если имя машины указано в файле
``hosts.equiv 

''

или если хост и имя пользователя для удаленного доступа найдены в файле
``.rhosts

''

 
то возвращается 0; иначе
iruserok (); 

и
ruserok (); 

возвращают -1.
Если имя локального домена (полученное от
 gethostname (2))


является именем удаленного домена, то может указываться только имя машины.
 

Если IP-адрес удаленного хоста известен, то должно использоваться
iruserok (); 

вместо
ruserok (,); 

так как последнее не требует проверки DNS-сервера для домена удаленного хоста.
   
 ДИАГНОСТИКА 

Функция
rcmd (); 

возвращает правильный номер описателя сокета при успешном завершении работы.
При ошибках возвращается -1 и выводится диагностическое сообщение об ошибке.
 

Функция
rresvport (); 

возвращает правильный связанный описатель сокета при успешном завершении работы.
При ошибках возвращается -1 и в глобальную переменную
 errno 

записывается код ошибки.
Код ошибки
 EAGAIN: 

при "переполнении" она означает: "Все сетевые порты заняты".
   
 СМ. ТАКЖЕ 

 rlogin (1),


 rsh (1),


 intro (2),


 rexec (3),


 rexecd (8),


 rlogind (8),


 rshd (8)


   
 ПРИМЕЧАНИЯ ПО ИСТОРИИ 

Эти функции появились в версии
BSD 4.2
 
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ДИАГНОСТИКА 
 СМ. ТАКЖЕ 
 ПРИМЕЧАНИЯ ПО ИСТОРИИ 
 
 
 
 
 
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