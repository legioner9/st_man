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
 
 
 
 libnetlink (3) >>  libnetlink  (3)   ( Русские man: Библиотечные вызовы )   libnetlink  (3)   ( Linux man: Библиотечные вызовы ) 
   
 ИМЯ 

libnetlink - библиотека для доступа к сервису netlink.
   
 СИНТАКСИС 

 #include < asm/types.h >
 
#include < libnetlink.h >
 
#include < linux/netlink.h >
 
#include < linux/rtnetlink.h >

int rtnl_open(struct rtnl_handle *rth, unsigned subscriptions)

int rtnl_wilddump_request(struct rtnl_handle *rth, int family, int type)

int rtnl_send(struct rtnl_handle *rth, char *buf, int len)

int rtnl_dump_request(struct rtnl_handle *rth, int type, void *req, int len)

int rtnl_dump_filter(struct rtnl_handle *rth,
                     int (*filter)(struct sockaddr_nl *, struct nlmsghdr *n, void *),
                     void *arg1,
                     int (*junk)(struct sockaddr_nl *,struct nlmsghdr *n, void *),
                     void *arg2)

int rtnl_talk(struct rtnl_handle *rtnl, struct nlmsghdr *n, pid_t peer,
              unsigned groups, struct nlmsghdr *answer,
 
              int (*junk)(struct sockaddr_nl *,struct nlmsghdr *n, void *),
 
              void *jarg)

int rtnl_listen(struct rtnl_handle *rtnl, 
              int (*handler)(struct sockaddr_nl *,struct nlmsghdr *n, void *),
              void *jarg)

int rtnl_from_file(FILE *rtnl, 
              int (*handler)(struct sockaddr_nl *,struct nlmsghdr *n, void *),
              void *jarg)

int addattr32(struct nlmsghdr *n, int maxlen, int type, __u32 data)

int addattr_l(struct nlmsghdr *n, int maxlen, int type, void *data, int alen)

int rta_addattr32(struct rtattr *rta, int maxlen, int type, __u32 data)

int rta_addattr_l(struct rtattr *rta, int maxlen, int type, void *data, int alen)
   
 ОПИСАНИЕ 

libnetlink предоставляет интерфейс более высокого уровня к 
 rtnetlink (7). 

Функции чтения возвращают 0 при успешном завершении, и отрицательный код errno в
случае ошибки.
Функции отправки возвращают объем отправленной информации, и -1 в случае
ошибки.
 
 rtnl_open 
Открывает сокет rtnetlink и сохраняет состояние в дескриптор
 rth. 

Дескриптор передается всем последующим вызовам.
 subscriptions 

- битовая карта групп мультикаста rtnetlink, членом
которых будет сокет.
 
 rtnl_wilddump_request 
Запрашивает полный дамп базы данных типа
 type 

для адресов семейства
 family 

 type 

- тип сообщения rtnetlink. 

 
 rtnl_dump_request 
Запрашивает полный дамп буфера данных типа
 type  

в буфер 
 buf 

с максимальной длиной, равной
 len. 

 type 

- тип сообщения rtnetlink.
 
 rtnl_dump_filter 
Получить данные netlink после запроса и отфильтровать их.
Функция-обработчик
 filter 

проверяет, требуется ли полученное сообщение. Функции обработчика
передаётся адрес источника сообщения, само сообщение и 
 arg1  

в качестве аргументов. 0 обозначает, что сообщение прошло фильтр,
отрицательное значение возвращается
 rtnl_dump_filter  

в случае ошибки. NULL в качестве фильтра 
 filter 

означает что фильтр не требуется.
 junk 

используется для фильтрации сообщений, не предназначенных для
локального сокета. Будет получен только один набор (bundle) сообщений. За
исключением случаев, когда нет сообщений в очереди, функция не является
блокирующей.
 
 rtnl_listen 
Получить данные netlink после запроса и передать их на функцию-обработчик 
 handler. 

 handler 

- это функция-обработчик, которой передаётся адрес источника сообщения,
само сообщение, и 
 jarg 

cookie как аргумент. Она будет вызвана для всех полученных сообщений. Будет
получен только
один набор сообщений. За исключением случаев, когда нет
сообщений в очереди, функция не является блокирующей.
 
 rtnl_from_file 
Работает как
 rtnl_listen,  

но считывает набор (bundle) сообщений netlink из файла
 file 

и передает сообщения обработчику
 handler 

для обработки. Файл содержит "сырые" данные в том виде, в каком они
были получены из сокета rtnetlink.
 
 

Следующие функции полезны, если требуется сконструировать нестандартные
сообщения rtnetlink. Для простого дампа базы данных с фильтрацией, лучше
использовать функции более высокого уровня, приведенные выше. За
дополнительной информацией о генерации сообщений rtnetlink обратитесь к
 rtnetlink (3) 

и
 netlink (3) 


содержит заголовок сообщения netlink и запрос rtnetlink. 
 
 
 rtnl_send 
Отправить rtnetlink-сообщение в буфер
 buf 

длиной 
 len 

дескриптору
 rth. 

 
 addattr32 
Добавить __u32-атрибут типа
 type 

со значением
 data 

к netlink-сообщению
 n, 

которое является частью буфера длиной 
 maxlen. 

 
 addattr_l 
Добавить атрибут переменной длины типа
 type 

со значением
 data 

и длиной
 alen 

к netlink-сообщению
 n, 

которое являются частью буфера длиной
 maxlen. 

Содержимое
 data  

копируется.
 
 rta_addattr32 
Инициализировать rtnetlink-атрибут
 rta 

__u32-значением.
 
 rta_addattr32 
Инициализировать rtnetlink-атрибут 
 rta 

значением переменной длины.
 
 
   
 ОШИБКИ 

Функции иногда используют fprintf и завершаются при возникновении фатальной
ошибки.
Эта библиотека должна быть названа librtnetlink.
 
   
 АВТОРЫ 

netlink/rtnetlink был спроектирован и написан Алексеем Кузнецовым
Энди Клеен (Andi Kleen) написал страницу руководства.
 
   
 СМ. ТАКЖЕ 

 netlink (7), 

 rtnetlink (7) 

 

/usr/include/linux/rtnetlink.h
   
 ПЕРЕВОД 

Перевод с английского Виктор Ерёмин < ErV2005@rambler.ru > 2007.

 
   Index 
 
 ИМЯ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ОШИБКИ 
 АВТОРЫ 
 СМ. ТАКЖЕ 
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