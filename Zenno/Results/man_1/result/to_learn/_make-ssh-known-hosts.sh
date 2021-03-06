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
 
 
 
 make-ssh-known-hosts (1)   make-ssh-known-hosts  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня ) >>  make-ssh-known-hosts  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня ) 
   
 НАЗВАНИЕ 

 make-ssh-known-hosts  - создание файла ssh_known_hosts из данных DNS
   
 СИНТАКСИС 


 
 make-ssh-known-hosts 

 
[ --initialdns  начальный_dns ]
 

[ --server  сервер_доменных_имен ]
 

[ --subdomains  разделенный_запятыми_список_поддоменов ]
 

[ --debug  уровень_отладки ]
 

[ --timeout  время_ожидания_выполнения_ssh ]
 

[ --pingtimeout  время_ожидания_ping ]
 

[ --passwordtimeout  время_ожидания_запроса_пароля ]
 

[ --notrustdaemon ]

 

[ --norecursive ]

 

[ --domainnamesplit ]

 

[ --silent ]

 

[ --keyscan ]

 

[ --nslookup  путь_к_программе_nslookup ]
 

[ --ssh  путь_к _программе_ssh ]
 

 имя_домена  [ take_regexp  [ remove_regexp ]]
 
 
   
 ОПИСАНИЕ 

 

 make-ssh-known-hosts 

это сценарий на perl5, который поможет в создании файла  /etc/ssh_known_hosts ,
используемого
 ssh 

для хранения ключей всех публично известных машин.  
Обычно 
 ssh 

не разрешает вход в систему с использованием аутентификации rhosts или /etc/hosts.equiv, если серверу не известен ключ клиентской машины. В добавок, ключи машин используются для предотвращения атак, построенных по принципу man-in-the-middle.
 

В дополнение к  /etc/ssh_known_hosts   ssh  также использует файл
 $HOME/.ssh/known_hosts . Однако, этот файл предназначен для хранения только тех ключей машин, использование которых продиктовано спецификой данных пользователей. Подразумевается, что файл
 /etc/ssh_known_hosts 

может обслуживаться и быть периодически дополнен новыми ключами для любой новой машины только системным администратором.
 

Программа
 make-ssh-known-hosts 

