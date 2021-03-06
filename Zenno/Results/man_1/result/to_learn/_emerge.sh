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
 
 
 
 emerge (1) >>  emerge  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   emerge  (8)   ( Русские man: Команды системного администрирования ) 
 
 
 Portage 2.0.48 
 Gentoo Linux 
 emerge(1) 
 
 

 ИМЯ 
 emerge  - интерфейс командной строки к системе портежей (Portage system) 

 СИНТАКСИС 

 
emerge [ опции ] [ действие ] [ ebuild  |  файл_tbz2  |  класс  |  зависимость ] ... 
emerge [ опции ] [ действие ]  файл_ebuild 
emerge sync | rsync 
emerge --help -h [system | config | sync] 
emerge --version
 

 ОПИСАНИЕ 

 emerge  - это полный интерфейс командной строки к системе портежей.       
Он используется, в основном, для установки пакетов, причем,  emerge 
может автоматически обрабатывать любые зависимости, которые заданы в 
требуемом пакете. Утилита  emerge  может также обновлять дерево
портежей, давая доступ к новым и обновленным пакетам. Утилита  emerge 
также обеспечивает беспроблемное обновление версий установленных пакетов.
Она позволяет работать с пакетами как в виде исходных кодов, так и в двоичном
виде, а аткже может использоваться для создания двоичных пакетов с целью
дальнейшего распространения. 

 Пакеты EBUILD, файлы TBZ2, классы и зависимости 

 Основное назначение утилиты  emerge  - установка пакетов.
Устанавливаемые пакеты можно задать одним из четырех основных способов:
как пакет ebuild, как файл tbz2, как класс или как зависимость. 

 
 ebuild 
 ebuild  необходимо задавать, как минимум, в виде допустимого имени
каталога пакетов портежей (valid Portage package  directory name) без
указания версии или категории, например,  portage  или  python .  Можно добавлять также категорию и номер версии, например, 
 sys-apps/portage  или  python-2.2.1-r2 . Утилита  emerge 
игнорирует завершающую косую черту, так что, можно использовать
автоматическое завершение имени файла. В качестве значения  ebuild 
можно также задавать реальное имя файла, например,
 /usr/portage/app-admin/python/python-2.2.1-r2.ebuild .       
 
 файл_tbz2 
 Файл_tbz2  должен быть корректным файлом  .tbz2 , созданным с
помощью команды ebuild   <пакет>-<версия>.ebuild пакет 
или  emerge --buildpkg [категория/]<пакет> , или 
 quickpkg /var/db/pkg/<категория>/<пакет> .       
 
 класс 
Классы пакетов - удобный способ обозначить большую группу пакетов.
В настоящее время поддерживается два класса:  system  и
 world . Класс  system  содержит набор пакетов, считающихся необходимыми 
для правильной работы системы. Класс  world  содержит
все пакеты в системе плюс все пакеты, перечисленные в файле
 /var/cache/edb/world . (Подробнее см. далее в разделе
 ФАЙЛЫ .) Учтите, что эти команды
обычно используются вместе с  --update .
 
 зависимость 
Зависимость описывает ограничения на пакет, который необходимо установить.
Например,  >=dev-lang/python-2.2.1-r2  соответствует последней
доступной версии языка Python, большей или равной  2.2.1-r2 . Аналогично,
 <dev-lang/python-2.0  соответствует последней доступной версии
языка Python до 2.0. Учтите, что во многих командных интерпретаторах
потребуется маскировать символы вроде ' < ' и ' = ';
чтобы избежать проблем с маскировкой, берите зависимость в
одиночные или двойные кавычки.
 
 

 ДЕЙСТВИЯ 
 
 Нет действия 
Если действие не указано, в систему добавляются указанные пакеты и 
удовлетворяются все их зависимости. В качестве аргументов можно указывать
пакеты ebuild, файлы tbz2, классы или зависимости. Учтите, что для установки
файла tbz2 необходимо указать опцию  --usepkg . 
Пакеты добавляются в конце файла  world , так что они учитываются 
при последующих обновлениях.       
 
 clean  ( -c ) 
Очищает систему, удаляя пакеты, не влияющие на функциональность системы.
В качестве аргументов можно указывать пакеты ebuild, классы или зависимости.
Например,  emerge clean binutils  удаляет старые версии  binutils ;
 emerge clean net-www/mozilla-0.9.9-r2  удаляет указанную версию
