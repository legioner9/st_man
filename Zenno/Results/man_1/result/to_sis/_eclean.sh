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
 
 
 
 eclean (1) >>  eclean  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   eclean  (5)   ( Русские man: Форматы файлов ) 
    eclean ¶ 


	 НАЗВАНИЕ ¶ 


eclean - утилита для удаления ненужных файлов исходного кода и бинарных пакетов Gentoo 

	 СИНТАКСИС ¶ 


	 eclean  [ глобальные опции ] ... < действия > [ опции действий ] ... 


	 eclean-dist  [ глобальные опции, опции файлов исходного кода ] ... 


	 eclean-pkg  [ глобальные опции, опции пакетов ] ... 


	 eclean(-dist,-pkg)  [ --help, --version ] 


	 ОПИСАНИЕ ¶ 


	 eclean  - это небольшая утилита, предназначенная для удаления устаревших исходных кодов и бинарных пакетов portage. При регулярном использовании она предотвращает разрастание каталогов DISTDIR и PKGDIR, хотя в отдельных случаях сохранение данных может быть полезно. 


	 По умолчанию eclean препятствует удалению всех файлов исходного кода и бинарных пакетов, соответствующих некоторым ебилдам, доступным в дереве портежей. Это наиболее безопасный режим работы, поскольку он обеспечивает сохранение тех данных, которые еще могут быть полезны - например, для того, чтобы откатиться на более раннюю версию пакета без повторной загрузки исходного кода или чтобы переустановить пакет, который вы ошибочно удалили, без его перекомпиляции. Но очевидно и то, что в этом случае размер каталогов DISTDIR и PKGDIR будет довольно большим (хотя они не будут увеличиваться бесконечно). Кроме того, в этом режиме утилита медленно работает с файлами исходного кода, так как требует доступа ко всему дереву портежей. 


Если вы используете опцию --destructive, eclean будет сохранять лишь те файлы, которые соответствуют тому или иному пакету, устанавливаемому в данный момент (исходя из точной версии пакета). Эта опция позволяет высвободить гораздо большее пространство; при этом сохраняются файлы исходных кодов для несущественных ревизий и бинарные файлы для переустановки поврежденных пакетов. Но для менее распространенных операций - например, для отката версии или переустановки удаленного пакета - данные будут удалены. Это самый быстрый режим (что очень заметно при обработке файлов исходного кода). Он используется многими сценариями очистки - в качестве примера можно привести yacleaner (по крайней мере в версии 0.3).

Компромиссным вариантом можно считать использование опции --package-names в связке с  --destructive - это предотвратит удаление файлов, соответствующих всем существующим версиям установленных пакетов. В результате при необходимости можно будет легко откатиться на более раннюю версию, не пересобирая пакет и не загружая данные заново, но удалению пакетов это не помешает.

	 В дополнение к перечисленным основным режимам доступны несколько других опций, позволяющих объявлять особые правила защиты файлов от удаления: 


	 o 


	 опция --time-limit удобна для защиты от удаления файлов, которые были созданы ранее заданного времени. 


	 o 


	 опция --size-limit (только для файлов исходного кода) удобна для защиты от удаления файлов, размер которых превышает заданный. 


	 o 


	 опция --fetch-restricted (только для файлов исходного кода) удобна для защиты от удаления файлов, загруженных вручную. Однако ее использование влечет за собой замедление работы утилиты (по причине, описанной выше: считывание всех данных из дерева портежей). 


	 o 


	 Наконец, вы можете включить отдельные пакеты или категории пакетов в список исключаемых (см. ниже раздел  ИСКЛЮЧАЕМЫЕ ФАЙЛЫ ). 


	 ПАРАМЕТРЫ ¶ 


	  Глобальные опции ¶ 


	 -C, --nocolor Отключить цветной вывод 


	 -d, --destructive Сохранить только минимум данных для переустановки 


	 -e, --exclude-file=<путь> Назначить путь доступа к файлу исключений 


	 <путь>   Абсолютный путь к файлу исключений, который вы хотите использовать. Если эта опция не используется, путями по умолчанию будут соответственно /etc/eclean/{packages,distfiles}.exclude (если они существуют). Используйте /dev/null, если этот данный файл у вас имеет стандартное расположение, но вы хотите временно его игнорировать. 


	 -i, --interactive Требовать подтверждения, прежде чем удалить 


	 -n, --package-names 
