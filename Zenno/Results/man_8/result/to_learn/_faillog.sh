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
 
 
 
 faillog (8)   faillog  (5)   ( Русские man: Форматы файлов )   faillog  (5)   ( Linux man: Форматы файлов ) >>  faillog  (8)   ( Русские man: Команды системного администрирования )   faillog  (8)   ( Linux man: Команды системного администрирования ) 
   
 НАЗВАНИЕ 

faillog - анализирует файл ошибок и определяет ограничения на ошибки
   
 СИНТАКСИС 

 
 faillog 

 
[ -u 

 пользователь ]

[ -a ]

[ -t 

 дни ]

[ -m 

 максимум ]

[ -pr ]

 
   
 ОПИСАНИЕ 

 faillog  проверяет содержимое журнала ошибок
 /var/log/faillog  и определяет счетчики ошибок и ограничения
по возможным ошибкам.
Порядок передаваемых параметров к  faillog  имеет значение.
Каждый параметр обрабатывется точно в порядке считывания.
 

Параметр  -p  определяет вывод ошибок в порядке идентификаторов.
Указав параметр  -u  пользователь , вы определите вывод
ошибок только для  пользователя .
 
Указав параметр  -t  дни , вы определите вывод ошибок
за последние  дни  дней.
Параметр  -t  переопределяет использование  -u .
Параметр  -a  выбирает всех пользователей.
При использовании с параметром  -p  этот флаг выбирает всех
пользователй, у кого хотя бы раз была ошибка при входе в систему.
Использование этого параметра бессмысленно вместе с  -r .
 

Параметр  -r  используется для сброса счетчика ошибок при входе в систему.
Для этого требуются права на запись в  /var/log/faillog .
Указав  -u  пользователь , Вы сбросите счетчик ошибок только для  пользователя .
 

Параметр  -m  используется для указания максимального количества
ошибок при входе, после которого учетная запись блокируется.
Для этого требуются права на запись в  /var/log/faillog .
Указание  -m  максимум  определит блокирование всех учетных записей при
достижения  максимум  ошибок при входе в систему.
При указании  -u  пользователь  эта функция будет
влиять только на  пользователя .
Установка  максимум  в 0 определяет отсутствие ограничения на ошибки входа.
Для пользователя  root  максимальное число ошибок всегда должно быть равно 0.
 

Параметры в целом могут быть расположены в любом порядке.
Каждый параметр  -p ,  -r  и  -m  приведет к немедленному 
их выполнению с  -u  и  -t .
   
 ПРЕДОСТЕРЕЖЕНИЕ 

 faillog  без параметров выводит список пользователей
только с ошибками входа. Для вывода пользователей, которые
нормально вошли в систему после нескольких ошибок входа
необходимо либо четко указать пользователя параметром  -u ,
либо вывести данные по всем пользователям  параметром  -a .
 

Некоторые системы могут заменять файл /var/log на /var/adm или /usr/adm.
   
 ФАЙЛЫ 

/var/log/faillog - журнал ошибок
   
 СМ. ТАКЖЕ 

 login (1),

 faillog (5)

   
 АВТОРЫ 

Julianne Frances Haugh ( jfh@austin.ibm.com )
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ПРЕДОСТЕРЕЖЕНИЕ 
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