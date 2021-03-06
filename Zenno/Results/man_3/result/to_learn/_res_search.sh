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
 
 
 
 res_search (3)   res_search  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  res_search  (3)   ( Русские man: Библиотечные вызовы )   res_search  (3)   ( Linux man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

res_init, res_query, res_search, res_querydomain, res_mkquery, res_send,
dn_comp, dn_expand - программы разрешения (resolving) имен
   
 СИНТАКСИС 

 #include < netinet/in.h > 
 #include < arpa/nameser.h > 
 #include < resolv.h > 
 extern struct state _res; 

 int res_init(void); 

 int res_query(const char * dname , int  class , int  type , 
 unsigned char * answer , int  anslen ); 
 

 int res_search(const char * dname , int  class , int  type , 
 unsigned char * answer , int  anslen ); 
 

 int res_querydomain(const char * name , const char * domain , 
 int  class , int  type , unsigned char * answer , 
 int  anslen ); 
 

 int res_mkquery(int  op , const char * dname , int  class , 
 int  type , char * data , int  datalen , struct rrec * newrr , 
 char * buf , int  buflen ); 
 

 int res_send(const char * msg , int  msglen , char * answer , 
 int  anslen ); 
 

 int dn_comp(unsigned char * exp_dn , unsigned char * comp_dn , 
 int  length , unsigned char ** dnptrs , unsigned char * exp_dn , 
 unsigned char ** lastdnptr ); 
 

 int dn_expand(unsigned char * msg , unsigned char * eomorig , 
 unsigned char * comp_dn , unsigned char * exp_dn , 
 int  length ); 
 
 

   
 ОПИСАНИЕ 

Эти функции создают запросы к серверам доменных имен и интерпретируют
полученные от серверов результаты.
 

Функция  res_init()  считывает конфигурационные файлы
(см. resolv+(8)) для получения имени домена по умолчанию, порядка поиска и
адреса(-ов) серверов имени. Если не задан сервер, то делается попытка
поиска локального хоста. Если не задан домен, то это рассматривается
как использование локального хоста. Использование может быть
отменено переменной окружения LOCALDOMAIN. Функция  res_init() 
обычно выполняется перед первым вызовом других функций.
 

Функция  res_query()  запрашивает у сервера имени полное имя домена
 name  заданного типа  type  и класса  class .
Ответ помещается в буфер  answer  длиной  anslen ,
заданный вызывающей программой.
 

Функция  res_search()  создает запрос и ждет ответа, как и
 res_query() , но при этом еще определяет правила работы
и поиска, контролируемые RES_DEFNAMES и RES_DNSRCH
(см. ниже описание опции  _res ).
 

Функция  res_querydomain()  делает запрос с помощью  res_query() 
на сложение имен  name  и  domain .
 

Следующие функции являются процедурами низкого уровня, которые
используются  res_query() .
 

Функция  res_mkquery()  создает сообщение-запрос в  buf 
длиной  buflen  для имени домена  dname . Тип  op  запроса
обычно равен QUERY, вообще же он может быть любым типом, определенным
в  < arpa/nameser.h > . В данный момент  newrr  не используется.
 

Функция  res_send()  посылает заранее созданный запрос в
 msg  длиной  msglen  и возвращает ответ в  answer 
длиной  anslen . Если до этого не вызывался  res_init() ,
то в этом случае он будет вызван.
 

Функция  dn_comp()  "сжимает" имя домена  exp_dn  и сохраняет
его в буфере  comp_dn  длиной  length . Компрессия использует
массив указателей  dnptrs  на предварительно "сжатые" имена в
текущем сообщении. Первый указатель обозначает начало сообщения, а весь
список оканчивается NULL. Предел массива определяется  lastdnptr .
Если  dnptr  равно NULL, то имя домена не является "сжатым". Если
 lastdnptr  равно NULL, то список меток не обновляется.
 

Функция dn_expand() делает "сжатое" имя домена  comp_dn 
полным; оно затем сохраняется в буфере  exp_dn  длиной  length .
"Сжатое" имя содержится в запросе или ответном сообщении, и  msg 
указывает на начало сообщения.
 

Функции резольвера используют общую конфигурацию и информацию о
состоянии системы, содержащиеся в структуре  _res , а эта структура
определена в  < resolv.h > . Единственным полем, которым может нормально
управлять пользователь, является  _res.options . Это поле содержит
поразрядное ``ИЛИ'' следующих параметров:
 
 
 RES_INIT 

 
(является истинным, если вызван  res_init() );
 RES_DEBUG 

 
(печатать отладочное сообщение);
 RES_AAONLY 

 
(принимать только авторизованные ответы.  res_send()  продолжает
работу, пока не найдет авторизованный ответ, или возвращает ошибку [в
данный момент не реализовано].);
 RES_USEVC 

 
(использовать TCP-соединение для запросов вместо датаграмм
пользовательского протокола данных);
 RES_PRIMARY 

 
(делать запрос только начальный сервер доменного имени сервера);
 RES_IGNTC 

 
(игнорировать ошибки округления. Не пытаться повторять операцию с
помощью TCP [в данный момент не реализовано].);
 RES_RECURSE 

 
(установить в запросах бит рекурсии. Рекурсия выполняется сервером имени
домена, а не функцией  res_send()  [включено по умолчанию].);
 RES_DEFNAMES 

 
(если опция запущена, то  res_search()  добавит имя домена по
умолчанию к именам с одним компонентом в имени (не содержащим точек)
[включено по умолчанию].);
 RES_STAYOPEN 

 
(используется вместе с RES_USEVC для поддержания TCP-соединения запросов);
 RES_DNSRCH 

 
(если опция запущена, то  res_search()  будет искать имена хостов в
текущем и родительском домене. Эта опция используется
 gethostbyname (3)

[включено по умолчанию].).
 
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

В случае успешного завершения работы Функция  res_init()  возвращает 0,
а при ошибках возвращает -1.
 

Функции  res_query() ,  res_search() ,  res_querydomain() ,
 res_mkquery()  и  res_send()  возвращают длину ответа
или -1 при ошибках.
 

Функции  dn_comp()  и  dn_expand()  возвращают длину "сжатого" имени,
или -1 при ошибках.
   
 ФАЙЛЫ 

 /etc/resolv.conf          файл конфигурации резольвера
/etc/host.conf            файл конфигурации резольвера
 

   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

BSD 4.3
   
 СМ. ТАКЖЕ 

 gethostbyname (3),

 hostname (7),

 named (8),

 resolv+ (8)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 ФАЙЛЫ 
 СООТВЕТСТВИЕ СТАНДАРТАМ 
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