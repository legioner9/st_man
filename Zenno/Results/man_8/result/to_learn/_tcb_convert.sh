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
 
 
 
 tcb_convert (8) >>  tcb_convert  (8)   ( Русские man: Команды системного администрирования )   tcb_convert  (8)   ( Linux man: Команды системного администрирования ) 
 
   
 Название 


 tcb_convert , 

 tcb_unconvert - 

утилиты преобразования теневых файлов
для перехода к схеме  tcb  и обратно.
 
   
 Использование 

 tcb_convert 

 

 tcb_unconvert 

 
   
 Описание 


Утилита
 tcb_convert 

преобразует файл
 /etc/shadow 

во множество файлов, расположенных в
 /etc/tcb/ 

(см.
 tcb (5)).

На время проведения этой операции файл
 /etc/shadow 

блокируется.
 

Утилита
 tcb_unconvert 

преобразует файлы из
 /etc/tcb/ 

обратно в единый файл
 /etc/shadow .

Ввиду невозможности блокировки всей теневой базы данных при использовании
схемы tcb,
 tcb_unconvert 

временно изменяет права на каталог
 /etc/tcb/ 

устанавливая группу владельца в значение "sys" для того, чтобы утилита
 passwd (1)

не могла работать до окончания преобразования.
 
   
 Переход на схему tcb 

Для перевода операционной системы на схему управления теневыми паролями
 tcb 

с
традиционной схемы
 /etc/passwd + /etc/shadow ,

необходимо предпринять следующее:
 
 1. 
Установить пакеты libtcb, libnss_tcb, pam_tcb, tcb_utils, а также
адаптированные для работы с
 tcb 

пакеты из семейства shadow-utils.
 2. 
Создать системную группу "auth", если её ещё нет в системе.
 3. 
Для разрешения процессам, входящим одновременно в группы "shadow" и
"auth", осуществлять доступ по чтению ко всем теневым файлам, необходимо
добавить либо раскомментировать нижеприведённую строку в файле
 /etc/login.defs :

 

tcb_AUTH_GROUP yes

 4. 
Запустить утилиту
 tcb_convert .

 5. 
В конфигурационном файле подсистемы NSS,
 /etc/nsswitch.conf ,

найти запись "shadow" и заменить метод "files" методом "tcb";
отредактированная запись будет выглядеть примерно так:
 

shadow: tcb nisplus nis

 6. 
Во всех файлах, расположенных в каталоге
 /etc/pam.d/ 

заменить все вхождения
 pam_unix.so 

и
 pam_pwdb.so 

(если такие есть) на
 pam_tcb.so .

Информацию по дополнительной настройке PAM можно прочесть в
 pam_tcb (8) . 

 7. 
В каждом файле из каталога
 /etc/pam.d/ 

содержащим правило "password" с использованием модуля
 pam_tcb 

(например,
 /etc/pam.d/system-auth )

необходимо добавить параметр
 write_to =tcb

к аргументам модуля
 pam_tcb ,

используемого при смене пароля.
Отредактированная запись будет выглядеть примерно так:
 

password required pam_tcb.so shadow use_authtok write_to=tcb

 8. 
Отредактировать файл
 /etc/login.defs ,

добавив (раскомментировав) строку:
 

USE_tcb yes

 9. 
Теперь можно удалить файл
 /etc/shadow .

Это важно сделать хотя бы для того, чтобы процессы, которым этот файл
доступен по чтению, не могли прочитать хеши прежних паролей (многие из
которых могут использоваться в течении долгого времени после перехода на
 tcb ).

 10. 
Если это не было сделано ранее при установке пакетов, выполнить с правами
рута команды
 

chown root:shadow /usr/bin/passwd /etc/pam.d/passwd
 

chmod 2711 /usr/bin/passwd
 

chmod 640 /etc/pam.d/passwd

 11. 
Проверить, все ли работает нормально, в частности, можно ли "войти"
в систему, работает ли смена пароля.
 
 
   
 Возврат к традиционной схеме 

Если по какой-либо причине необходимо вернуться к традиционной схеме с
единым теневым файлом, это можно сделать, запустив утилиту
 tcb_unconvert 

и выполнив некоторые из действий, обратные перечисленным выше в разделе
"Переход на схему  tcb ".
 
   
 Историческая справка 

Первая публичная версия реализации альтернативной схемы управления
теневыми паролями
 tcb 

появилась 12 ноября 2001 года в ОС Openwall GNU/*/Linux.
 

Дата появления
 tcb 

в ALT Linux Sisyphus - 20 декабря 2001 года.
 
   
 Авторы 

 
 Rafal Wojtczuk < nergal@owl.openwall.com >, Solar Designer < solar@owl.openwall.com > - 
реализация схемы
 tcb 

для ОС Openwall GNU/*/Linux.
 Dmitry V. Levin < ldv@altlinux.org > - 
аудит кода, адаптация схемы
 tcb 

для ОС ALT Linux, перевод документации по
 tcb 

на русский язык.
 Реализация PAM-модуля 
 pam_tcb 

призвана обеспечивать обратную совместимость с
 pam_unix ,

ввиду чего некоторые решения были заимствованы из
 pam_unix .

Некоторые менее критичные фрагменты кода, а также в некоторой мере
композиция кода взяты из реализации модуля
 pam_unix 

в Linux-PAM.
Имена соавторов
 pam_unix 

приведены в каталоге orig_copyright/ исходного кода схемы
 tcb .

 
 
   
 Ссылки 

 login.defs (5),

 pam_tcb (8),

 tcb (5)

 

 
   Index 
 
 Название 
 Использование 
 Описание 
 Переход на схему tcb 
 Возврат к традиционной схеме 
 Историческая справка 
 Авторы 
 Ссылки 
 
 
 
 
 
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