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
 
 
 
 pppd-radattr (8) >>  pppd-radattr  (8)   ( Русские man: Команды системного администрирования )   pppd-radattr  (8)   ( Linux man: Команды системного администрирования ) 


 ИМЯ 
 

 

radattr.so - плагин утилиты RADIUS для pppd(8)
 

 

 ОБЗОР 
 

 

pppd [ опции ] plugin radius.so plugin radattr.so
 

 

 ОПИСАНИЕ 
 

 

Плагин radattr для pppd вызывает сохранение всех атрибутов возвращаемых сервером RADIUS во время аутентификации, в файл /var/run/radattr.pppN где pppN - имя интерфейса PPP. Атрибуты RADIUS помещаются по одному в строку в формате Имя-Атрибута Значение-Атрибута. Этот формат удобно использовать в сценариях  /etc/ppp/ip-up  и  /etc/ppp/ip-down .
 

 
Отметим, что вы должны загрузить плагин radius.so перед загрузкой плагина radattr.so; radattr.so зависит от идентификаторов, определённых в radius.so.
 

 

 ИСПОЛЬЗОВАНИЕ 
 

 

Для использования плагина, просто снабдите опции pppd строчками plugin radius.so и plugin radattr.so.
 

 

 СМ. ТАКЖЕ 
 

 

 pppd(8) ,  pppd-radius(8) 
 

 

 АВТОР 
 

 

David F. Skoll  dfs@roaringpenguin.com 
 

 

 АВТОР ПЕРЕВОДА 
 

 

Перевод на русский язык выполнил Владимир Ступин  wheelof@gmail.com 

 

 

        
      
    
       
         
           
                     
           
          man/pppd-radattr_8.txt · Последние изменения: 2009-02-05 20:24 (внешнее изменение)           
         
       

 
 
 
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