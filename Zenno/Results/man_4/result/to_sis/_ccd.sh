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
 
 
 
 ccd (4)   ccd  (4)   ( FreeBSD man: Специальные файлы /dev/* ) >>  ccd  (4)   ( Русские man: Специальные файлы /dev/* ) 
 
 
 ccd(4) 
 Устройства и драйверы устройств 
 ccd(4) 
 
 

 НАЗВАНИЕ 

 ccd  - драйвер "склееных" дисков (Concatenated Disk driver) 

 СИНТАКСИС 
 
 device ccd 
 

 ОПИСАНИЕ 

 Драйвер  ccd  позволяет комбинировать несколько дисков/разделов в один виртуальный диск. 

 В этом документе предполагается, что читатель знает, как создавать ядра, как правильно конфигурировать
диски и устройства в файле конфигурации ядра, и как разбивать диски на разделы. 

 Учтите, что "неформатированные" (raw) разделы дисков нельзя объединять в виртуальный диск.
Ядро работает только с компонентами-разделами типа  FS_BSDFFS  (утилита 
 disklabel(8)  показывает их тип как " 4.2BSD "). 

 Чтобы включить поддержку драйвера  ccd  в ядро, необходимо добавить в файл конфигурации ядра
строку, аналогичную следующей: 

 device    ccd       # concatenated disk devices
 

 Начиная с версии FreeBSD 3.0, не обязательно конфигурировать поддержку драйвера  ccd  
в ядре - можно использовать его как загружаемый модуль ядра. Простой запуск утилиты 
 ccdconfig(8)  загрузит соответствующий модуль в ядро. 

 Разделы в  ccd  могут либо соединяться последовательно, либо чередоваться. Для последовательного
соединения разделов укажите  коэффициент чередования  (interleave factor) 0. Учтите, что
при указании коэффициента чередования 0  зеркалирование  (mirroring) использовать нельзя. 

 Для конфигурирования устройств  ccd  имеется отдельная утилита. Подробнее о ней см. на
странице справчоного руководства  ccdconfig(8) . 

 Коэффициент чередования 

 Если для устройства  ccd  чередование задано корректно, достигается эффект "разбиения
на полосы" ("striping"), что может повысить производительность последовательного чтения/записи.
Коэффициент чередования задается в единицах  DEV_BSIZE  (обычно - 512 байтов).
Для записей большого объема, оптимальный коэффициент чередования обычно совпадает с размером дорожки,
а для чтения большого объема он должен составлять около четверти дорожки. (Учтите, что это в большой
степени зависит от количества и скорости вращения дисков.) Например, при наличии восьми
дисков со скоростью вращения 7200 об/мин. на двух шинах Fast-Wide SCSI получаем значение 128
для записей и 32 для чтений. Больший коэффициент чередования дает лучшие результаты при многозадачной
работе за счет локализации файлового ввода-вывода данного процесса на одном диске. Производительность
при последовательном чтении при этом снижается, но при работе большого количества задач производительность
последователного чтения обычно не столь существенна. 

 Коэффициент чередования необходимо задавать при использовании зеркалирования, даже если имеется
всего два диска (т.е. организация работы с ними будет одной и той же, независимо от коэффициента
чередования). Коэффициент чередования будет определять, однако, как распределяются операции ввода-вывода,
и рекомендуется задавать значение от 128 и больше. 

 Драйвер  ccd  предлагает опцию для организации диска четности, но в настоящее время она 
не реализована. 
     
 Максимальная производительность достигается, если все составляющие диски имеют одинаковую геометрию
и размер. Оптимальное разбиение на полосы невозможно при использовании дисков различных типов. 

 Для задач, требующих случайного доступа, например, для серверов дискуссионных групп, желательно
использовать коэффициенты чередования побольше (например, 65,536). Учтите, что драйвер  ccd  
не сможет существенно ускорить работу приложений, для которых критичным является время 
поиска нужной позиции в файле (seek-time). Большие значения коэффициента чередования, по крайней мере,
уменьшат вероятность того, что для чтения одного каталога или файла придется позиционировать головки
двух дисков. 

 Зеркалирование дисков 

 Можно сконфигурировать  ccd  для "зеркалирования" любого четного количества дисков. О том,
какие для этого необходимо задать флаги, см. на странице справочного руководства 
 ccdconfig(8) . Например, при наличии конфигурации  ccd  
с четырьмя дисками, первые два диска будут завязаны в зеркальную пару со вторыми двумя. Запись
будет выполняться на оба компонента зеркальной пары. Чтение будет выполняться с любого из зеркальных
компонентов, в зависимости от того, какой из них драйвер сочтет более оптимальным использовать. Если
при чтении произойдет сбой, драйвер автоматически попытается прочитать тот же сектор с зеркального
компонента. В настоящее время  ccd  использует  модель сдвоенной зоны поиска  (dual seek zone model) 
для оптимизации чтений в многозадачной среде по сравнению с последовательным чтением. 

 В случае сбоя диска его можно восстановить с помощью утилиты  dd(1) . 

 Учтите, что однодисковое устройство  ccd  отличается от исходного раздела. В частности, это
означает, что при наличии файловой системы на двухдисковом зеркале  ccd  и сбое одного из
диско, нельзя смонтировать и использовать оставшийся раздел сам по себе; его надо будет
сконфигурировать как однодисковое устройство  ccd . Нельзя заменить диск, содержащий
зеркальный раздел  ccd , не создав предварительно резервную копию раздела. Потом можно
будет заменить диск и восстановить раздел. 

 ПРЕДУПРЕЖДЕНИЯ 

 Если один (или несколько) дисков, составляющих виртуальный диск  ccd , перестанет работать, потеряна
будет вся файловая система, если только не используется зеркалирование дисков. 

 Если теряется один из дисков в зеркальной паре, создать резервную копию данных будет можно. 
Если происходит ошибка записи, однако, чтение данных из соответствующего сектора может давать
непредсказуемые результаты. Могут быть выданы данные до записи, а могут - и записанные данные.
При возникновении ошибки записи необходимо как можно скорее восстановить и перегенерировать данные. 

 Изменение коэффициента чередования или других параметров для диска  ccd  обычно приводит к
уничтожению ранее содержавшихся на нем данных. 

 ФАЙЛЫ 
 
 /dev/ccd* 
Специальные файлы устройств  ccd 
 

 ИСТОРИЯ 

 Драйвер "склееных" дисков был первоначально написан в университете штата Юта (University of Utah). 

 ССЫЛКИ 
 
	 dd(1) ,
	 ccdconfig(8) ,
	 config(8) ,
	 disklabel(8) ,
	 fsck(8) ,
	 mount(8) ,
	 newfs(8) ,
	 vinum(8) 
 

 FreeBSD 4.9, 9 августа 1995 года 

 Copyleft (no c) - Fuck copyright! 
2003  В. Кравчук ,
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