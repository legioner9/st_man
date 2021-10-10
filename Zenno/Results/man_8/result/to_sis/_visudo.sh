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
 
 
 
 visudo (8) >>  visudo  (8)   ( Русские man: Команды системного администрирования )   visudo  (8)   ( Linux man: Команды системного администрирования ) 
   
 НАЗВАНИЕ 

visudo - редактирует файл sudoers
   
 СИНТАКСИС 

 visudo  [  -c  ] [  -f   sudoers  ] [  -q  ] [  -s  ] [  -V  ]
   
 ОПИСАНИЕ 

 visudo  редактирует файл  sudoers  в безопасном режиме, аналогично
 vipw (8).   visudo  блокирует файл  sudoers , во избежание 
открытия его для правки в нескольких сессиях редактора одновременно, осуществляет проверку правильности выражений и грамматики. Если файл  sudoers  в настоящий момент редактируется, Вы получите сообщение с предложением попытаться отредактировать его позже.  
 

Имеется встроенный список программ для редактирования, указанных при компиляции, которые использует  visudo  и которые могут быть переопределены посредством переменной  editor в  sudoers . По умолчанию этот список соотносится с расположением  vi (1) в вашей системе, как определено сценарием  configure . Обычно,  visudo  не учитывает переменные окружения EDITOR или VISUAL, если они не содержат программу-редактор из вышеупомянутого списка редакторов. Однако, если  visudo  сконфигурирован с флагом  --with-enveditor  или в  sudoers  установлена переменная  enveditor , то  visudo  будет использовать любой редактор определенный при помощи EDITOR или VISUAL. Имейте в виду, что это может стать прорехой в защите, так как позволит пользователю выполнять любые программы просто установив значение EDITOR или VISUAL.
 

После редактирования  visudo  анализирует файл  sudoers  и не сохраняет 
изменения, если имеется синтаксическая ошибка.  При обнаружении ошибки на экран будет 
выведена подсказка с указанием  номера  строки, на которой произошла ошибка, и пользователю будет предложено решить, что делать дальше, "What now?". Пользователь может ввести "e", для возврата в режим редактирования файла  sudoers ,  "x", для выхода без сохранения внесенных изменений, или "Q", для выхода с сохранением сделанных им изменений. Опция Q должна использоваться крайне осторожно, так как если  visudo  в результате синтаксического анализа предполагает, что в файле имеются ошибки, то точно так-же будет считать  sudo , в результате чего никто больше не сможет выполнять  sudo  прежде, чем ошибка будет исправлена. При указании "е", для продолжения редактирования файла  sudoers  после обнаружения синтаксической ошибки, курсор переместится на ту строку, где была обнаружена ошибка (если редактор поддерживает эту функцию).
   
 ПАРАМЕТРЫ 

 visudo  поддерживает следующие параметры командной строки:
 
 "-с" 
Задействует режим  check-only . При этом будет проверен синтаксис уже существующего файла  sudoers  и на стандартный вывод будет выведено сообщение содержащее детальный статус  sudoers . Если проверка синтаксиса прошла удачно, то  visudo  завершит работу со значением 0. Если будет обнаружена ошибка в синтаксисе, то  visudo  завершит работу со значением 1.
 "-f" 
Указывает и переопределяет месторасположение файла  sudoers . При указании этого параметра  visudo  будет редактировать (или осуществит проверку) файла  sudoers  по вашему выбору, вместо подразумеваемого по умолчанию @sysconfdir@/sudoers. Файлом блокировки будет являться имя файла, указанного для  sudoers , с добавленным в конце ".tmp".
 "-q" 
Задействовать "тихий" режим. При этом режиме не будут отображаться детали при выводе сообщений об ошибках в синтаксисе. Этот параметр полезен только в комбинации с флагом  -с .
 "-s" 
Включает  строгую  проверку файла  sudoers .  Если псевдоним
используется до того как он определен,  visudo  будет рассматривать это как
грамматическую ошибку.  Обратите внимание, что оно не в состоянии делать различие между псевдонимом и именем машины или именем пользователя, состоящих только из букв набранных в верхнем регистре, чисел и знаков подчеркивания ('_').
  "-V"  
