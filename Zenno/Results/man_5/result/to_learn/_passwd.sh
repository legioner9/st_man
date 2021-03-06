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
 
 
 
 passwd (5)   passwd  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня )   passwd  (1)   ( FreeBSD man: Команды и прикладные программы пользовательского уровня )   passwd  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   passwd  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня )   passwd  (4)   ( Solaris man: Специальные файлы /dev/* )   passwd  (5)   ( FreeBSD man: Форматы файлов ) >>  passwd  (5)   ( Русские man: Форматы файлов )   passwd  (5)   ( Linux man: Форматы файлов )   passwd  (8)   ( Русские man: Команды системного администрирования )   passwd  (8)   ( Linux man: Команды системного администрирования ) 
   
 ИМЯ 

passwd - файл паролей
   
 ОПИСАНИЕ 

 Passwd 

является текстовым файлом, который содержит список учётных записей в
системе, где каждая учётная запись содержит некоторую полезную информацию,
такую как идентификатор пользователя (UID), идентификатор группы (GID),
домашний каталог, командный интерпретатор и т.д.
Часто, в этом же файле для каждой учётной записи содержатся также и
зашифрованные пароли. Файл должен быть доступен для чтения всем (многие
утилиты, такие как
 ls (1)

используют его, чтобы отражать идентифкаторы пользователей на их
имена), но доступ на запись должен предоставляться только
суперпользователю.
 

В старые добрые времена, не существовало большой проблемы, связанной
с доступностью этого файла на чтение для всех. Любой мог прочитать
зашифрованные пароли, но мощности компьютеров не хватало для подбора
грамотно выбранных паролей, а кроме того, основным принципом работы
было дружественное сообщество пользователей. В наши дни, многие
пользователи стали использовать механизм "теневых" паролей, где файл
 /etc/passwd 

содержит * вместо зашифрованных паролей, а зашифрованные пароли
хранятся в файле
 /etc/shadow , 

который доступен на чтение только суперпользователю.
 

Вне зависимости от того применяется ли механизм теневых паролей
или нет, многие системные администраторы ставят звёздочку в
поле зашифрованного пароля, чтобы быть уверенными, что данный
пользователь не пройдёт авторизацию, используя какой-либо пароль.
(Но смотри секцию Замечение ниже.)
 

Если вы создаёте новую учётную запись, сперва в поле пароля помещается
звёздочка, а затем с помощью команды
 passwd (1)

вы можете задать пароль.
 

Каждая строка файла содержит только одну учётную запись в формате:
 
 
account:password:UID:GID:GECOS:directory:shell
 

 
Вот описание этих полей:
 
 
 
 account 

 
имя пользователя в системе. Оно не должно содержать денежных символов.
(Вообще сегодня в Linux имя пользователя может содержать только
латинские буквы в нижнем регистре и ряд служебных символов -- прим.пер.)
 password 

 
зашифрованный пароль пользователя или звёздочка. (В случае использования
теневых паролей, если пароль задан, то в поле пароля ставится символ `x',
а не звёздночка -- прим.пер.)
 UID 

 
числовой идентификатор пользователя (UID).
 GID 

 
числовой идентификатор первичной группы (GID) для этого пользователя.
 GECOS 

 
Данное поле является необязательным и используется только для
информационных целей. Обычно, оно содержит полное имя пользователя.
GECOS это аббревиатура от General Electric Comprehensive Operating System,
которая был переименована в GCOS, когда подразделение больших систем
компании GE было продано компании Honeywell. Денис Ритчи писал:
"Иногда мы направляем вывод печати или пачку заданий на GCOS машину.
Поле gcos в файле паролей было местом, где хранилась информация для
$IDENTcard.  Не элегантно."
 directory 

 
домашний каталог пользователя $HOME.
 shell 

 
это программа, которая запускается после входа в систему (если это
поле пустое, то используется
 /bin/sh ).

Если в поле указан не существующий файл, то пользователь не сможет
войти в систему с помощью
 login (1).

 
 

   
 ЗАМЕЧАНИЕ 

Если вы хотите создать пользователя в определённой группе, то вы должны
указать имя группы или её GID, и при этом для этой группы в файле
 /etc/group  должна существовать соответствующая запись.
 

Если зашифрованный пароль установлен в звёздочку, то пользователь
не сможет войти в систему, используя команду
 login (1),

но сможет войти в систему, используя
 rlogin (1),

запустить существующие процессы и инициировать новые, используя
 rsh (1),

 cron (1),

 at (1),

или почтовые фильтры и т.д.  Попытка заблокировать учётную запись
простым изменением поля  shell , даст тот же результат и в
дополнении разрешит использование
 su (1).

   
 ФАЙЛЫ 

 /etc/passwd 

   
 СМОТРИ ТАКЖЕ 

 passwd (1),

 login (1),

 su (1),

 group (5),

 shadow (5)

   
 ПЕРЕВОД 

Перевёл с английского Виктор Вислобоков < corochoone@perm.ru > 2004
 

 
   Index 
 
 ИМЯ 
 ОПИСАНИЕ 
 ЗАМЕЧАНИЕ 
 ФАЙЛЫ 
 СМОТРИ ТАКЖЕ 
 ПЕРЕВОД 
 
 
 
 
 
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