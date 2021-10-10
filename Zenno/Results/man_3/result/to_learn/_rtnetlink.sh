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
 
 
 
 rtnetlink (3) >>  rtnetlink  (3)   ( Русские man: Библиотечные вызовы )   rtnetlink  (3)   ( Linux man: Библиотечные вызовы )   rtnetlink  (4)   ( Linux man: Специальные файлы /dev/* )   rtnetlink  (7)   ( Русские man: Макропакеты и соглашения )   rtnetlink  (7)   ( Linux man: Макропакеты и соглашения ) 
   
 НАЗВАНИЕ 

rtnetlink - макросы для обработки сообщений rtnetlink
   
 СИНТАКСИС 

 #include < asm/types.h > 

 

 #include < linux/netlink.h > 

 

 #include < linux/rtnetlink.h > 

 

 #include < sys/socket.h > 

 rtnetlink_socket = socket(PF_NETLINK, int  socket_type , NETLINK_ROUTE); 

 

 int RTA_OK(struct rtattr *rta, int rtabuflen);  

 

 void *RTA_DATA(struct rtattr *rta);  

 

 unsigned int RTA_PAYLOAD(struct rtattr *rta);  

 

 struct rtattr *RTA_NEXT(struct rtattr *rta, unsigned int rtabuflen);  

 

 unsigned int RTA_LENGTH(unsigned int length);  

 

 unsigned int RTA_SPACE(unsigned int length);  

 

   
 ОПИСАНИЕ 

Все сообщения 
 rtnetlink (7)

состоят из заголовков сообщений 
 netlink (7)

и приcоединенных к ним атрибутов.
Атрибуты могут быть обработаны только описанными здесь макросами.
 

 RTA_OK( rta ,  attrlen ) 

возвращает значение "истина" в случае, если
 rta 

указывает на правильный атрибут маршрутизации;
 attrlen 

- рабочая длина буфера атрибутов.
Если возвращенное значение ложно, то в сообщении больше нет атрибутов,
даже если
 attrlen 

не равно нулю.
 

 RTA_DATA( rta ) 

возвращает указатель на начало данных атрибута.
 

 RTA_PAYLOAD( rta ) 

возвращает длину данных атрибута.
 

 RTA_NEXT( rta ,  attrlen ) 

считывает следующий за 
 rta  

атрибут.
Вызов этого макроса обновит
 attrlen .

Для проверки правильности указателя используйте
 RTA_OK .

 

 RTA_LENGTH( len ) 

возвращает длину размером 
 len 

байтов данных (плюс заголовок).
 

 RTA_SPACE( len ) 

возвращает объем памяти, требуемый для сообщения и равный
 len 

байтам.
   
 ПРИМЕРЫ ИСПОЛЬЗОВАНИЯ 

Создание сообщения rtnetlink для установки MTU устройства:
         struct {
               struct nlmsghdr nh;
               struct ifinfomsg   if;
               char            attrbuf[512];
        } req;
        struct rtattr *rta;
        unsigned int mtu = 1000; 
        int rtnetlink_sk = socket(PF_NETLINK, SOCK_DGRAM, NETLINK_ROUTE); 
        memset(&req, 0, sizeof(req));
        req.nh.nlmsg_len = NLMSG_LENGTH(sizeof(struct ifinfomsg)); 
        req.nh.nlmsg_flags = NLM_F_REQUEST; 
        req.nh.nlmsg_type = RTML_NEWLINK;
        req.if.ifi_family = AF_UNSPEC;
        req.if.ifi_index = INTERFACE_INDEX; 
        req.if.ifi_change = 0xffffffff; /* ??? */
        rta = (struct rtattr *)(((char *) &req) + 
                        NLMSG_ALIGN(n->nlmsg_len));
        rta->rta_type = IFLA_MTU;
        rta->rta_len = sizeof(unsigned int);
        req.n.nlmsg_len = NLMSG_ALIGN(req.n.nlmsg_len) + 
                        RTA_LENGTH(sizeof(mtu)); 
        memcpy(RTA_DATA(rta), &mtu, sizeof (mtu));
        send(rtnetlink_sk, &req, req.n.nlmsg_len); 
 

   
 НАЙДЕННЫЕ ОШИБКИ 

Это руководство является незаконченным.
   
 СМ. ТАКЖЕ 

 rtnetlink (7),

 netlink (7),

 netlink (3)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ПРИМЕРЫ ИСПОЛЬЗОВАНИЯ 
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