Параметр  -V  (версия) заставляет  visudo  отобразить номер версии, после чего прекращает его работу.
 
   
 СООБЩЕНИЯ ОБ ОШИБКАХ 

 
 "sudoers file busy, try again later"  
 
 

Это означает, что кто-то в настоящий момент редактирует файл  sudoers . 
 
 "/etc/sudoers.tmp: Permission denied"  
 
 

Вы выполняете  visudo  не как супер-пользователь (root).
 
 "Can't find you in the passwd database" 
 
 

Ваш идентификатор пользователя не найден в файле паролей.
 
 "Warning: undeclared Alias referenced near ..."  
 
 

Либо вы используете один из псевдонимов {User,Runas,Host,Cmnd}_Alias до их определения, либо вы имеете пользователя или имя машины описанное только буквами, набранными в верхнем регистре, цифрами и символами подчеркивания ('_').  В последнем случае вы можете игнорировать предупреждения ( sudo  не будет жаловаться). В  -s  (строгом) режиме эти сообщения будут считаться не предупреждениями, а ошибками.
   
 ПЕРЕМЕННЫЕ ОКРУЖЕНИЯ 

Следующие переменные могут использоваться в том случае, если  visudo  при сборке
было сконфигурировано с параметром  --with-env-editor :
 

 
 EDITOR                 Используется visudo для указания используемого редактора 
 VISUAL                 Используется visudo если EDITOR не определен 
 
   
 ФАЙЛЫ 

 

 
 /etc/sudoers 
/etc/sudo.d/*           список пользователей с указанием того, что они могут выполнять
 /etc/sudoers.tmp              файл блокировки для visudo 
 
 
   
 ПРЕДОСТЕРЕЖЕНИЕ 

Не существует никакого простого способа предотвратить захват пользователем оболочки с правами супер-пользователя (root), если редактор, используемый  visudo , позволяет использовать управляющие команды оболочки.
   
 ОШИБКИ 

Если вам кажется, что вы нашли ошибку в sudo, то отправьте рапорт об ошибке по адресу:  http://www.courtesan.com/sudo/bugs/ 
   
 ОБ АВТОРЕ 

Многие люди работали годами над  sudo . 
 

Эта версия  visudo  написана: 
 


Todd Miller < Todd.Miller@courtesan.com >

Для детальных пояснений смотри файл HISTORY или в интернете по адресу  http://www.sudo.ws/sudo/history.html. 
   
 ЛИЦЕНЗИОННОЕ СОГЛАШЕНИЕ 

Эта программа распространяется в надежде, что она будет полезной, но БЕЗ КАКИХ-ЛИБО ГАРАНТИЙ; даже без подразумеваемых гарантий КОММЕРЧЕСКОЙ ЦЕННОСТИ или ПРИГОДНОСТИ ДЛЯ КОНКРЕТНОЙ ЦЕЛИ.  Для получения подробных сведений смотрите Универсальную Общественную Лицензию GNU. 

Вы должны были получить копию Универсальной Общественной Лицензии
GNU вместе с этой программой; если нет, напишите по адресу: Free
Software Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA
02111-1307 USA  
   
 ПЕРЕВОД 


Константин Кудрин < cola@tcsb.perm.su >


Александр Блохин < sass@altlinux.ru >

   
 СМ. ТАКЖЕ 

 vi (1),  sudo (8),  vipw (8).
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ПАРАМЕТРЫ 
 СООБЩЕНИЯ ОБ ОШИБКАХ 
 ПЕРЕМЕННЫЕ ОКРУЖЕНИЯ 
 ФАЙЛЫ 
 ПРЕДОСТЕРЕЖЕНИЕ 
 ОШИБКИ 
 ОБ АВТОРЕ 
 ЛИЦЕНЗИОННОЕ СОГЛАШЕНИЕ 
 ПЕРЕВОД 
 СМ. ТАКЖЕ 
 
 
 
 
 
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