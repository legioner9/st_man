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
 
 
 
 pppd-radius (8) >>  pppd-radius  (8)   ( Русские man: Команды системного администрирования )   pppd-radius  (8)   ( Linux man: Команды системного администрирования ) 


 ИМЯ 
 

 

radius.so - плагин RADIUS-аутентификации для  pppd_8 
 

 

 ОБЗОР 
 

 

pppd [опции] plugin radius.so
 

 

 ОПИСАНИЕ 
 

 

Плагин RADIUS для pppd позволяет pppd проводить PAP, CHAP,  MS -CHAP и  MS -CHAPv2 аутентификацию используя RADIUS-сервер вместо обычных файлов секретов /etc/ppp/pap-secrets и  /etc/ppp/chap-secrets .
 

 
Плагин RADIUS основан на библиотеке под названием radiusclient, которая имеет собственные файлы конфигурации (обычно в /etc/radiusclient), обратитесь к этим файлам за более подробной информацией по настройке плагина RADIUS.
 

 

 ОПЦИИ 
 

 

Плагин RADIUS вводит в pppd несколько дополнительных опций:
 

 

 radius-config-file filename 
 

 

Файл filename обрабатывается как конфигурационный файл radiusclient. Если эта опция не используется, тогда плагин использует в качестве конфигурационного файла /etc/radiusclient/radiusclient.conf.
 

 

 avpair attribute=value 
 

 

Добавляет пару Атрибут-Значение для передачи RADIUS-серверу в каждом запросе.
 

 

 map-to-ifname 
 

 

Устанавливает RADIUS-атрибут NAS-Port в число эквивалентное имени интерфейса. Используется по умолчанию.
 

 

 map-to-ttyname 
 

 

Устанавливает значение RADIUS-атрибута NAS-Port через библиотеку libradiusclient.
 

 

 ИСПОЛЬЗОВАНИЕ 
 

 

Для использования плагина просто снабдите pppd опцией plugin radius.so, и соответствующим образом отредактируйте /etc/radiusclient/radiusclient.conf. Если Вы используете плагин RADIUS, обычные схемы аутентификации (логин, проверка по файлам /etc/ppp/*-secrets) пропускаются. RADIUS-сервер должен назначить IP-адрес партнёра используя RADIUS-атрибут Framed-IP-Address.
 

 

 СМОТРИ ТАКЖЕ 
 

 

 pppd_8 ,  pppd-radattr_8 
 

 

 АВТОР 
 

 

Дэвид Ф. Сколл (David F. Skoll)  dfs@roaringpenguin.com 
 

 

 АВТОР ПЕРЕВОДА 
 

 

Перевод на русский язык выполнил Владимир Ступин  wheelof@gmail.com 

 

 

        
      
    
       
         
           
                     
           
          man/pppd-radius_8.txt · Последние изменения: 2009-02-05 20:24 (внешнее изменение)           
         
       

 
 
 
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