Mozilla. Использовать эту команду, в общем случае, безопасно. Учтите, что пакеты
в единственном экземпляре (unslotted packages) команда  clean  не
удаляет.       
 
 depclean 
Выявляет все пакеты, установленные в системе без видимой причины. Утилита
 emerge  генерирует список пакетов, которые должны быть установлены,
на основе списка системных пакетов и файла  world . Затем она
сравнивает этот список со списком фактически установленных пакетов;
найденные различия выдаются как ненужные пакеты, которые предлагается
удалить. 
ПРЕДУПРЕЖДЕНИЕ: Удаление некоторых пакетов может привести к тому,
что пакеты, связанные с удаленными, перестанут работать и начнут сообщать 
о недостающих библиотеках. Снова установите с помощью  emerge  пакет, 
который перестал работать, и эта проблема будет решена. Учтите, что
изменения флагов  USE  могут существенно повлиять на результат,
выдаваемый при выполнении действия  depclean .
 
 help  ( -h ) 
Выводит (в стандартный выходной поток) справочную информацию по утилите  emerge . Добавление одного из
прочих перечисленных дополнительных аргументов приводит к выводу
более детальной справочной информации по соответствующему действию. Встроенная
справочная документация утилиты  emerge  обновляется чаще, чем эта страница
справочного руководства; обратитесь к ней при возникновении проблем, которые
не поможет решить эта страница справочного руководства.
 
 info 
Выдает информацию для включения в отчеты об ошибках. Эта информация помогает разработчикам
при решении проблем, о которых вы сообщаете. Включайте, пожалуйста, эту информацию
при посылке отчета об ошибке. Расширенную информацию можно получить при указании
опции  --verbose .       
 
 inject  ( -i ) 
При указании этого действия для пакета вставляется "заглушка" так, что система потрежей
считает его установленным. Это удобно если необходимо, например, установить
двоичную версию XFree86 для нетривиальной видеокарты или просто добавить собственные 
пакеты. Необходимо указать категорию и конкретную версию вставляемого пакета.
Например,  emerge inject sys-kernel/gentoo-sources-2.4.19 .
 
 prune  ( -P ) 
ПРЕДУПРЕЖДЕНИЕ: Это действие может удалить важные пакеты! Удаляются все, кроме
последних, версий соответствующих пакетов. Если для пакета есть несколько
слотов, остается только последняя версия в каждом слоте. При этом не происходит
проверки зависимостей, поэтому могут быть удалены пакеты, необходимые для
нормальной работы системы. Используйте действие  clean  вместо  prune ,
если не уверены абсолютно в том, что делаете. В качестве аргуменгтов можно указывать
пакеты ebuild, классы или зависимости -- примеры см. в описании действия
 clean .       
 
 regen   
Проверяет и обновляет кеш зависимостей для всех пакетов 
ebuild в дереве портежей. Кеш используется для ускорения поиска и построения
деревьев зависимостей. Эта команда не рекомендуется для пользователей  rsync ,
поскольку  rsync  обновляет кеш, используя кеши на сервере. Если вы не знаете,
чем отличается "пользователь  rsync " от других пользователей, значит, вы -
"пользователь  rsync " :). Пользователи  rsync  должны просто
выполнить команду  emerge sync  для регенерации кеша.       
 
 search  ( -s ) 
Ищет соответствия переданной строке в дереве портежей. Искомая строка представляет
собой регулярное выражение. Например, команда  emerge search "^kde" 
ищет любой пакет, имя которого начинается с " kde ";
команда  emerge  search  "gcc$"  ищет любой пакет, имя которого заканчивается на
" gcc "; команда  emerge search "office"  ищет любой пакет, имя которого
содержит слово " office ". Если поиск необходимо выполнять и в описании пакета,
используйте опцию  --searchdesc .       
 
 sync    
Инициирует обновление дерева портежей с одного из зеркал  rsync.gentoo.org . Учтите,
что любые изменения, выполненные в дереве портежей, при этом будут стерты. За исключением
специальных случаев, для обновления используется  rsync . Чтобы узнать, как избежать
удаления изменения, см. описание  PORTDIR_OVERLAY  на странице справочного руководства 
 make.conf(5) .       
 
 unmerge  ( -C ) 
 ПРЕДУПРЕЖДЕНИЕ : При этом могут быть удалены важные пакеты! Удаляются все 
