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
 
 
 
 rtime (3)   rtime  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  rtime  (3)   ( Русские man: Библиотечные вызовы )   rtime  (3)   ( Linux man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

rtime - получает время с удаленной машины
   
 СИНТАКСИС 

 
 #include < rpc/des_crypt.h > 

 
 int rtime(struct sockaddr_in * addrp , 

 struct rpc_timeval * timep , 

 struct rpc_timeval * timeout ); 

 
   
 ОПИСАНИЕ 

Эта функция использует протокол сервера времени (Time Server Protocol),
описанный в RFC 868, для получения времени с удаленной машины.
 

TSP выдает время в секундах, начиная с полуночи 1900-01-01,
и эта функция вычитает соответствующие константы для приведения
результата к секундам, начиная с полуночи 1970-01-01, для Unix epoch.
 

Когда
 timeout 

не равен NULL, используется сокет udp/time (порт 37).
Иначе используется сокет tcp/time (порт 37).
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

При нормальном завершении работы возвращается 0,
а полученное 32-битное значение времени хранится в
 timep->tv_sec .

В случае ошибок возвращает -1 и переменная
 errno 

устанавливается соответственно ошибке.
   
 НАЙДЕННЫЕ ОШИБКИ 

Могут случиться любые из ошибок для низлежащих функций (sendto, poll,
recvfrom, connect, read). Кроме этого могут быть такие оишбки:
 
 ETIMEDOUT 

 
Истекло время ожидания, определенное таймером.
 EIO 

 
Число возвращенных байтов не равно 4.
 
   
 ПРИМЕРЫ ИСПОЛЬЗОВАНИЯ 

Этот пример требует, чтобы порт 37 был включен и открыт.
Можно проверить, что запись времени внутри
 /etc/inetd.conf 

не закомментирована.
 

Программа подключается к компьютеру с именем 'linux'.
Использование 'localhost' не срабатывает.
Результатом является локальное время компьютера 'linux'.
 
 #include < stdio.h >
#include < errno.h >
#include < string.h >
#include < time.h >
#include < rpc/auth_des.h >
#include < netdb.h >

int use_tcp = 0;
char *servername = "linux";

int main() {
  struct sockaddr_in name;
  struct rpc_timeval time1 = {0,0};
  struct rpc_timeval timeout = {1,0};
  struct hostent *hent;
  int ret;

  memset((char *)&name, 0, sizeof(name));
   sethostent (1);
  hent = gethostbyname(servername);
  memcpy((char *)&name.sin_addr, hent->h_addr, hent->h_length); 

  ret = rtime(&name, &time1, use_tcp ? NULL : &timeout);
  if (ret < 0)
    perror("rtime error");
  else
    printf("%s", ctime((time_t *)&time1.tv_sec));

  return 0;
}
 

   
 ЗАМЕЧАНИЯ 

Поддерживается только IPV4.
 

Некоторые версии
 in.timed 

поддерживают только TCP. Попробуйте использовать приведенный пример с
 use_tcp 

равным 1.
 

Libc5 использует прототип
 

int rtime(struct sockaddr_in *, struct timeval *, struct timeval *);
 

и требует
 < sys/time.h > 

вместо
 < rpc/auth_des.h > .

 
   
 НАЙДЕННЫЕ ОШИБКИ 

rtime() в glibc <= 2.2.5 не работает корректно на 64-битных машинах.
   
 СМ. ТАКЖЕ 

 netdate (1),

 ntpdate (1),

 rdate (1),

 inetd (8)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 НАЙДЕННЫЕ ОШИБКИ 
 ПРИМЕРЫ ИСПОЛЬЗОВАНИЯ 
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