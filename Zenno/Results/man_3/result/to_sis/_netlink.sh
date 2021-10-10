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
 
 
 
 netlink (3) >>  netlink  (3)   ( Русские man: Библиотечные вызовы )   netlink  (3)   ( Linux man: Библиотечные вызовы )   netlink  (4)   ( Linux man: Специальные файлы /dev/* )   netlink  (7)   ( Русские man: Макропакеты и соглашения )   netlink  (7)   ( Linux man: Макропакеты и соглашения ) 
   
 НАЗВАНИЕ 

netlink - макросы датаграмм сетевого соединения
   
 СИНТАКСИС 

 #include < asm/types.h > 
 
 #include < linux/netlink.h > 
 
 int NLMSG_ALIGN(size_t  len ); 
 
 int NLMSG_LENGTH(size_t  len ); 
 
 int NLMSG_SPACE(size_t  len ); 
 
 void *NLMSG_DATA(struct nlmsghdr * nlh ); 
 
 struct nlmsghdr *NLMSG_NEXT(struct nlmsghdr * nlh , int  len ); 
 
 int NLMSG_OK(struct nlmsghdr * nlh , int  len ); 
 
 int NLMSG_PAYLOAD(struct nlmsghdr * nlh , int  len ); 
 

   
 ОПИСАНИЕ 

 netlink.h 

описывает различные макросы для доступа к сетевым датаграммам и их создания.
По сути, они подобны макросам, определенным в
 cmsg (3)

для обычных данных. Буфер, работающий в сетевых сокетах,
должен использоваться только с помощью этих макросов.
 
 NLMSG_ALIGN 
 
Выравнивает длину сетевого сообщения до большей корректной длины.
 NLMSG_LENGTH 
Рассматривает длину "полезной" части как аргумент и возвращает
выравненную длину полям
 nlmsg_len 

или
 nlmsghdr .

 NLMSG_SPACE 
Возвращает количество байтов сетевого сообщения.
 NLMSG_DATA 
Возвращает указатель на "полезную" часть сообщения, ассоциированную с
 nlmsghdr .

 NLMSG_NEXT 
Получает следующий
 nlmsghdr 

в сообщении, состоящем из нескольких частей. При вызове необходимо
убедиться, что в текущем nlmsghdr не установлен флаг NLMSG_DONE: эта
функция не возвращает NULL в конце. Параметр length - это величина,
указывающая на оставшуюся длину буфера. Этот макрос уменьшает ее на
размер заголовка сообщения.
 NLMSG_OK 
Возвращает значение "истина", если сетевое сообщение не разорвано
и готово к обработке.
 NLMSG_PAYLOAD 
Возвращает длину "полезной" части, ассоциированной с
 nlmsghdr .

 
   
 ЗАМЕЧАНИЯ 

Гораздо лучше оперировать сетевыми соединениями с помощью библиотеки
 libnetlink ,

а не низкоуровневых функций ядра.
   
 СМ. ТАКЖЕ 

 netlink (7)

 

 ftp://ftp.inr.ac.ru/ip-routing/iproute2*  -
библиотека libnetlink
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
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