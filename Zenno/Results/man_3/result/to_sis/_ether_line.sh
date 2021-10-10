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
 
 
 
 ether_line (3)   ether_line  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  ether_line  (3)   ( Русские man: Библиотечные вызовы )   ether_line  (3)   ( Linux man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

ether_aton, ether_ntoa, ether_ntohost, ether_hosttonn, ether_line, 
ether_ntoa_r, ether_aton_r - процедуры управления адресами ethernet
   
 СИНТАКСИС 

 #include < netinet/ether.h > 

 char * 
 ether_ntoa(const struct ether_addr * addr ); 

 struct ether_addr * 
 ether_aton(const char * asc ); 

 int 
 ether_ntohost(char * hostname , const struct ether_addr * addr ); 

 int 
 ether_hostton(const char * hostname , struct ether_addr * addr ); 

 int 
 ether_line(const char * line , struct ether_addr * addr , 
     char * hostname ); 

/* GNU extensions */
 
 char * 
 ether_ntoa_r(const struct ether_addr * addr , char * buf ); 

 struct ether_addr * 
 ether_aton_r(const char * asc , struct ether_addr * addr ); 
 

   
 ОПИСАНИЕ 

 ether_aton()  преобразует 48-битный адрес узла Ethernet  asc 
из стандартной записи в виде шестнадцатеричных-символов-и-двоеточий в
двоичный код в сетевом порядке расположения байтов и возвращает указатель
на него в статически выделенном буфере, который могут переписать
любые последующие вызовы.  ether_aton  возвращает NULL, если
адрес некорректен.
 

Функция  ether_ntoa()  преобразует адрес узла Ethernet
 addr  из двоичного кода в сетевом порядке расположения байтов
в строку в виде шестнадцатеричных-символов-и-двоеточий,
разрешая начальные нули. Строки возвращаются в статически
выделенный буфер, который могут переписать любые последующие вызовы.
 

Функция  ether_ntohost()  распределяет адрес Ethernet,
соответствующий имени узла в файле
 /etc/ethers 

и возвращает ненулевое значение, если он не может быть найден.
 

Функция  ether_hostton()  распределяет имя узла,
соответствующего адресу Ethernet в файле
 /etc/ethers 

и возвращает ненулевое значение, если он не может быть найден.
 

Функция  ether_line()  обрабатывает строку в формате
 /etc/ethers 

(адрес ethernet, сопровождаемый пустым символом и именем узла;

и имя узла, или ненулевое значение, если он не может быть обработан.
Буфер, на который указывает
 hostname 

должен быть достаточно большим, так как он должен вместить строку
 line .

 

Функции  ether_ntoa_r  и  ether_aton_r  являются дублирующими
защищенными версиями функций  ether_ntoa  и  ether_aton 
соответственно, не использующими статических буферов.
 

Структура  ether_addr  определена в  net/ethernet.h  таким образом:
 
 
 
struct ether_addr {
  u_int8_t ether_addr_octet[6];
}

 

 

   
 НАЙДЕННЫЕ ОШИБКИ 

Реализация ether_line() в glibc 2.2.5 некорректна.
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

BSD 4.3, SunOS
   
 СМ. ТАКЖЕ 

 ethers (5)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 НАЙДЕННЫЕ ОШИБКИ 
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