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
 
 
 
 pppoe-wrapper (1) >>  pppoe-wrapper  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня ) 


 ИМЯ 
 

 

pppoe-wrapper  SUID-посредник для включения и отключения PPPoE-соединений
 

 

 ОБЗОР 
 

 

pppoe-wrapper start имя_канала
 

 
pppoe-wrapper stop имя_канала
 

 
pppoe-wrapper status имя_канала
 

 

 ОПИСАНИЕ 
 

 

pppoe-wrapper - это маленькая SUID-программа, которая позволяет пользователям, не являющимся root, открывать и закрывать каналы PPPoE. Она работает следующим образом:

 
 
  Сначала имя канала проверяется на допустимость. Слишком длинные имена и имена содержащие недопустимые символы отклоняются. 
 
  Затем, pppoe-wrapper открывает файл /etc/ppp/rp-wrapper-gui/имя_канала для чтения. Если этот файл не содержит строку: 
 
 
 NONROOT=OK 

 

pppoe-wrapper завершается с ошибкой.

 
 
  Иначе, pppoe-wrapper запускает  pppoe-start ,  pppoe-stop  или  pppoe-status  с указанным именем файла в качестве единственного аргумента. 
 
 

 

 АВТОР 
 

 

pppoe-wrapper был написан Дэвидом Ф. Сколлом (David F. Skoll)  dfs@roaringpenguin.com .
 

 
Домашняя страница pppoe -  http://www.roaringpenguin.com/pppoe/ .
 

 

 АВТОР ПЕРЕВОДА 
 

 

Перевод на русский язык выполнил Владимир Ступин  wheelof@gmail.com 
 

 

 СМОТРИ ТАКЖЕ 
 

 

 pppoe-start(8) ,  pppoe-stop(8) ,  pppoe-status(8) 

 

 

        
      
    
       
         
           
                     
           
          man/pppoe-wrapper_1.txt · Последние изменения: 2009-02-05 20:24 (внешнее изменение)           
         
       

 
 
 
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