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
 
 
 
 slapo-auditlog (5) >>  slapo-auditlog  (5)   ( Русские man: Форматы файлов ) 


   
 НАЗВАНИЕ 

slapo-auditlog - наложение ведения журнала изменений для slapd
   
 ОБЗОР 

/usr/local/etc/openldap/slapd.conf
 
 /usr/local/etc/openldap/slapd.d 
 
   
 ОПИСАНИЕ 

Наложение ведения журнала изменений может быть использовано для записи всех изменений соответствующей
базы данных механизма манипуляции данными в указанный файл журнала. Изменения выводятся в журнал в
стандартном LDIF-формате с дополнительным заголовком-комментарием, в котором указываются отметка
времени изменения и идентификационная сущность пользователя, произведшего данное изменение.
 

Для операций Add и Modify эта идентификационная сущность происходит от ассоциированного с данной
операцией значения modifiersName. Обычно оно совпадает с идентификационной сущностью пользователя,
от имени которого выполняется запрос, но может быть изменено другими наложениями для отражения иной
информации.
   
 КОНФИГУРАЦИЯ 

Приводимые ниже параметры
 slapd.conf 

применяются к наложению ведения журнала изменений. Они должны указываться после директивы
 overlay .

 
 auditlog <имя_файла> 

 
Определяет полный путь к файлу журнала.
 olcAuditlogFile: <имя_файла> 

 
Данный вариант используется при конфигурации
 cn=config .

 
   
 ПРИМЕР 

Для добавления наложения auditlog в конфигурацию
 cn=config 

может использоваться такой LDIF (откорректируйте под свои настройки):
 

 
 dn: olcOverlay=auditlog,olcDatabase={1}mdb,cn=config
changetype: add
objectClass: olcOverlayConfig
objectClass: olcAuditLogConfig
olcOverlay: auditlog
olcAuditlogFile: /tmp/auditlog.ldif
 

 

 

 

   
 ФАЙЛЫ 

 
 /usr/local/etc/openldap/slapd.conf 
конфигурационный файл slapd по умолчанию.
 /usr/local/etc/openldap/slapd.d 
конфигурационная директория slapd по умолчанию.
 
   
 СМОТРИТЕ ТАКЖЕ 

 slapd.conf (5),

 slapd-config (5). 

 

 
   Index 
 
 НАЗВАНИЕ 
 ОБЗОР 
 ОПИСАНИЕ 
 КОНФИГУРАЦИЯ 
 ПРИМЕР 
 ФАЙЛЫ 
 СМОТРИТЕ ТАКЖЕ 
 
 
 
 
 
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