Защищать от удаления все версии (только для опции --destructive) 


	 -p, --pretend Не выполнять действий над данными, а лишь показывать, что именно будет удалено 


	 -q, --quiet Использовать компактный вывод: сообщать только об ошибках 


	 -t, --time-limit=<время> Не удалять файлы, которые изменялись в указанное <время> 


	 <время>  - это определенный промежуток времени: 1y обозначает один год, 2w - две недели, и так далее.  Допустимые единицы измерения: y (год), m (месяц), w (неделя), d (день), h (час). 


	 -h, --help Вывести справку по утилите 


	 -v, --verbose Использовать подробный вывод служебных сообщений в ходе работы утилиты 


	 -V, --version Вывести информацию о версии 


	  Действия ¶ 


	 distfiles 


	 Удалить файлы из каталога /usr/portage/distfiles (или по другому пути, определенному в переменной DISTDIR в вашем файле /etc/make.conf). Это потребуется практически любому пользователю Gentoo, ведь каталог DISTDIR может достигать весьма больших размеров. eclean-dist  представляет собой алиас eclean с действием distfiles, для упрощения вызова из командной строки. 


	 packages 


	 Удалить файлы из каталога /usr/portage/packages (или по другому пути, определенному в переменной PKGDIR в вашем файле /etc/make.conf). Это имеет смысл, в частности, если у вас выставлены флаги FEATURES buildpkg или buildsyspkg. eclean-pkg  представляет собой алиас eclean с действием packages, для упрощения вызова из командной строки. 


	  Опции для действия distfiles ¶ 


	 -f, --fetch-restricted 
