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
 
 
 
 attr_set_ipc (8) >>  attr_set_ipc  (8)   ( Русские man: Команды системного администрирования ) 
   
 НАЗВАНИЕ 

 

 attr_set_ipc  - Установка прав объектов IPC.
   
 СИНТАКСИС 

 

 attr_set_ipc  ( id ipc-типа ) | ( id-сокета ,  id-процесса ,  socket-fd ) атрибут значение
   
 ОПИСАНИЕ 

 

Программа  attr_set_ipc  предназначена для установки значения требуемого атрибута для объекта IPC.
   
 ТИПЫ IPC 

Различаются четыре типа IPC:
 sem  - семафор (semaphores)
 msg  - сообщение (messages)
 shm  - разделяемая память (shared memory)
 sock  - сокет (socket)
   
 АТРИБУТЫ И ЗНАЧЕНИЯ 

 
 data_type 
Тип данных.
 

Значение:  0  = отсутствует,  1  = CDI,  2  = CDIIC,  3  = SI,  4  = наследуемый
 mac_categories 
Множество категорий.
 

64-значное строчное множество битов для всех категорий.
 

Значение: идентификатор RC-типа ( 0-63 ).
 

Служит для определения начальной роли процесса после каждого CHOWN (setuid).
 ms_backbuf 
Флаг состояния для MS.
 

Имеет встроенное, не изменяемое значение.
 ms_buflen 
Флаг состояния для MS.
 

Имеет встроенное, не изменяемое значение.
 ms_scanned 
Флаг сканирования на наличие не желательного программного кода.
 

Значение:  0  = не сканированные,  1  = отвергнутые,  >=2  = акцептированные
 ms_str_nr 
Флаг состояния для MS.
 

Имеет встроенное, не изменяемое значение.
 ms_str_offset 
Флаг состояния для MS.
 

Имеет встроенное, не изменяемое значение.
 object_category 
Категория объекта.
 

Значение:  0  = основная,  1  = безопасность,  2  = системная,  3  = наследуемая
 pm_ipc_purpose 
PM-цель IPC.
 

Значение: ID-Цели (положительное целое число)
 pm_object_class 
PM-класс объекта.
 

Значение: ID-Класса (положительное целое число)
 pm_object_type 
PM-тип объекта.
 

Значение:  0  = отсутствует,  1  = TP,  2  = личные данные,  3  = не личные данные,  4  = ipc,  5  = каталог
 rc_type 
Идентификатор RC-типа процесса.
 

Значение: идентификатор RC-типа ( 0-63 )
 security_level 
Уровень классификации безопасности.
 

Значение:  0  = неопределенный,  1  = конфиденциальный,  2  = секретный,  3  = сверхсекретный,  254  = наследованный, максимальный уровень  252 
 
   
 ПРИМЕРЫ 

 

Установить значение семафора атрибута data_type для процесса с PID 6358 равным 4 (наследуемый):
 

attr_set_ipc shm 6358 data_type 4 
   
 АВТОРЫ 

 

 RSBAC  - Rule Set Based Access Control:
 


Amon Ott < ao@rsbac.org >
 

Stanislav Ievlev < inger@altlinux.ru >

 

Русские страницы руководства:
 


Александр Блохин < sass@uustoll.ee >

   
 СМ. ТАКЖЕ 

 

 RSBAC  - Rule Set Based Access Control,  attr_set_user (8),  attr_set_fd (8),  attr_set_process (8),  attr_set_file_dir (8),  attr_set_up (8)
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ТИПЫ IPC 
 АТРИБУТЫ И ЗНАЧЕНИЯ 
 ПРИМЕРЫ 
 АВТОРЫ 
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