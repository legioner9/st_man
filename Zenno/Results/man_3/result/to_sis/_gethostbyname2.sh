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
 
 
 
 gethostbyname2 (3)   gethostbyname2  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  gethostbyname2  (3)   ( Русские man: Библиотечные вызовы )   gethostbyname2  (3)   ( Linux man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

gethostbyname, gethostbyaddr, sethostent, endhostent, herror, hstrerror -
получают информацию о машине в сети
   
 СИНТАКСИС 

 #include < netdb.h > 
 extern int h_errno; 

 struct hostent *gethostbyname(const char * name ); 

 #include < sys/socket.h >        /* for AF_INET */ 
 struct hostent *gethostbyaddr(const char * addr , 
   int  len , int  type ); 

 void sethostent(int  stayopen ); 

 void endhostent(void); 

 void herror(const char * s ); 

 const char *hstrerror(int  err ); 

/* GNU extensions */
 
 struct hostent *gethostbyname2(const char * name , int  af ); 

 int gethostbyname_r (const char * name , 
   struct hostent * ret , char * buf , size_t  buflen , 
   struct hostent ** result , int * h_errnop ); 

 int gethostbyname2_r (const char * name , int  af, 
   struct hostent * ret , char * buf , size_t  buflen , 
   struct hostent ** result , int * h_errnop ); 
 

   
 ОПИСАНИЕ 

Функция 
 gethostbyname() 

возвращает структуру типа 
 hostent 

машине с именем
 name .

В данном случае 
 name  

является либо именем машины, либо адресом IPv4 в стандартной точечной нотации,
либо адресом IPv6 в нотации с двоеточием (и, возможно, точкой) в качестве разделителя
(см. описание адресов IPv6 в RFC 1884). Если
 name 

является адресом IPv4 или IPv6, то поиск не производится и 
 gethostbyname ()

просто копирует 
 name 

в поле 
 h_name ,

а его эквивалент для структуры
 struct in_addr 

копируется в поле 
 h_addr_list[0] 

возвращаемой структуры 
 hostent .

Если 
 name 

не оканчивается точкой и установлена переменная окружения 
 HOSTALIASES, 

то в файле, на который указывает 
 HOSTALIASES, 

будет произведен поиск 
 name 

(формат файла приведен в 
 hostname (7)).

Если 
 name  

не оканчивается точкой, то будет произведен поиск в текущем домене и его
родителях. 
 

Функция
 gethostbyaddr() 

возвращает структуру типа
 hostent 

указанному адресу машины 
 addr, 

длина которого равна 
 len, 

а тип адреса равен 
 type. 

В данный момент типом адреса может быть только 
 AF_INET .

 

Функция 
 sethostent() 

(если значение 
 stayopen 

истинно (1)) указывает, что соединенный сокет TCP должен быть использован для
отправки запросов серверу имен, а также то, что соединение должно оставаться открытым во
время последующих запросов. В противном случае для отправки серверу имен запросов
будут использоваться датаграммы UDP.
 

Функция 
 endhostent()  

закрывает соединение TCP для запроса сервера имен.
 

Функция 
 error()  

(устаревшая) выводит сообщение об ошибке, связанное с текущим значением 
 h_errno 

в стандартном потоке вывода ошибок. 
 

Функция 
 hstrerror() 

(устаревшая) в качестве параметра использует номер ошибки (обычно 
 h_errno )

и возвращает соответствующую строку сообщения. 
 

Запросы имени домена, производимые функциями
 gethostbyname() 

и 
 gethostbyaddr(), 

используют комбинацию данных любых или всех серверов имен
 named (8),

записи из файла
 /etc/hosts 

и комбинацию данных сетевой информационной службы (NIS или YP) в зависимости от
 порядка 

строк файла
 /etc/host.conf 

(см.
 resolv+ (8).

По умолчанию производится опрос 
 named (8), 

затем 
 /etc/hosts .

 

Структура 
 hostent  

определена в 
 < netdb.h >  

следующим образом:
 
 
 
struct hostent {
        char    *h_name;        /* официальное имя машины */
        char    **h_aliases;    /* список псевдонимов */
        int     h_addrtype;     /* тип адреса машины */
        int     h_length;       /* длина адреса */
        char    **h_addr_list;  /* список адресов */
}
#define h_addr  h_addr_list[0]  /* для совместимости с предыдущими версиями */

 

 

 

Полями структуры 
 hostent  

являются:
 
 h_name 

 
(официальное имя машины);
 h_aliases 

 
(оканчивающийся нулем массив альтернативных имен машины);
 h_addrtype 

 
(тип адреса; в настоящее время всегда 
 AF_INET );

 h_length 

 
(длина адреса в байтах);
 h_addr_list 

 
(оканчивающийся нулем массив сетевых адресов машины в сетевом порядке байтов); 
 h_addr 

 
(первый адрес в 
 h_addr_list 

определен для совместимости с более ранними версиями).
 
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Функции
 gethostbyname() 

и 
 gethostbyaddr() 

возвращают структуру 
 hostent 

или, в случае ошибки, указатель NULL. В последнем случае переменная
 h_errno  

содержит номер ошибки.
   
 НАЙДЕННЫЕ ОШИБКИ 

Переменная
 h_errno  

может принимать следующие значения:
 
 HOST_NOT_FOUND 

 
Указанный хост неизвестен.
 NO_ADDRESS  или  NO_DATA 

 
Запрошенное имя существует, но не имеет IP-адреса.
 NO_RECOVERY 

 
Hепоправимая ошибка сервера имен.
 TRY_AGAIN 

 
Временная ошибка на официальном сервере имен. Повторите попытку позже.
 
   
 ФАЙЛЫ 

 
 /etc/host.conf 

 
(файл настройки системы разрешения имен);
 /etc/hosts 

 
(файл базы данных машин).
 
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

BSD 4.3.
   
 ЗАМЕЧАНИЯ 

Стандарт SUS-v2 содержит ошибки и обозначает тип параметра 
 len 

функции
 gethostbyaddr() 

как 
 size_t 

(что является неправильным: он должен представлять собой 
 int ,

а 
 size_t 

таким типом не является). 
В POSIX 1003.1-2001 этот тип равен 
 socklen_t ,

что является корректным.
 

Функции
 gethostbyname ()

и
 gethostbyaddr ()

могут возвращать указатели на статические данные, которые могут быть
перезаписаны более поздними вызовами. Простого копирования структуры
 struct hostent 

недостаточно, так как эта структура содержит указатели - небоходимо
глубокое копирование.
 

В glibc2 имеется также функция
 gethostbyname2() 

работающая как 
 gethostbyname() ,

но позволяющая обозначать семейство, к которому должен принадлежать адрес.
 

Кроме того, glibc2 содержит реентрантные версии
 gethostbyname_r() 

и
 gethostbyname2_r() .

Эти функции возвращают 0 при успешном завершении и ненулевое значение при
ошибке. Результат вызова заносится в структуру с адресом
 ret .

После вызова
* result 

может быть NULL при ошибке или указывать на результат при успешном
завершении. Вспомогательные данные заносятся в буфер
 buf 

длиной
 buflen .

(Если буфер слишком мал, то функция вернет
 ERANGE .)

Глобальная переменная
 h_errno 

не изменяется, но в
 h_errnop 

передается адрес переменной, в которую будет занесен код ошибки.
 

POSIX 1003.1-2001 заменяет 
 gethostbyaddr() 

на
 gethostbyname() .

 
 struct hostent *getipnodebyaddr(const void *restrict  addr , 
   socklen_t  len , int  type , int *restrict  error_num ); 

 struct hostent *getipnodebyname(const char * name , 
   int  type , int  flags , int * error_num ); 
 

   
 СМ. ТАКЖЕ 

 resolver (3),

 hosts (5),

 hostname (7),

 resolv+ (8),

 named (8)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 НАЙДЕННЫЕ ОШИБКИ 
 ФАЙЛЫ 
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