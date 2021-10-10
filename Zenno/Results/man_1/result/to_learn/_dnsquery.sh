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
 
 
 
 dnsquery (1) >>  dnsquery  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   dnsquery  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня ) 
 
   
 НАЗВАНИЕ 

 
dnsquery - послать запрос на сервер доменных имен через резолвер
 
   
 СИНТАКСИС 

 
 dnsquery  [-n  сервер_имен ] [-t  тип ] [-c  класс ] [-r  повторы ]
[-p  время_повтора ] [-d] [-s] [-v] хост
 
   
 ОПИСАНИЕ 

 
Программа  dnsquery  является обощенным интерфейсом
к службе доменных имен, использующим библиотечные вызовы
резолвера BIND. Она поддерживает запросы к серверам имен
с операционным кодом QUERY. Эта программа предназначена
длля замены либо для совместного использования с программами
nstest nstest, nsquery и nslookup. Регистр всех опций, кроме
 хост  и  сервер_имен , безразличен.
 
   
 ОПЦИИ 

 
 
 -n 
 
Сервер имен, используемый в запросе. Сервера можно
задавать как в виде IP-адреса, так и доменного имени.
(по умолчанию используется сервер, указанный в
/etc/resolv.conf)
 
 -t 
 
Тип интересуемых записей ресурсов. Допустимы следующие типы:
 
 
 
 
 A 
 
Адрес
 
 NS 
 
Сервер имен
 
 CNAME 
 
Каноническое имя
 
 PTR 
 
Указатель на доменное имя
 
 SOA 
 
Начало зоны ответственности
 
 WKS 
 
Общеизвестная служба
 
 HINFO 
 
Информация о машине
 
 MINFO 
 
Информация о почтовом ящике
 
 MX 
 
Сервер почтового обмена
 
 RP 
 
Ответственное лицо
 
 MG 
 
Член почтовой группы
 
 AFSDB 
 
DCE или AFS сервер
 
 ANY 
 
Все (любые) типы
 
 
 

 
Заметьте, что регистр букв может быть любым.
По умолчанию используется тип ANY.
 
 -c 
 
Класс интересуемых записей ресурсов. Определены
следующие классы:
 
 
 
 
 IN 
 
Internet
 
 HS 
 
Hesiod
 
 CHAOS 
 
Chaos
 
 ANY 
 
шаблон ``любой''
 
 
 

 
Отметьте, что можно использовать любой регистр
По умолчанию используется класс IN.
 
 -r 
 
Число попыток повторного запроса в случае, если сервер
имен не отвечает. По умолчанию 4.
 
 -p 
 
Период ожидания (таймаут) (по умолчанию значение переменной
RES_TIMEOUT). В поле  options  резолвера значение по
умолчанию - ждать любого ответа.
 
 -d 
 
Включить отладку. Устанавливает бит RES_DEBUG в поле
 options  резолвера. По умолчанию отладка
выключена.
 
 -s 
 
Использовать соединение с сервером имен по TCP потоку, а не
обмен UDP-датаграммами. При этом устанавливается бит RES_USEVC
поля  options  резолвера. По умолчанию используется
UDP.
 
 -v 
 
Синоним флага `s'.
 
 хост 
 
Имя интересуемого хоста (или домена).
 
 
   
 ФАЙЛЫ 

 
 
 /etc/resolv.conf 
 
  сервер имен по умолчанию и список поисковых доменов
 
 < arpa/nameser.h > 
 
   список используемых типов и классов RR
 
 < resolv.h > 
 
список флагов резолвера
 
 
   
 СМ. ТАКЖЕ 

 
 nslookup (8) 
,  nstest (1) 
,  nsquery (1) 
,  named (8) 
,  resolver (5) 
 
   
 СООБЩЕНИЯ ОБ ОШИБКАХ 

 
Если резолвер не смог получить ответ и отладка выключена,
 dnsquery  просто выведет сообщение вида:
 
Query failed (rc = 1) : Unknown host
 
(Ответ не получен (код возврата = 1 ) : Неизвестный хост)
 
Значение кода возврата указано в h_errno.
 
   
 ОШИБКИ 

 
На запросы классов, отличных от IN, могут быть возвращены
весьма интересные ответы, поскольку обычно сервера имен
имеют доступ к списку только корневых серверов, обслуживающих
только записи ресурсов класса IN.
 
При запросе адреса опцией `-n' он проверяется на правильность
с помощью функции inet_addr(). К несчастью, функция inet_addr()
может привести к ошибке доступа к сегменту при обработке некоторых
(неправильных) видов адресов (например, 1.2.3.4.5).
 
   
 АВТОР(Ы) 

 
Bryan Beecher
 
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ОПЦИИ 
 ФАЙЛЫ 
 СМ. ТАКЖЕ 
 СООБЩЕНИЯ ОБ ОШИБКАХ 
 ОШИБКИ 
 АВТОР(Ы) 
 
 
 
 
 
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