соответствующие пакеты. Проверка зависимостей не выполняется, поэтому могут быть удалены
пакеты, необходимые для нормальной работы системы. В качестве аргументов можно задавать
пакеты ebuild, классы или зависимости - примеры см. выше в 
описании  clean . 
 

 ОПЦИИ 
 
 --buildpkg  ( -b ) 
Говорит  emerge  о необходимости построить двоичные пакеты для всех 
соответствующих пакетов ebuild, помимо их обычного добавления в дерево. Полезно для тех,
кто занимается поддержкой пакетов или при администрировании нескольких систем Gentoo  Linux
(строим один раз, устанавливаем пакеты  tbz2  с помощью   emerge  везде). Пакет
будет создан в каталоге  ${PKGDIR}/All . В качестве альтернативы для уже включенных
в дерево пакетов можно использовать опцию  quickpkg , которая
создает пакеты  tbz2  из "живой" файловой системы.       
 
 --buildpkgonly  ( -B ) 
Создает двоичные пакеты для всех обработанных пакетов  ebuild , не включая их фактически
в дерево пакетов. Проблема только в том, что все зависимости времени построения уже
должны быть включены в систему с помощью  emerge .
 
 --changelog  ( -l ) 
Используйте эту опцию вместе с действием  --pretend . В результате,
будут показаны записи  ChangeLog  для всех пакетов, которые будут обновляться.       
 
 --columns 
При использовании совместно с  --pretend  выдает имена пакетов,
новую и старую версию выравненными по столбцам для простоты вырезания и копирования.
 
 --debug  ( -d ) 
Требует от  emerge  работать в отладочном режиме. В этом режиме среда построения  bash 
будет работать с опцией  -x , выдавая детальную отладочную информацию  в стандартных выходной
поток. Опция  --debug  отлично подходит для поиска синтаксических ошибок  bash .
 
 --deep  ( -D ) 
При использовании совместно с опцией  --update , этот флаг требует
от  emerge  учитывать все дерево зависимостей пакетов, а не просто проверять непосредственные
зависимости пакетов. Это, например, позволяет учесть обновления в библиотеках, не перечисленных
явно в зависимостях пакета.       
 
 --emptytree  ( -e ) 
Создает видимость того, что дерево установленных пакетов содержит только  glibc ;
эту опцию стоит использовать совместно с  --pretend . Она позволяет
разработчикам получить полное представление о дереве всех зависимостей пакета и перестраивать
деревья в целом с использованием новейших версий библиотек.
 
 --fetchonly  ( -f ) 
Вместо создания пакета, просто выбирает (fetches) все пакеты (главный пакет и все его
зависимости).       
 
 --noconfmem 
Требует от портежей не учитывать записи слияния, показывающий, что файл конфигурации в каталоге
 CONFIG_PROTECT  уже был включен в дерево. Система портежей обычно будет включать такие 
файлы только раз, чтобы не заставлять пользователя возиться с одной и той же конфигурацией
несколько раз. Этот флаг приведет к включению файла конфгиурации каждый раз.       
 
 --nodeps  ( -O ) 
Включает указанные пакеты, не включая зависимости. Учтите, что процесс построения может закончиться
неудачно, если зависимости окажутся не удовлетворенными.
 
 --noreplace  ( -n ) 
Пропускает указанные в командной строке пакеты, если они уже были установлены. Без этой опции любые указанные
в командной строке пакеты, пакеты ebuild или зависимости  будут  приводить к повторному включению
соответствующего пакета системой Portage, даже если он уже установлен. Учтите, что зависимости система
Portage по умолчанию повторно не включает.
 
 --nospinner 
Отключает для сеанса "крутилку" (spinner). "Крутилка" активируется, если команда подана с
терминала (TTY). Этот флаг отключает ее, независимо от устройства.       
 
 --oneshot 
Включает пакеты как обычно, но не добавляет в профиль  world  с целью дальнейшего обновления.       
 
 --onlydeps  ( -o ) 
Включает (или делает вид, что включает) зависимости указанных пакетов, а не сами пакеты.       
 
 --pretend  ( -p ) 
Вместо реального включения просто показывает, что  должно  устанавливаться, если не
указать  --pretend . Использование опции  --pretend  настоятельно рекомендуется перед
установкой любого незнакомого пакета. В выдаваемом результате  N  = новый,  U  = обновление, 
 R  = замена,  B  = блокируется уже установленным пакетом.
 
 --quiet  ( -q ) 
Результаты могут отличаться, но, в общем случае, объем выдаваемых системой портежей 
результатов сокращается или выдача уплотняется.       
 
 --resume 
