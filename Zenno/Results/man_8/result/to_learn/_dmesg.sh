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
 
 
 
 dmesg (8)   dmesg  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня )   dmesg  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня )   dmesg  (8)   ( FreeBSD man: Команды системного администрирования ) >>  dmesg  (8)   ( Русские man: Команды системного администрирования )   dmesg  (8)   ( Linux man: Команды системного администрирования ) 
   
 НАЗВАНИЕ 

dmesg - выводит сообщения ядра при начальной загрузке Linux или настраивает их буфер
   
 СИНТАКСИС 

 dmesg [ -c ] [ -n  уровень  ] [ -s  размбуфера  ] 

   
 ОПИСАНИЕ 

 dmesg 

используется для просмотра и настройки уровня выходных сообщений, которые появляются в 
процессе начальной загрузки ядра Linux и хранятся в кольцевом буфере. 
Это полезная команда может помочь пользователю увидеть, как Linux распознавал устройства 
во время начальной загрузки и получить диагностическую информацию, которую выводили драйвера. 
Эту информацию можно использовать для устранения проблем в работе некоторых устройств. 
В данном случае вместо копирования с экрана сообщений в ручную, пользователю нужно всего лишь вызвать 
команду:
 
dmesg > boot.messages
 

и отправить по электронной почте получившийся файл
 boot.messages 

тому, кто сможет разобраться и решить возникшую проблему (например, в тематический форум или 
список рассылки). 
H ОПЦИИ
 
 -c 

 
Очистить содержимое буфера сообщений ядра после вывода.
 -s  размбуфера 

 
Использовать для буфера сообщений ядра, буфер размером
 размбуфера .

По умолчанию его размер 16392 байт. (Изначально стандартный буфер системного журнала (syslog) 
был 4096 байт, затем, начиная с ядра 1.3.54 - 8192 байт, а с ядра 2.1.113 - 16384 байт.) Если вы 
установили больший размер буфера сообщений ядра, чем определённый по умолчанию, то эту опцию можно 
использовать для просмотра всего буфера. 
 -n  уровень 

 
Установить
 уровень ,

на котором сообщения системного журнала будут выводиться на консоль. Например,
 -n 1 

предотвращает вывод на консоль всех сообщений, за исключением явно тревожных. 
Несмотря на это, сообщения всех уровней будут записываться в 
 /proc/kmsg ,

так что, сервисом
 syslogd (8)

всё ещё можно будет контролировать источник появления сообщения ядра.
Когда используется опция
 -n ,

 dmesg 

не будет выводить или очищать кольцевой буфер сообщений ядра.
При использовании обоих опций, только последняя опция командной строки будет иметь эффект.
 
   
 СМ. ТАКЖЕ 

 syslogd (8)

   
 АВТОР 

Theodore Ts'o ( tytso@athena.mit.edu )
   
 ПЕРЕВОД 

Василий Коломеец (Vasily Kolomeets) < boojuman@gmail.com >
 
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 СМ. ТАКЖЕ 
 АВТОР 
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