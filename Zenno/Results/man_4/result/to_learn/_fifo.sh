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
 
 
 
 fifo (4) >>  fifo  (4)   ( Русские man: Специальные файлы /dev/* )   fifo  (4)   ( Linux man: Специальные файлы /dev/* )   fifo  (7)   ( Linux man: Макропакеты и соглашения ) 
   
 НАЗВАНИЕ 

fifo - спецфайл, организующий очередь (first-in first-out) и называемый каналом
   
 ОПИСАНИЕ 

Спецфайл FIFO (называемый каналом) похож на канал,
кроме того, что к нему можно осуществить доступ, как к части 
файловой системы. Он может быть открыт многими процессами для
записи и чтения. Когда процессы обмениваются данными через FIFO,
ядро передает их без записи в файловую систему.
Поэтому спецфайл FIFO ничего не содержит в файловой системе.
Запись в файловой системе служит процессу при
организации доступа к каналу через файловую систему ссылкой.
 

Ядро поддерживает один канал для каждого спецфайла
FIFO, который открыт хотя бы одним процессом.
Для того, чтобы пропускать данные FIFO должен быть открыт как 
для чтения, так и для записи. Обычно при открытии FIFO он
блокируется до тех пор, пока вышеописанные условия не будут выполнены.
 

Процесс может открыть FIFO в неблокирующем режиме.
В этом случае спецфайл открывается только для чтения, даже 
если никто не открывал его для записи; если это произойдет,
то вернется сообщение об ошибке ENXIO (такого устройства
или адреса не существует), хотя файл открыт для чтения.
 

В Linux открытие FIFO для чтения и записи может быть
осуществлено в блокирующем и неблокирующем режимах.
Так как POSIX не описывает эти положения, это может быть
использовано для открытия FIFO для чтения в отсутствие
считывающих процессов. Процесс, использующий этот файл для чтения и записи
(для связи с самим собой), не должен допустить возникновения безвыходных ситуаций.
   
 ЗАМЕЧАНИЯ 

Если процесс попытается записать данные в файл FIFO, недоступный для
чтения, то вернется сообщение об ошибке  SIGPIPE.
Спецфайл FIFO создается 
 mkfifo (3)

и отображается в
 ls -l .

   
 СМ. ТАКЖЕ 

 mkfifo (3),

 mkfifo (1),

 pipe (2),

 socketpair (2),

 open (2),

 signal (2),

 sigaction (2)

 

 
   Index 
 
 НАЗВАНИЕ 
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