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
 
 
 
 faq (6)   faq  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня ) >>  faq  (6)   ( Русские man: Игры ) Ключ  faq  обнаружен в базе ключевых слов. 
   
 НАЗВАНИЕ 

FAQ - Ответы на часто задаваемые вопросы
 
   
 ОПИСАНИЕ 

Здесь собрана подборка вопросов и ответов из рассылок  community , 
 sisyphus ,  hardware , как относящихся к дистрибутивам
 ALTLinux , так и общих для  Linux .
 
   
 FAQ 

 АЛЬТ-СПЕЦИФИКА 
 
 Вопрос 
После изменений в /etc/resolv.conf или /etc/hosts перестает
"нормально" работать resolver. Например, команды ping или host
возвращают "Unknown host".
В чем дело?
 Ответ 
После любых таких изменений выполняйте update_chrooted conf.
Если вы обновили конфигурацию resolver'а, то должны завершить
обновление, чтобы за'chroot'енные сервиcы смогли воспользоваться новой
конфигурацией.
 
 

 
 RPM и APT 
 Вопрос 
Любые попытки произвести какие-либо операции с пакетами rpm, как через
apt, так и на прямую через rpm (типа  rpm -i <PACKAGE_FILE>) приводит
к сообщению "Segmentation fault".
 Ответ1 
Вероятно, это последствия обновления glibc без обновления rpm.
После такого обновления перестают работать статически собранные программы,
использующие NSS (в частности, /bin/rpm, который в старых версиях rpm
собирался статически).
 
Можно попробовать выставить в /etc/apt.conf:
 
Dir::Bin::rpm "/usr/lib/rpm/rpmi";
 
Либо скачайте пакеты librpm, rpm и установите их вызовом /usr/lib/rpm/rpmi
вместо /bin/rpm.
 Ответ2 
rpm --rebuilddb
 Ответ3 
Не хватает свободного места в разделе /var .
 FTP 
 Вопрос 
какой шелл прописать в /etc/passwd пользователю, имеющему доступ к ftp
серверу, не давая ему при этом реального шелла по ssh ?
P.S. ftp сервер - vsfptd. 
 Ответ 
См.  nologin (8) в комбинации с  pam (8). 
Например, в /etc/pam.d/vsftpd можно заменить:
 
auth     required       pam_shells.so
 
на
 
auth     required       pam_listfile.so item=user sense=allow file=/etc/белый_список onerr=fail
 
   
 ЗАМЕТКИ 

 
 o 
Запуск c параметром -o Debug::ProblemResolver=true
помогает отследить проблемы при обновлениях и установке.
 
 
   
 АВТОР 

Составитель руководства: Sergey V. Golovin < svgol@samkon.ru >
   
 ССЫЛКИ 

 
 http://docs.altlinux.ru 
 http://www.atmsk.ru 
 
 
 

 
   Index 
 
 НАЗВАНИЕ 
 ОПИСАНИЕ 
 FAQ 
 ЗАМЕТКИ 
 АВТОР 
 ССЫЛКИ 
 
 
 
 
 
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