Возобновляет последнее действие по включению пакетов. Учтите, пожалуйста, что возобновить можно
только действие, закончившиеся с ошибкой из-за сбоя. Если делать нечего, будет просто выдано
сообщение об успешном выполнении.       
 
 --searchdesc  ( -S ) 
Сопоставляет строку поиска с полем описания и именем пакета. Учтите, что сопоставление с регулярным
выражением ведется и в описании пакета.
 
 --skipfirst 
Это действие допустимо только совместно с  --resume . 
Оно удаляет первый пакет в списке кандидатов на возобновление установки, так, чтобы
включение могло продолжиться даже при наличии неисправимой или несущественной ошибки.
Эту опцию надо использовать только в случаях, когда пропуск пакета не нарушает зависимости.       
 
 --update  ( -u ) 
Обновляет пакеты до самой новой из доступных версий. Учтите, что  --update  еще не обладает
всеми необходимыми возможностями. Он не будет автоматически обновлять зависимости пакетов
в файле  world , если их самих там еще нет.       
 
 --upgradeonly  ( -U ) 
Обновляет пакеты, исключая обновления, приводящие к понижению версии устанавливаемого пакета. 
Слоты (SLOTs) учитываются на простейшем уровне.
 
 --usepkg  ( -k ) 
Требует от  emerge  использовать двоичные пакеты (из каталога  $PKGDIR ), если они есть,
избегая этим, по возможности, продолжительных компиляций. Эта опция полезна для установок с
компакт-дисков; можно выполнить  export PKGDIR=/mnt/cdrom/packages , а затем использовать
эту опцию, чтобы  emerge  "вытягивала" пакеты с CD для удовлетворения зависимостей.
 
 --usepkgonly  ( -K ) 
Работает так же, как и  --usepkg , но включает только двоичные пакеты.
Все необходимые двоичные пакеты должны быть доступны на момент проверки зависимостей или  emerge 
просто прекратит работу.
 
 --verbose  ( -v ) 
Требует от  emerge  работать в многословном (verbose) режиме. В настоящее время этот флаг приводит
к тому, что  emerge  выдает сообщения об ошибках GNU info, если они будут.       
 
 --version  ( -V ) 
Выдает номер версии  emerge . Эту опцию нельзя сочетать с другими; имя и формат действия
при этом не важны. 
 

 ВЫДАВАЕМЫЕ РЕЗУЛЬТАТЫ 

 При использовании  emerge  с флагами  pretend / verbose , результаты на первый взгляд
могут показаться сложными для понимания. Этот раздел объясняет, что означает вся эта "стенографическая" 
информация. 
 
 [blocks B ] app-text/dos2unix (from pkg app-text/hd2u-0.8.0)               
Пакет  Dos2unix  блокирует включение в дерево пакета  hd2u . Блокирование выявляется,
когда два пакета перекрываются по файлам или могут вызвать те или иные повреждения в системе.
Однако обычно включать одновременно блокирующие друг друга пакеты не нужно, поскольку обычно
они обеспечивают одинаковые возможности.       
 
 [ebuild N ] app-games/qstat-25c 
Пакет  Qstat  - новый в вашей системе и будет включаться в дерево с помощью  emerge  впервые.       
 
 [ebuild R ] sys-apps/sed-4.0.5 
Пакет  sed 4.0.5  уже был включен, но если выполнить команду еще раз, система портежей
повторно включит этот пакет (в данном случае,  sed ).
 
 [ebuild F ] media-video/realplayer-8-r6 
Пакет  realplayer  требует, чтобы вы загрузили исходники вручную. При попытке включить пакет в дерево,
если исходные тексты пакета не найдены, система портежей остановится и выдаст инструкции о том, как загрузить
недостающие файлы.       
 
 [ebuild U ] net-fs/samba-2.2.8_pre1 [2.2.7a] 
Пакет  Samba 2.2.7a  уже был включен и может быть обновлен до версии  2.2.8_pre1 .
 
 [ebuild UD] media-libs/libgd-1.8.4 [2.0.11] 
Пакет  Libgd 2.0.11  уже был включен, но если выполнить команду, система портежей 
автоматически понизит (Downgrade) версию пакета до 1.8.4. Это может произойти, если более новая
версия пакета была замаксирована, поскольку оказалась поврежденной или создает угрозу защите системы,
а исправление еще не выпущено.
 Еще это может произойти потому, что пакет, который вы пытаетесь включить с помощью  emerge  
