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
 
 
 
 logrotate (8) >>  logrotate  (8)   ( Русские man: Команды системного администрирования )   logrotate  (8)   ( Linux man: Команды системного администрирования ) 

   
 НАЗВАНИЕ 

logrotate - обращение, сжатие, и отправление электронной почтой файлов системных сообщений
   
 СИНТАКСИС 

 logrotate  [-dv] [-f|--force] [-s|--state  файл ]  файл_конфигурации +
   
 ОПИСАНИЕ 

 logrotate  разработан для облегчения администрирования систем, которые порождают большое количество файлов журналов происходящих в системе событий. Утилита предоставляет автоматическое обращение, сжатие, удаление и отправление по электронной почте журналов системы. Каждый файл журнала сообщений может обрабатываться ежедневно, еженедельно, ежемесячно, либо когда увеличится в размерах выше указанного предела.

Обычно  logrotate  выполняется в порядке ежедневного задания службы cron. В течении одного дня он не будет несколько раз изменять файл журнала сообщений, если критерий обработки для этого журнала не основан на размере файла и  logrotate  не запускается каждый день многократно; если не применяется опция  -f  или  -force . 

В командной строке может быть задано любое количество конфигурационных файлов. Каждый последующий конфигурационный файл может переназначить настройки заданные в предыдущих файлах; таким образом, для  logrotate  важен порядок следования файлов конфигурации.
Широко распространено применение единственного конфигурационного файла, включающего в себя другие используемые файлы настроек. О том, как это осуществить с помощью директивы  include , смотрите ниже. Если в командной строке задан каталог, то все файлы, находящиеся в этом каталоге, используются в качестве конфигурационных.

Если аргументы командной строки не заданы, то  logrotate  выведет информацию о версии программы, авторских правах и краткую справку об использовании. В случае возникновения любых ошибок при обработке журналов  logrotate  закончит работу с ненулевым значением кода возврата.
 
   
 ОПЦИИ 

 
 -d 
Активирует режим отладки, в котором включена и опция  -v  (действия программы сопровождаются выводом подробной информации). В режиме отладки файлы системных сообщений, а также файл состояния  logrotate , не подвергаются изменениям со стороны утилиты.
 
 -f, --force 
Принуждает  logrotate  произвести обращение журналов, даже если сама программа не считает это необходимым. Иногда это полезно после добавления новых записей в  logrotate  или если старый файл журнала был удалён вручную; таким образом будут созданы новые файлы и журналирование будет корректно продолжено.
 
 -m, --mail  < команда > 
Указывает  logrotate , какую команду использовать для отправки журналов по электронной почте. Эта команда может принять два аргумента: 1) тема письма и 2) получатель. Команда должна читать сообщение со стандартного входа и отсылать его электронной почтой получателю. Командой по умолчанию является  /bin/mail -s .
 
 -s, --state  < файл > 
Предписывает  logrotate  использовать альтернативный файл состояния. Это полезно, если  logrotate запускается от имени разных пользователей для разных наборов файлов системных сообщений. Файл состояния по умолчанию --  /var/lib/logrotate/status .
 
 --usage 
Выводит краткую справку об использовании.
 
 
   
 ФАЙЛ КОНФИГУРАЦИИ 

 
Всю необходимую информацию для обращения файлов журналов  logrotate  извлекает из группы конфигурационных файлов, заданных в командной строке. Каждый файл конфигурации может установить глобальные опции (вместе с тем, локальные значения опций переопределяют глобальные, а последующие определения замещают предыдущие) и определить обрабатываемый файл журнала. Простой конфигурационный файл содержит примерно следующее:
 
 
# пример файла настроек logrotate
compress

/var/log/messages {
    rotate 5
    weekly
    postrotate
                              /sbin/killall -HUP syslogd
    endscript
}

"/var/log/httpd/access.log" /var/log/httpd/error.log {
    rotate 5
    mail  my@example.com 
    size=100k
    sharedscripts
    postrotate
                              /sbin/killall -HUP httpd
    endscript
}

