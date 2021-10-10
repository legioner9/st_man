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
 
 
 
 qfile (1) >>  qfile  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня ) 
    qfile ¶ 


	 НАЗВАНИЕ ¶ 


qfile - вывод всех пакетов, которым принадлежит файл 

	 СИНТАКСИС ¶ 


	 qfile   <файл> 


	 ОПИСАНИЕ ¶ 


	 Доступные опции:  -[ef:m:oRx:vqChV] 


	 -e ,  --exact 


	 * Искать точное соответствие 


	 -f ,  --from  <аргумент> 


	  * Брать аргументы из файла в <аргументе> ("-" для стандартного ввода) 


	 -m ,  --max-args  <аргумент> 


	  * Обрабатывать файлы группами в количестве, заданном <аргументом> (значение по умолчанию - 5000) 


	 -o ,  --orphans 


	 * Вывести список файлов 


	 -R ,  --root-prefix 


	 * Считать, что префикс $ROOT уже добавлен к аргументам 


	 -x ,  --exclude  <аргумент> 


	  * Не рассматривать пакет в <аргументе> 


	 -v ,  --verbose 


	 * Предлагать подробный вывод 


	 -q ,  --quiet 


	 * Предлагать компактный вывод - в частности, не выводить предупреждения 


	 -C ,  --nocolor 


	 * Не использовать цветной вывод 


	 -h ,  --help 


	 * Вывести эту справку и выйти 


	 -V ,  --version 


	 * Вывести версию программы и выйти 


	 $Id: qfile.1,v 1.24 2007/01/13 19:17:40 Написано для Gentoo solar и vapier, gentoo.org 


	 НАХОЖДЕНИЕ ПАКЕТОВ - ВЛАДЕЛЬЦЕВ ФАЙЛОВ ¶ 


	 Это поведение утилиты  qfile  по умолчанию. Будет выведен перечень пакетов, которым принадлежат запрошенные файлы (вместо файлов могут быть каталоги, символические ссылки и любые другие элементы, устанавливаемые Portage). Для запроса можно использовать как путь, так и просто имя файла. Стандартный вывод утилиты включает названия пакетов и полные пути доступа к файлам, удовлетворяющим запросу. Если вы используете опцию  --exact , будут отображаться также версии пакетов. Если же выставить опцию  --quiet , будут выведены только названия пакетов, без путей доступа к файлам. Аналогично опции  --exact  работает  --verbose , но выводит еще больше информации. Когда все пакеты, которым принадлежат файлы, указанные в аргументе, найдены,  qfile  возвращает  0 . 


	 Найти пакет(ы), которому/-ым принадлежит "/bin/bash":      $ qfile -q /bin/bash 
    app-shells/bash 
 


	 Найти пакет(ы), которому/-ым принадлежит любой файл с именем "bash", и показать пути доступа к нему:      $ qfile bash 
    app-shells/bash (/bin/bash) 
    app-shells/bash (/etc/bash) 
 


	 Найти пакет(ы), которому/-ым принадлежит любой файл с именем "bash", в текущем каталоге. Кроме того, будет выведен точный номер версии:      $ cd /bin 
    $ qfile -e ./bash 
    app-shells/bash-3.1_p17 (/bin/bash) 
 


	 Найти пакет(ы), которому/-ым принадлежат библиотеки, требуемые бинарным Bash:      $ qfile $(scanelf -nq -F%n#F /bin/bash | tr , '\n') 
    sys-libs/ncurses (/lib/libncurses.so.5) 
    sys-libs/glibc (/lib/libdl.so.2) 
    sys-libs/glibc (/lib/libc.so.6) 
 


	 ОБНАРУЖЕНИЕ НЕИСПОЛЬЗУЕМЫХ ФАЙЛОВ ¶ 


	 qfile  умеет также находить файлы, не принадлежащие ни одному пакету; для этого необходимо использовать опцию  --orphans . Фактически при этом утилита осуществляет операцию, обратную своему обычному поведению: выводит список элементов, для которых не найдено соответствий в базе данных установленных пакетов. Опция  --exact  в данном режиме не работает, но вы можете использовать  --verbose , если вы хотите видеть дополнительную информацию. Если же вы выставите опцию  --quiet , вывод утилиты будет полностью отключен: команда отработает молча и вернет  0  только в том случае, если неиспользуемых файлов среди запрошенных вами нет. 


	 Найти неиспользуемые файлы библиотек:      $ qfile -o $(find /lib /usr/lib -name "*.la") 
    /usr/lib/libGL.la 
 


	 Найти библиотеки, которые нужны для работы бинарному пакету "foo", но при этом не были установлены ни одним пакетом:      $ qfile -o $(scanelf -nq -F%n#F /путь/к/foo | tr , '\n') 
    libinstalledmanually.so.2 
 


	 ОБРАБОТКА ПЕРЕМЕННОЙ ROOT ¶ 


	 Установив переменную окружения  ROOT , вы можете указать  qfile , в какой системе работать. В приведенном примере осуществляется поиск пакета-владельца файла "/bin/sh" - сначала в вашей основной системе, а затем в системе, смонтированной в каталог "/mnt":      $ qfile -q /bin/sh 
    app-shells/bash 
    $ ROOT=/mnt qfile -q /bin/sh 
    sys-apps/busybox 
 


	 Обратите внимание, что в обеих командах аргументов запроса является "/bin/sh": по умолчанию  qfile  ищет по путям доступа к файлам, прописанным в базе данных пакетов адресуемой системы, и эти пути не включают  $ROOT . Если же вы хотите искать по действительным путям доступа к файлам (включая точку монтирования), используйте опцию  --root-prefix  ( -R ):      $ ROOT=/mnt qfile -Rq /mnt/bin/sh 
    sys-apps/busybox 
 


	 Кроме того, опция  -R  отличается от настроек по умолчанию выводом путей доступа. В предыдущем примере префикс  $ROOT  не используется, а в примере ниже - используется:      $ ROOT=/mnt qfile sh 
    sys-apps/busybox (/bin/sh) 
    $ ROOT=/mnt qfile -R sh 
    sys-apps/busybox (/mnt/bin/sh) 
 


	 Разумеется, сказанное справедливо и для поиска неиспользуемых файлов:      $ ROOT=/mnt qfile -o $(ls /mnt/bin/ | sed 's:^/mnt::') 
    /bin/dostuff.sh 
    $ ROOT=/mnt qfile -Ro /mnt/bin/* 
    /mnt/bin/dostuff.sh 
 


	 СЧИТЫВАНИЕ АРГУМЕНТОВ ИЗ ФАЙЛА (СТАНДАРТНЫЙ ВВОД) ¶ 


	 Пытаясь запустить  qfile  с большим количеством аргументов, вы можете столкнуться со следующей ошибкой интерпретатора:      $ qfile -o $(find /usr/lib) 
    bash: ./qfile: Argument list too long 
 


	 Во избежание этого следует использовать опцию  --from  ( -f ), которая позволяет считывать список аргументов из файла:      $ find /usr/lib > ~/usr-lib.list 
    $ qfile -o -f ~/usr-lib.list 
    /usr/lib/libMagick-5.5.7-Q16.so.0.0.0 
    /usr/lib/libGL.so 
    ... 
 


	 В каждой строке списка аргументов должен располагаться только один файл, без какого либо мусора (без пробелов в начале или в конце строки, без пропусков строки и т.п.). Стандартный формат вывода  find , как правило, вполне удобен. 


	 Но аргументы могут быть перенаправлены и со стандартного ввода, с помощью псевдо-имени файла " - "; это удобно при использовании конвейера:      $ find /usr/lib | qfile -o -f - 
    /usr/lib/libMagick-5.5.7-Q16.so.0.0.0 
    /usr/lib/libGL.so 
    ... 
 


	 Ниже приведен пример сценария, которые ищет некоторые файлы, которые могут оказаться неиспользуемыми конфигурационными файлами, не удаленными Portage при удалении или обновлении пакетов:      #!/bin/bash 
    SEARCH_PATHS="$(portageq envvar CONFIG_PROTECT)" 
    SEARCH_MASK="$(portageq envvar CONFIG_PROTECT_MASK) 
        /etc/runlevels /etc/portage 
        /etc/ssl/certs /etc/ssh 
        /etc/bash_completion.d /etc/cups" 
    for path in ${SEARCH_MASK} ; do 
        EXCLUDE="${EXCLUDE} -not -path ${path}/*" 
    done 
    set -f 
    find ${SEARCH_PATHS} ${EXCLUDE} | qfile -o -f - 
 


	 ВНИМАНИЕ:  приведенный сценарий не следует рассматривать как рабочий инструмент - это не более чем набросок. Не удаляйте вслепую файлы, которые будут выведены при запуске этого сценария! 


	 Если аргументы считываются из файла или перенаправляются со стандартного ввода, для улучшения производительности  qfile  обрабатывает данные блоками по 5000 элементов (будет осуществлен поиск пакетов-владельцев первых 5000 файлов, затем 5000 следующих и т.д.). В большинстве случаев это условное значение вполне удобно, но при желании вы можете изменить его с помощью опции  --max-args  ( -m ). Увеличение значения по умолчанию увеличит объем используемой оперативной памяти, но может ускорить обработку запросов с очень большим количеством аргументов; тем не менее всякое необдуманное изменение может самым негативным образом сказаться на производительности. Не вдаваясь в детали, можно сказать, что вам, скорее всего, не потребуется изменять стандартное значение. 


	 ПОИСК КОНФЛИКТУЮЩИХ ФАЙЛОВ ¶ 


	 Последней опцией утилиты  qfile  является  --exclude  ( -x ). Она позволяет пропустить при поиске пакетов-владельцев файлов один определенный пакет. Эта опция принимает один аргумент: это может быть название пакета (например,  bash  или  app-shells/bash ), название пакета с указанием версии (например,  bash-3.2_p9-r1  или  app-shells/bash-3.2_p9-r1 ), название пакета с указанием слота ( bash:0  или  app-shells/bash:0 ). Опция полезна для выявления конфликтов между пакетами (в частности, путем сопоставления содержимого одного пакета с другими). 


	 Так, приведенный ниже сценарий предназначен для поиска конфликтов между любыми установленными пакетами. Имейте в виду, что это займет некоторое время:      #!/bin/bash 
    cd $(portageq vdb_path) 
    for pkg in *-*/*-* ; do 
        [[ -f ${pkg}/CONTENTS ]] || continue 
        collisions=$(sed -n 
                '/^obj\|^sym/s:^... \([^ ]\+\).*:\1:p' 
                ${pkg}/CONTENTS 
            | qfile -e -x ${pkg} -f -) 
        [[ -n ${collisions} ]] 
            && echo ">>> ${pkg}:" 
            && echo "${collisions}" 
    done 
 


	 А этот сценарий может быть использован для проверки, не имеет ли бинарный пакет (.tbz2-архив) конфликтов с каким-либо из установленных пакетов, за исключением того, который он может заменить (с тем же именем и слотом), если таковой имеется:  #!/bin/bash 
pkgver=$(basename "${1}") 
pkgver=${pkgver%%.tbz2} 
pn=$(qatom ${pkgver} | cut -d\  -f2) 
tmpdir=$(mktemp -t -d) || exit 1 
tarbz2=${tmpdir}/${pkgver}.tar.bz2 
xpak=${tmpdir}/${pkgver}.xpak 
qtbz2 -s "${1}" "${tarbz2}" "${xpak}" 
categ=$(qxpak -O -x "${xpak}" CATEGORY) 
slot=$(qxpak -O -x "${xpak}" SLOT) 
tar tjf "${tarbz2}" 
    | sed -e 's:^\./:/:' -e '\:/$:d' 
    | qfile -e -f - -x ${categ}/${pn}:${slot} 
rm -rf "${tmpdir}" 
 


	 РАЗРАБОТАНО ПРИ УЧАСТИИ ¶ 


	 
	 TGL  degrenier@easyconnect.fr 
	 


	 ПЕРЕВОД ¶ 


	 
	 Елена Гаврилова < e.vl.gavrilova@yandex.ru > 
	 


	     


	 Январь 2007 







 
 
 
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