требует для успешного включения более старую версию пакета. В данном случае, библиотека  libgd 2.x  
несовместима с libgd 1.x. Это означает, что пакеты, созданные с использованием  libgd 1.x , не
скомпилируются с версией  2.x , и ее надо понизить, прежде чем удастся эти пакеты успешно установить. 
 
 [ebuild U-] x11-base/xfree-4.3.0 [4.2.99.902] 
Дефис ( - ) представляет отсутствие информации о слоте (SLOT information) пакета  Xfree .
Это происходит, когда предыдущая версия была просто "впрыснута" (подробнее см. описание действия
 inject ), или оказалась настолько старой, что соответствующий слот 
не существует. В любом случае, более новая версия  Xfree  доступна для обновления.
 
 [ebuild U ] net-analyzer/nmap-3.15_beta2 [3.15_beta1] -gtk -gnome 
Значения  -gtk  и  -gnome  отражают статус USE-переменных при включении пакета  nmap .
Здесь мы видим, что  nmap  может использовать USE-переменные  gtk  и  gnome ,
но в текущих установках переменные  gtk  и  gnome  отключены. Поэтому дополнительная
поддержка  gtk  и  gnome  не будет включена в  nmap  при его установке.
 Примечание : Статус  USE  выдается только если используются опции 
 --pretend  и  --verbose . 
 

 ПРИМЕЧАНИЯ 

 Практически всегда надо перед любой попыткой установки или обновления выполнять ее же, но с
опцией  --pretend . Это позволяет увидеть, что будет сделано,
а также выявить блокирующие пакеты, которые надо будет предварительно удалить. Это тем более важно 
для классов  system  и  world , которые могут вызвать обновление большого количества
пакетов, если дерево портежей было существенно изменено. 

 Обычно также имеет смысл использовать опцию  --update , 
которая позволяет игнорировать уже полностью обновленные пакеты, но обновлять при этом все остальные.
При установке пакета с неустановленными зависимостями, если зависимости эти не указаны явно в списке
параметров, они не будут добавляться в файл  world . Если необходимо внести зависимости в файл  world 
для дальнейшего обновления, не забудьте явно указать их в качестве параметров  emerge . 

 В команжной строке можно указывать USE-переменные, переопределяющие значения, указанные в стандартных местах,
что позволяет избежать использования ряда нежелательных зависимостей. Флаги USE, заданные в командной строке,
НЕ запоминаются. Например, команда  USE="-x -gnome" emerge  mc  установит пакет  mc  с указанными
установками USE. 

 Если команда  emerge --update system  или  emerge --update world  не сработает с выдачей
сообщений об ошибках, причина может быть в том, что пакет ebuild использует новую возможность, которой
нет в этой версии утилиты  emerge . Можно сначала выполнить  emerge --update portage  для 
обновления до последней версии, которая должна поддерживать любые необходимые новые возможности. 

 ЗАМАСКИРОВАННЫЕ ПАКЕТЫ 

 ПРИМЕЧАНИЕ: Будьте осторожны при использовании пакетов, находящихся в стадии разработки. Проблемы
и ошибки, возникающие в результате неправильного использования замаскированных пакетов, приводят
к напрасной трате времени разработчиков Gentoo. Подумайте заранее, сможете ли справиться с проблемами,
которые могут возникнуть.        

 Маски в системе портежей обеспечивают три основные функции: они позволяют задать период тестирования,
в течение которого пакеты могут использоваться на машинах; они предотвращают использование пакета, который
начал сбоить, и позволяют маскировать существующие пакеты, поломанные или угрожающие защите. Маскирование
можно делать двумя способами: с помощью файла  package . mask  и с помощью ключевых слов. 
Как демаскировать пакет при использовании этих способов описано ниже. Учтите также, что если утилите 
 emerge  передается пакет ebuild, то все виды максировки игнорируются и  emerge  будет пытаться
включить пакет в систему.        

 
 package.mask 
