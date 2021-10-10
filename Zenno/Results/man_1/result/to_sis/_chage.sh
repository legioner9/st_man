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
 
 
 
 chage (1) >>  chage  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   chage  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня ) 
   
 НАЗВАНИЕ 

chage - изменяет настройки срока действия пароля
   
 СИНТАКСИС 

 
 chage 
[ -m  mindays ] [ -M  maxdays ]
[ -d  lastday ] [ -I  inactive ]
 

[ -E  expiredate ] [ -W  warndays ]  user 
 chage 
 -l   user 
 
   
 ОПИСАНИЕ 

 chage  изменяет количество дней между сменой пароля и датой
последнего изменения пароля. Информация используется системой
для определения времени, когда пользователь должен сменить свой пароль.
Команда  chage  разрешена только для суперпользователя, за исключением
использования ее с параметром  -l , который позволяет непривилегированным
пользователям определить время, когда истекает их пароль или учетная запись.
 

С параметром  -m  изменяется значение  mindays  на минимальное
число дней между сменой пароля. Значение 0 в этом поле обозначает,
что пользователь может изменять свой пароль когда угодно.
 

С параметром  -M  изменяется значение  maxdays  на максимальное
число дней, в течении которых пароль еще действителен.
Когда сумма  maxdays  и  lastday  меньше, чем текущий день,
у пользователя будет запрошен новый пароль до начала работы в системе.
Эта операция может предваряться предупреждением (параметр  -W ).
 

С параметром  -d  изменяется значение  lastday  на день,
когда был изменен пароль последний раз (число дней с 1 января 1970).
Дата также может быть указана в формате ГГГГ-ММ-ДД
(или формат, используемый в вашем регионе).
 

Параметр  -E  используется для задания даты, с которой учетная запись
пользователя станет недоступной.
Параметр  expiredate  есть число дней с 1 января 1970.
Дата также может быть указана в формате ГГГГ-ММ-ДД
(или формат, используемый в вашем регионе).
Пользователь, чья учетная запись была заблокирована, должен
сообщить об этом администратору для дальнейшей работы в системе.
 

Параметр  -I  используется для задания количества дней "неактивности",
то есть дней, когда пользователь вообще не входил в систему, после которых
его учетаня запись будет заблокирована.
Пользователь, чья учетная запись была заблокирована, должен
сообщить об этом администратору для дальнейшей работы в системе.
Параметр  inactive  есть количество "неактивных" дней.
Значение 0 отключает этот режим.
 

Параметр  -W  используется для задания числа дней, с которых пользователю
начнет выводиться предупреждение об истечении срока действия его пароля
и необходимости его изменения.
Параметр  warndays  есть число дней до истечения срока действия пароля,
с которых пользователю будет выдаваться предупреждение.
 

Все вышеперечисленные значения хранятся в виде дней,
если используется система теневых паролей, но если используется системы
обычных паролей, то значения преобразуются в недели.
Из-за этого преобразования могут происходить ошибки округления.
 

Если параметры не указаны, то  chage  работает в интерактивном
режиме, сообщая пользователю текущие значения полей.
Необходимо далее либо ввести новое значение поля, либо оставить его
как есть. Текущее значение поля показывается в скобках  [ ] .
   
 ФАЙЛЫ 

/etc/passwd - информация об учетной записи пользователя
 

/etc/shadow - информация о теневой учетной записи пользователя
   
 СМ. ТАКЖЕ 

 passwd (5),

 shadow (5)

   
 АВТОРЫ 

Julianne Frances Haugh ( jfh@austin.ibm.com )
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ФАЙЛЫ 
 СМ. ТАКЖЕ 
 АВТОРЫ 
 
 
 
 
 
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