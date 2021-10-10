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
 
 
 
 aspldr (8) >>  aspldr  (8)   ( Русские man: Команды системного администрирования ) 
   
 НАЗВАНИЕ 

aspldr - установить загрузчик системы ASPLoader
   
 СИНТАКСИС 

 

  /sbin/aspldr 

[-bmh] [-c конфигурация] [-d устройство] [-f файл_загрузки] [-n номер_в_bios] [-p путь]
   
 ОПИСАНИЕ 

 

Выполнение
 aspldr 

установит загрузчик системы, который будет активироваться при каждом включении компьютера.
Программа обрабатывает такие параметры:
 

 
 -b 

 
Записывает загрузочный сектор на раздел жесткого диска. 
Этот параметр переопределяет параметр, указанный в конфигурационном файле.
 -c  файл_конфигурации 

 
Использует альтернативный файл_конфигурации вместо файла по умолчанию
 /etc/aspldr.conf .

 -d  устройство 

 
Указывает устройство, на котором должна быть обновлена главная загрузочная запись.
 -f  файл_отображения 

 
 aspldr 

хранит отображения загружаемых систем в файле
 /boot/aspldr.map .

Данный параметр позволяет использовать альтернативный файл.
 -h 

 
Выводит краткое информационное сообщение об использовании программы и выходит.
 -m 

 
Записывает главную загрузочную запись. Переопределяет параметр в конфигурационном файле.
 -n  номер_в_bios 

 
Позволяет Вам указать номер жесткого диска так, как он виден в BIOS.
Данный параметр полезен, если BIOS и ядро Linux по разному видят жесткие диски 
Вашего компьютера. Номера могут быть в диапазоне от 1 до 128.
 -p  путь 

 
Если вы предпочитаете хранить файлы для ASPLoader не в каталоге по умолчанию
( /etc/boot/aspldr ), то этот параметр позволит Вам указать путь для файлов.
 
 
   
 СМОТРИ ТАКЖЕ 

 aspldr.conf (5).
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 СМОТРИ ТАКЖЕ 
 
 
 
 
 
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