Файл  package.mask , в основном, используется для блокирования пакетов, вызывающих проблемы
везде или на некоторых машинах. Он находится 
в каталоге  ${PORTDIR}/profiles .
Пакеты можно демаскировать в файле путем добавления символа комментария ( # ) 
в начале строки, маскирующей пакет. 
 КЛЮЧЕВЫЕ СЛОВА 
Ключевые слова ( KEYWORDS ) также используются для маскировки пакетов,
находящихся на стадии тестирования. Есть определяющие архитектуру ключевые слова для
каждого пакета, позволяющие системе портежей определить, с какими системами
совместим пакет. Пакеты, компилирующиеся на некоторой архитектуре, но не считающиеся
"стабильными", миаскируются путем указания тильды ( ~ ) перед названием
архитектуры. Утилита  emerge  проверяет значение переменной среды 
 ACCEPT_KEYWORDS , прежде чем разрешить или запретить включение пакета, 
замаскированного с помощью КЛЮЧЕВЫХ СЛОВ. 
 Чтобы проинформировать утилиту  emerge , что необходимо построить эти "тестовые"
версии пакетов, можно установить переменной  ACCEPT_KEYWORDS  значение " ~arch ",
где  arch  - одно из значений:  x86 ,  ppc ,  sparc ,  mips ,
 alpha ,  arm ,  hppa . Например, команда 
 ACCEPT_KEYWORDS="~x86" emerge xfree  приведет к тому, что  emerge  будет
учитывать замаскированные ключевыми словами версии  XFree  в качестве
потоенциальных кандидатов на обновление.   
 ПРЕДУПРЕЖДЕНИЕ: Не устанавливайте этой переменной значение, отличающееся от
соответствующего вашей архитектуре. 
 

 КАК СООБЩАТЬ ОБ ОШИБКАХ 

 Пожалуйста, сообщайте о любых обнаруженных ошибках через наш web-сайт: 
 http://bugs.gentoo.org/            
 Пожалуйста, включайте в отчет об ошибке результат, который выдает утилита 
 emerge . 

 ССЫЛКИ 

 
 emerge --help , 
 ebuild(1) , 
 ebuild(5) , 
 make.conf(5) 
Ряд вспомогательных приложений находится в каталоге  /usr/lib/portage/bin .
Пакет  app-admin/gentoolkit  содержит полезные сценарии, например,
 qpkg  (средство запросов к пакетам).
 

 ФАЙЛЫ 
 
 /var/cache/edb/world 
Содержит список всех указанных пользователем пакетов. Можно без опаски редактировать этот
файл, добавляя пакеты, которые необходимо учитывать при обновлении класса
 world , и удаляя те, котоирые обновлять прри этом не нужно.       
 
 /etc/make.conf 
Содержит перременные для процесса построения пакетов, переопределяя значения, заданные
в  make.globals . Именно этот файл надо редактировать вместо перечисленных далее.
 
 /etc/make.profile/make.defaults 
Содерржит специфические для профиля переменные для процесса построения пакетов. Не
редактируйте этот файл.
 
 /etc/make.profile/use.defaults 
Содержит список пакетов, которые, в случае установки, приводят к установке по
умолчанию соответствующего флага использования (use flag). Не редактируйте этот файл.
 
 /usr/portage/profiles/use.desc 
Содержит основной список флагов  USE  с описаниями их функций. Не редактируйте
этот файл.
 
 /etc/make.profile/virtuals 
Содержит список стандартных пакетов, используемых для разрешения виртуальных
зависимостей. Не редактируйте этот файл.
 
 /var/cache/edb/virtuals 
Содержит список пакетов, используемых для разрешения виртуальных зависимостей.
В случае, когда поиск виртуальных зависимостей заканчивается неудачно,
можно переупорядочить записи соответствующих виртуальных зависимостей в этом файле.
Первый пакет, указанный после  virtual , используется для сопоставления с  virtual .
 
 /etc/make.profile/package 
Содержит список пакетов, используемых для базовой системы. Классы  system  
и  world  учитывают содержимое этого файла. Не редактируйте его.
 
 /etc/make.globals 
Содержит стандартные переменные для процесса построения. Не редактируйте этот файл. 
 

 АВТОРЫ 

 
Daniel Robbins <drobbins@gentoo.org> 
Geert Bevin <gbevin@gentoo.org> 
Achim Gottinger <achim@gentoo.org> 
Nicholas Jones <carpaski@gentoo.org> 
Phil Bordelon <sunflare@gentoo.org> 
Mike Frysinger <vapier@gentoo.org>
 

 ЗАГОЛОВОК CVS 

 $Id: emerge.1,v 1.43 2003/09/13 18:49:44 vapier Exp $ 

 Последнее изменение: январь, 2003 года 

 
Copyleft (no c) - Fuck copyright!, 2003 
 В. Кравчук ,
 OpenXS Initiative , перевод на русский язык
  

 
 
 
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