предотвращать удаление загруженных вручную файлов (только с опцией --destructive) 


	 -s, --size-limit=<размер> не удалять файлы исходного кода, размер которых превышает заданный <размер> 


	 <размер> - это размер файла: запись 10M означает 10 мегабайт, 200K - 200 килобайт, и так далее.  Допустимые единицы измерения - G (гигабайт), M (мегабайт), K (килобайт) и B (байт). 


	 Опции для действия packages ¶ 


	 Отдельных опция для данного действия нет. 


	 ИСКЛЮЧАЕМЫЕ ФАЙЛЫ ¶ 


	 Исключаемые файлы представляют собой перечни отдельных пакетов или категорий пакетов, которые вы хотите защитить от удаления. Это имеет смысл, если вам необходимо, например, сохранить собранные системные пакеты. При этом используется следующий синтаксис: 


	 o 


	 Пустые строки и строки, начинающиеся с символа "#" (строки комментариев) игнорируются. 


	 o 


	 Допускается только одна запись в строке. 


	 o 


	 Если строка содержит имя категории, например, sys-apps, ни один пакет из данной категории не будет удален. Запись sys-apps/* также допускается, поскольку она более наглядна, но это НЕ ОЗНАЧАЕТ, что подстановочные символы поддерживаются в каких-либо других целях. 


	 o 


	 Если строка содержит название пакета (наприме, app-shells/bash), данный пакет удаляться не будет. Указание атомов с версией, например, >=app-shells/bash-3, НЕ ПОДДЕРЖИВАЕТСЯ. Кроме того, обязательно указывать полное имя пакета (с категорией). 


	 o 


	 Если строка содержит имя пакета с восклицательным знаком впереди (например, !sys-apps/portage), данный пакет будет исключен из числа защищенных от удаления. Это имеет смысл только в том случае, если от удаления защищена категория, к которой он относится. 


	 o 


	 При защите файлов исходного кода, строка может содержать и имя файла. Это имеет смысл в том случае, если у вас имеются файлы, не фигурирующие в ебилдах - например, файлы локализации OpenOffice.org i18n (скажем, helpcontent_33_unix.tgz). Другим примером ситуации, в которой следует использовать такой синтаксис, может служить предотвращение удаления данных, не имеющих ебилда в дереве портежей или в любом из подключенных оверлеев. 


	 o 


	 eclean также проинформирует вас об устаревших пакетах, установленных в вашей системе, как если бы она располагала данными о соответствующем им файле/файлах. Если вы хотите защитить от удаления все установленные источники исходного кода, сначала запустите eclean в режиме симуляции. Затем проверьте, для каких источников данных утилите не удалось найти файл/файлы и добавить соответствующие записи в файл distfiles.exclude. Только после этого можно снова вызвать eclean. 


	 По умолчанию, для действия "packages" (или "distfiles") будет использоваться путь /etc/eclean/packages.exclude, если он существует (или, соответственно, distfiles.exclude). Это поведение можно переопределить, используя опцию --exclude-file. 


	 ПРИМЕРЫ ¶ 


	 Удалить только исходные коды; по каждому удаляемому архиву будет выдан запрос на подтверждение удаления: 


	 # eclean -i distfiles 


	 Проверить, какие бинарные пакеты можно удалить; вывод результатов - без цвета: 


	 # eclean -Cp packages 


	 Удалить бинарные файлы удаленных пакетов, но сохранить все версии установленных: 


	 # eclean-pkg -d -n 


	 Удалить все исходные коды, за исключением файлов установленных пакетов (точное соответствие версии), которые были созданы менее одного месяца назад, размером 50Mб или имеют ограничения по загрузке: 


	 # eclean-dist -d -t1m -s50M -f 


	 По расписанию crontab каждое воскресенье в 1.00 автоматически удалять ненужные пакеты в наиболее безопасном режиме, а затем - исходные коды в режиме destructive, но не удалять файлы новее недели: 


	 0 1 * * sun \ \ eclean -C -q packages ; eclean -C -q -d -t1w distfiles 


	 ПРИМЕЧАНИЕ ¶ 


	 При запуске и поиске исходных кодов для удаления для удаления eclean будет выдавать сообщения обо всех устаревших пакетах, установленных в вашей системе. Соответствующие источники данных могут быть не защищены от удаления, если переменная SRC_URI не записана в базе данных установленного пакета. В последних версиях portage/pkgcore переменная SRC_URI не записывается. 


	 ОШИБКИ ¶ 


	 Решение о том, удалять или нет исходные коды, принимается на основе переменных SRC_URI ебилдов. Это означает, что, когда ебилд обращается к файлам, не указанным в его переменной SRC_URI, eclean, как правило, удаляет такие файлы. Это ошибка ебилда; сообщайте о таких ошибках на  http://bugs.gentoo.org . 
В безопасном режиме (используется по умолчанию, с отключенной опцией --destructive) утилита может работать крайне медленно, и это можно поправить только в обход API портежей. 


	 СМ. ТАКЖЕ ¶ 


	 Тред форума Gentoo, с которого началась история eclean: 


	 http://forums.gentoo.org/viewtopic.php?t=3011 


	 Заявка на багтрекере с просьбой включить eclean в gentoolkit: 


	 http://bugs.gentoo.org/show_bug.cgi?id=33877 


	 АВТОРЫ ¶ 


	 
	 Thomas de Grenier de Latour (tgl) < degrenier@easyconnect.fr > Модули были переписаны:  
		 Brian Dolbec (dol-sen) < brian.dolbec@gmail.com > 
	 


	 ПЕРЕВОД ¶ 


	 
	 Елена Гаврилова < e.vl.gavrilova@yandex.ru > 
	 


	     


	 0.4.1 







 
 
 
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