/var/log/news/* {
    monthly
    rotate 2
    olddir /var/log/news/old
    missingok
    postrotate
                              kill -HUP `cat /var/run/inn.pid`
    endscript
    nocompress
}
 

 

Первые несколько строк устанавливают глобальные опции; в данном примере после обращения журналы сжимаются. Стоит отметить, что вставлять комментарии в файл конфигурации можно в любой строке, первый символ которой, не являющийся пробелом -- это символ "#".
 
Следующий раздел этого конфигурационного файла определяет обращение файла системных сообщений  /var/log/messages . Журнал пройдёт через пятинедельный цикл обращений, прежде чем будет удалён. После обращения (циклического сдвига) журнала, но перед сжатием старого (сдвинутого) журнала, будет выполнена команда  /sbin/killall -HUP syslogd .
 
В следующем разделе определяются параметры обращения для  /var/log/httpd/access.log  и  /var/log/httpd/error.log .
Эти файлы будут циклически сдвинуты по достижению размера в 100 Кб, а старые файлы журналов будут извлечены из архивов и отправлены электронной почтой на адрес  my@example.com  после 5 обращений (циклических сдвигов), прежде чем будут удалены. Параметр  sharedscripts  означает, что скрипт  postrotate  будет выполнятся только один раз, а не после обработки каждого файла. Заметьте, что двойные кавычки вокруг первого имени файла в начале раздела, позволяют logrotate обращаться с именами файлов журналов, содержащими пробелы. Поддерживаются обычные правила цитирования командной оболочки shell с употреблением символов ', " и \.
 
В последнем разделе определены параметры для все файлов, находящихся в  /var/log/news . Обращение всех файлов производится ежемесячно. Это предусматривает единые указания для обращения, и в случае возникновения ошибки при обработке больше чем одного файла сжатие файлов журналов не будет произведено.
 
Далее представлена информация о директивах, которые могут быть указаны в конфигурационном файле  logrotate :
 
 
 compress 
Старые версии файлов журналов будут сжаты (по умолчанию  gzip ). См. также  nocompress . 
 
 compresscmd 
Позволяет указать команду для сжатия файлов журналов. По умолчанию  gzip .  См. также  compress .
 
 uncompresscmd 
Директива позволяет указать команду для декомпрессии файлов журналов. По умолчанию  gunzip .
 
 compressext 
Если используется сжатие, определяет расширение сжатых файлов журналов. По умолчанию определяется из настроек команды сжатия.
 
 compressoptions 
Программе сжатия может быть передана опция командной строки, если та их использует. 
Стандартно для  gzip  применяется "-9" (максимальное сжатие).
 
 copy 
Создать копию файла журнала, не изменяя оригинал вовсе.
Этот параметр может быть использован, например, для создания моментального снимка (среза) текущего файла журнала, или когда некоторой другой утилите требуется обрезать или подчистить файл. При использовании этого параметра не имеет силы директива  create , так как старый файл журнала остаётся на своём месте.
 
 copytruncate 
После создания копии, обрезать исходный файл журнала взамен перемещения старого файла журнала и создания нового. Это может найти применение в том случае, когда некоторой программе нельзя указать закрыть её журнал, и таким образом можно постоянно продолжать запись (добавление) в существующий файл журнала. Примите во внимание, что хотя между копированием файла и его обрезанием очень маленький промежуток времени, некоторая часть журналируемых данных может быть потеряна.
При использовании этого параметра, не имеет силы директива  create , так как старый файл журнала остаётся на своём месте.
 
 create  режим   владелец   группа 
Непосредственно после обращения (перед выполнением скрипта  postrotate ) создать файл журнала (с тем же именем, что и только что сдвинутый журнал).
Аргумент  режим  определяет режим доступа к файлу журнала в восьмеричном виде (единообразный с  chmod (2) ),  владелец  определяет имя пользователя, владеющего создаваемым файлом журнала, и  группа  определяет группу, к которой будет принадлежать файл журнала. Любые из этих атрибутов могут быть опущены; в этом случае вместо них для нового файла будут использованы атрибуты, имеющие те же значения, что и первоначальный файл журнала. Этот параметр может быть отключен использованием директивы  nocreate .
 
 daily 
Ежедневное обращение файлов журналов.
 
 delaycompress 
Отложить сжатие предыдущего файла журнала до следующего циклического сдвига.
Эта директива имеет силу только в комбинации с  compress .
Это может быть использовано в том случае, если некой программе нельзя указать закрыть её файл журнала, и таким образом, можно некоторое время продолжать запись в предыдущий файл журнала.
 
 extension  расширение 
Файлы журналов после обращение получат заданное  расширение . Если используется сжатие, то после указанного  расширения  программа сжатия добавит ещё одно (обычно  .gz ).
 
 ifempty 
Сдвигать файл журнала, даже если он пустой; это поведение можно изменить, применив директиву  notifempty  (по умолчанию активна  ifempty ).
 
 include  файл_или_каталог 
Читает файл, переданный в качестве аргумента, так, как будто он включен построчно в тело конфигурационного файла с того места, где указана директива  include . Если задан каталог, то содержащиеся в нём файлы будут прочитаны в алфавитном порядке, прежде чем переданы на обработку для включения. Файлы, не являющиеся обычными (такие как каталоги и именованные каналы), а также файлы, оканчивающиеся запрещёнными расширениями (определёнными параметром  tabooext ) -- будут проигнорированы. Директива  include  не может использоваться внутри определения файла журнала.
 
 mail  адрес 
По окончании цикла обращения журнал будет отправлен электронной почтой на  адрес . Если для отдельных журналов это не требуется, то можно применить директиву  nomail .
 
 mailfirst 
При использовании команды  mail , посылать только что сдвинутый файл, а не закончивший цикл обращения файл журнала.
 
 maillast 
При использовании команды  mail , посылать не только что сдвинутый файл, а закончивший цикл обращения файл журнала (это задано по умолчанию).
 
 missingok 
В случае отсутствия файла журнала перейти к обработке следующего не выдавая сообщения об ошибке. См. также  nomissingok .
 
 monthly 
 logrotate  будет сдвигать файлы журналов раз в месяц (обычно первого числа каждого месяца).
 
 nocompress 
Не сжимать с помощью  gzip  старые версии файлов журналов. См. также  compress . 
 
 nocopy 
Не копировать исходный файл журнала и оставить его в штатном местоположении (это переопределяет параметр  copy ).
 
 nocopytruncate 
После создания копии, не обрезать исходный файл журнала в его штатном местоположении (это переопределяет параметр  copytruncate ).
 
 nocreate 
Не создавать новый файл журнала (это переопределяет директиву  create ).
 
 nodelaycompress 
Не откладывать сжатие сдвинутого файла журнала до следующего цикла обращения (это переопределяет директиву  delaycompress ).
 
 nomail 
Не отправлять старые файлы журналов почтой.
 
 nomissingok 
Если файл журнала не существует, выдать ошибку. Это установлено по умолчанию.
 
 noolddir 
После обращения, журналы остаются в том же каталоге, где расположены текущие журналы (это переопределяет директиву  olddir ).
 
 nosharedscripts 
Выполнять скрипты  prerotate  и  postrotate  для каждого обработанного журнала (это поведение задано по умолчанию, его можно переопределить параметром  sharedscripts ).
 
 notifempty 
Не сдвигать журнал, если он пуст (это переопределяет параметр  ifempty ).
 
 olddir  directory 
Переместить сдвинутые журналы в  каталог . Заданный  каталог  должен размещаться на том же физическом устройстве, что и обращаемый файл журнала. При использовании этого параметра все старые версии журнала будут попадать в  каталог . Этот параметр может быть переопределён параметром  noolddir .
 
 postrotate / endscript 
Строки с директивами, находящиеся между  postrotate  и  endscript  (которые сами должны располагаться на отдельных строках), будут выполнены после обращения журнала. Эти директивы могут находиться только внутри определения файла журнала.
См. также  prerotate .
 
 prerotate / endscript 
Строки с директивами, находящиеся между  prerotate  и  endscript  (которые сами должны располагаться на отдельных строках), будут выполнены перед обращением журнала и только в случае если журнал действительно будет сдвинут. Эти директивы могут находиться только внутри определения файла журнала. См. также  postrotate .
 
 rotate  раз 
Файл журнала будет сдвинут заданное количество  раз , прежде чем будет удалён или послан по электронной почте на адрес, указанный в директиве  mail . Если указано 0  раз , то старый журнал вместо обращения будет удалён.
 
 size  размер 
Файлы журналов будут сдвинуты, когда станут больше указанного  размера  в байтах. Если  размер  оканчивается символом  M , то размер интерпретируется в мегабайтах. Если использовать  k , то можно задать размер в килобайтах. Таким образом, директивы  size 100 ,  size 100k , и  size 100M  являются верными.
 
 sharedscripts 
Обычно скрипты  prescript  и  postscript  выполняются для каждого обрабатываемого журнала; это значит, что один и то же скрипт может выполняться несколько раз для одной конфигурационной записи, которая охватывает множество файлов (как в примере /var/log/news/*). Если параметр  sharedscript  указан, то скрипты будут выполнены только один раз, вне зависимости от количества журналов, подходящих под заданный шаблон. Однако если ни один из журналов, соответствующих шаблону, не требует обращения, то скрипты не будут выполнены вовсе. Этот параметр переопределяет директиву  nosharedscripts .
 
 start  число 
Заданное число -- то, с которого начнётся счёт обращений. Например, если указать 0, после первого обращения (сдвига оригинального файла журнала) журналам будет присвоено расширение .0. Если указать 9, файлы журналов будут создаваться с расширением .9, пропустив 0-8.  Файлы по-прежнему будут обращаться (сдвигаться) столько раз, сколько указано в директиве  count .
 
 tabooext  [+]  список_расширений 
Изменяет текущий список запрещённых расширений (см.  include ). Если списку расширений предшествует знак +, то этот список прибавится к текущему, иначе заместит его. При первоначальном запуске список содержит следующие расширения: .rpmorig, .rpmsave, ,v, .swp, .rpmnew и ~.
 
 weekly 
Файлы журналов будут сдвинуты, если текущий день недели меньше дня недели, в который произошло последнее обращение журнала, или если с тех пор прошло больше недели. Это почти то же самое, что и обращение журналов по понедельникам, но работает лучше, если  logrotate  не запускается каждую ночь.
 
 
   
 ФАЙЛЫ 


 
 /var/lib/logrotate/status 
Файл состояния по умолчанию.
 /etc/logrotate.conf 
Параметры конфигурации.
 
 
   
 СМ. ТАКЖЕ 

 gzip (1)

 
   
 АВТОРЫ 

 Erik Troan < ewt@redhat.com >
Preston Brown < pbrown@redhat.com >
 

   
 ПЕРЕВОД 

Василий Коломеец (Vasily Kolomeets) < boojuman@gmail.com > 15.11.2005
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ОПЦИИ 
 ФАЙЛ КОНФИГУРАЦИИ 
 ФАЙЛЫ 
 СМ. ТАКЖЕ 
 АВТОРЫ 
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