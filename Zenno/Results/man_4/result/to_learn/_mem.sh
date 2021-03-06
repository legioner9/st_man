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
 
 
 
 mem (4)   mem  (4)   ( FreeBSD man: Специальные файлы /dev/* ) >>  mem  (4)   ( Русские man: Специальные файлы /dev/* )   mem  (4)   ( Linux man: Специальные файлы /dev/* )   mem  (7)   ( Solaris man: Макропакеты и соглашения ) 
   
 НАЗВАНИЕ 

mem, kmem, port - системная память, память ядра и порты системы
   
 ОПИСАНИЕ 

 Mem  - это файл символьного устройства,
являющийся образом физической памяти компьютера.
Этот файл может быть использован для проверки системы (и даже для внесения 
в нее исправлений).
 

Адреса байтов в памяти интерпретируются как адреса физической памяти.
Ссылки на несуществующие адреса вызывают возвращаемые ошибки.
 

Проверка системы или внесение в нее исправлений иногда приводят к
непредвиденным результатам в том случае, если есть биты, которые
разрешается только читать или только записывать.
 

Файл создается:
 
 
mknod -m 660 /dev/mem c 1 1
 

chown root:mem /dev/mem
 
 

 

Файл kmem идентичен файлу mem, исключая то, что
первый обеспечивает вам доступ только к памяти ядра.
 

Он создается следующим образом:
 
 
mknod -m 640 /dev/kmem c 1 2
 

chown root:kmem /dev/kmem
 
 

 

 Port  идентичен mem, но он предоставляет Вам доступ к
портам ввода-вывода.
 

Он создается следующим образом:
 
 
mknod -m 660 /dev/port c 1 4
 

chown root:mem /dev/port
 
 

   
 ФАЙЛЫ 

 /dev/mem 

 

 /dev/kmem 

 

 /dev/port 

   
 СМ. ТАКЖЕ 

 chown (1),

 mknod (1),

 ioperm (2)

 

 
   Index 
 
 НАЗВАНИЕ 
 ОПИСАНИЕ 
 ФАЙЛЫ 
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