найдет все машины в домене послав DNS запрос к главному серверу доменных имен домена. Главный сервер доменных имен будет найден посредством поиска SOA записи для домена с начального сервера имен (который может быть указан при помощи параметра  --initialdns . Имя главного сервера доменных имен так-же может быть задано напрямую при помощи параметра  --server .
 

После получения списка имен машин
 make-ssh-known-hosts 

пробует получить публичный ключ от каждой машины в домене. Сначала предпринимается попытка установить соединение через порт ssh для проверки, действует компьютер или нет, и если действует, то будет предпринята попытка выполнить на удаленной машине  с помощью  ssh  команду  cat /etc/ssh_host_key.pub . Если команда была выполнена удачно, то программа будет знать, что  ssh  на удаленной машине установлено правильно и затем из результа будет извлечен публичный ключ и вывод  /etc/ssh_known_hosts  о нем будет направлен в STDOUT. Так как  make-ssh-known-hosts  обычно выполняется до того как на удаленных машинах будет создана запись в файле /etc/ssh_known_hosts, вам может понадобиться использование RSA-аутентификации для доступа к компьютерам.
 

Если по каким-то причинам выполнение программы завершилась неудачей, то будет произведена проверка был ли получен  ssh  клиентом в процессе инициализации публичный ключ с удаленной машины, и если это не так, то будет распечатана правильная запись, а если задан параметр  --notrustdaemon , то она будет отмечена символом комментария.
 

 имя_домена 

- это имя домена для которого был сгенерирован файл. По умолчанию 
 make-ssh-known-hosts 

извлекает также из домена все суб-домены. Во многих местах заносят некоторые домены в файл  /etc/ssh_known_hosts .
Записи для каждого домена должны быть извлечены раздельно, запуском
 make-ssh-known-hosts  

для каждого домена отдельно. Результаты затем могут быть объединены в одном окончательном файле.
 

 take_regexp 

- это регулярное выражение perl, которое соответствует именам машин, взятым из домена. Соответствующие данные содержат все записи DNS в формате " имя_поля=значение ". 
Разделителем полей является новая строка, соответствия perl сделаны многострочными и не чувствительны к регистру. Многострочный режим означает, что вы можете использовать регулярные выражения подобные " ^wks=.*telnet.*$ "
для соответствия всем компьютерам имеющим поля WKS (хорошо известные службы) содержащим значение "telnet".
 

 remove_regexp 

- это схожее выражение, но те машины, которые соответствуют регулярному выражению, не будут добавлены (это может быть использовано, например, для отфильтровывания PC и Mac используя поле hinfo: " ^hinfo=.*(mac|pc) ").
 
   
 ПАРАМЕТРЫ 

 
 --initialdns  начальный_dns 
 -i  начальный_dns 
Указывает начальный сервер службы доменных имен, используемый для опроса записей SOA для домена.
 
 --server  сервер_доменных_имен 
 -se  сервер_доменных_имен 
Устанавливает главный сервер доменных имен домена. Этот компьютер используется для запроса списка DNS домена.
 
 --subdomains  список_суб-доменов 
 -su  список_суб-доменов 
Разделенный запятыми список суб-доменов, которые будут добавлены к именам машин. Например, если списком суб-доменов являются " foo, foo.bar, foo.bar.zappa, foo.bar.zappa.hut.fi  ", то когда машина foobar будет добавлена в файл  /etc/ssh_known_hosts ,
то она получит псевдонимы " foobar, foobar.foo, foobar.foo.bar, foobar.foo.bar.zappa, foobar.foo.bar.zappa.hut.fi  ". По умолчанию берутся все составляющие имени машины, но второе с конца имени машины является базовым для компьютера. (Последний элемент имени, как правило, используется для обозначения кода государства, и что-нибудь типа
 foobar.foo.bar.zappa.hut  

не имело бы смысла.)
 
 --debug  уровень_отладки 
 -de  уровень_отладки 
Устанавливает уровень отладки. Значением по умолчанию является 5, большие значения дадут более информативный вывод.
Использование большого значения (такого как 999) будет выводить уйму отладочной информации.
 
 --timeout  время_ожидания_выполнения_ssh 
 -ti  время_ожидания_выполнения_ssh 
Время ожидания выполнения команды  ssh .
Значением по умолчанию является 60 секунд.
 
 --pingtimeout  время_ожидания_ping 
 -pi  время_ожидания_ping 
Время ожидания пока выполняется ping портов ssh.  Значением по умолчанию является 3 секунды.
 
 --passwordtimeout  время_ожидания_запроса_пароля 
 -pa  время_ожидания_запроса_пароля 
Время ожидания запроса пароля для команды ssh. По умолчанию пароль не будет востребован. Используйте значение 0 для отмены ожидания запроса пароля.
 
 --notrustdaemon 
 -notr 

 

Если команда
 ssh 

дала сбой используйте публичный ключ сохраненный в локальном файле известных машин и надейтесь, что это правильный ключ для машины. Если этот параметр не задан, такие записи будут закомментированы в сгенерированном файле  /etc/ssh_known_hosts .
 
 --norecursive 
 -nor 

 

Сообщает
 make-ssh-known-hosts , 

что он должен только извлечь ключи для заданного домена без рекурсии. 
 
 --domainnamesplit 
 -do 

 

Разбить имя домена для получения списка поддоменов. Используйте этот параметр, если вы не желаете, чтобы имена машин были разбиты автоматически. По умолчанию разбивка производится по принципу машина за машиной. Если доменом является 
zappa.hut.fi  и имя машины  foo.bar, то по умолчанию будут добавлены записи " foo, foo.bar, foo.bar.zappa, foo.bar.zappa.hut.fi  " Использование этого параметра добавит записи " foo.bar, foo.bar.zappa, foo.bar.zappa.hut.fi  ".
 
 --silent 
 -si 

 

Быть тихим.
 
 --keyscan 
 -k 

 

Вывод списка всех компьютеров в формате "ipaddr1,ipaddr2,...ipaddrn,
имя_машины.домен.co,имя_машины,ipaddr1,ipaddr2,
все_остальные_записи_имен_машин".
Вывод этого может быть скормлен в ssh-keyscan для получения ключей.
 
 --nslookup  путь_к_программе_nslookup 
 -n  путь_к_программе_nslookup 
Указывает путь к программе  nslookup .
 
 --ssh  путь_к_программе_ssh 
 -ss  путь_к_программе_ssh 
Указывает путь, включая все параметры, к программе  ssh .
 
   
 ПРИМЕРЫ 

 

Команда
 
 
 make-ssh-known-hosts cs.hut.fi >  /etc/ssh_known_hosts 

 
 

найдет все публичные ключи в домене
 cs.hut.fi  

и поместит из в файл
 /etc/ssh_known_hosts 

с разбивкой доменных имен по-машинно.
 

Команда
 
 
 make-ssh-known-hosts hut.fi '^wks=.*ssh' >  hut-hosts 

 
 

найдет все машины в домене
 hut.fi  

и его под-доменах, имеющих свой собственный сервер имен (cs.hut.fi ,
tf.hut.fi , tky.hut.fi ), которые имеют службу ssh, и поместит их публичные ключи в файл hut-hosts. Для этого требуется, чтобы сервер доменных имен hut.fi  определял бы все машины с действующими службами ssh по их WKS-записям. Если никто ещё не добавил ssh в WKS, то лучше использовать команду
 
 
 make-ssh-known-hosts hut.fi '^wks=.*telnet' >  hut-hosts 

 
 

которая отобрала бы машины, имеющие сервис telnet. Это использует список субдоменов по умолчанию.
 
 

Команда
 
 
 make-ssh-known-hosts hut.fi 'dipoli.hut.fi ' '^hinfo=.*(mac|pc)' >  dipoli-hosts 

 
 

найдет все машины в домене hut.fi , которые находятся в поддомене dipoli.hut.fi  (обратите внимание, что dipoli.hut.fi  не имеет собственного сервера имен, так что записи о нем находятся на сервере hut.fi ) и что они не являются Mac или PC.
 
   
 ФАЙЛЫ 



 /etc/ssh_known_hosts  - глобальный список публичных ключей машин.
 
   
 СМОТРИ ТАКЖЕ 

 ssh (1),

 sshd (8),

 ssh-keygen (1),

 ping (8),

 nslookup (8),

 perl (1),

 perlre (1)

 
   
 АВТОРЫ 


Tero Kivinen < kivinen@hut.fi  >

 


Александр Блохин < sass@altlinux.ru > - перевод на русский язык.

   
 ЛИЦЕНЗИОННОЕ СОГЛАШЕНИЕ 

----------------------------------------------------------------------
 

О Программе:
 
Это свободная программа; вы можете повторно распространять и/или
модифицировать make-ssh-known-hosts в соответствии с Универсальной Общественной Лицензией GNU, опубликованной Фондом Свободного ПО; либо версии 2, либо (по вашему выбору) любой более  поздней версии.
  
Make-ssh-known-hosts распространяется в надежде, что она будет полезной, но БЕЗ
КАКИХ-ЛИБО ГАРАНТИЙ; даже без подразумеваемых гарантий КОММЕРЧЕСКОЙ ЦЕННОСТИ
или ПРИГОДНОСТИ ДЛЯ КОНКРЕТНОЙ ЦЕЛИ. Для получения подробных сведений смотрите
Универсальную Общественную Лицензию GNU.
  
Вы должны были получить копию Универсальной Общественной Лицензии GNU вместе с
этой программой; если нет, напишите по адресу: Free Software Foundation, Inc.,
59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
                                                    
----------------------------------------------------------------------
 

О Руководстве:
 
 

Permission is granted to make and distribute verbatim copies of
this manual provided the copyright notice and this permission notice
are preserved on all copies.
 

Permission is granted to copy and distribute modified versions of this
manual under the conditions for verbatim copying, provided that the
entire resulting derived work is distributed under the terms of a
permission notice identical to this one.
 

Permission is granted to copy and distribute translations of this
manual into another language, under the above conditions for modified
versions, except that this permission notice may be included in
translations approved by the the author instead of in the original
English.
----------------------------------------------------------------------
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ПАРАМЕТРЫ 
 ПРИМЕРЫ 
 ФАЙЛЫ 
 СМОТРИ ТАКЖЕ 
 АВТОРЫ 
 ЛИЦЕНЗИОННОЕ СОГЛАШЕНИЕ 
 
 
 
 
 
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