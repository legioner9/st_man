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
 
 
 
 xdtv (1) >>  xdtv  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня ) 
   
 NAME 
 XdTV (программа под X11 основанная на xawtv) это софт для просмотра  TV.
Она взаимодействует с AleVT для Teletext и с Nxtvepg для NextView, использует video4linux API.
Может использовать деинтерлейс фильтры и записывать видео с помощью кодеков: 
FFMpeg(>=0.4.6), XviD(0.9 & 1.x), Ogg Theora (>=1.0alpha5) & Vorbis, DivX4/5.
Имеются возможности по подключению плагинов.
   
 SYNOPSIS 

 XdTV [ options ] 

   
 DESCRIPTION 

 XdTV 

простая программа для просмотра TV в Линуксе. Использует
виджеты Athena. (xaw, xaw3d, xawM, xaw95 или neXtaw)
 XdTV 

поддерживает bttv драйвер и v4l & v4l2.

 XdTV 

считывает конфигурационный файл $HOME/.xdtv/xdtvrc при запуске.  Этот
файл содержит доступные  ТВ каналы и некоторые опции вроде стандарта ТВ.
При первом пуске
 XdTV 

создает файл с установками по умолчанию. Вы должны потом
отредактировать файл под свои нужды.
   
 OPTIONS 

 
 -b depth 

 
устанавливает
 depth 

глубину цвета в битах. Может понадобиться для 24/32 битных режимов. Вообще, наивысшая производительность в режиме grabdisplay была достигнута при 16 битах.
 -f 

 
запуск в полноэкранном режиме.
 -n 

 
не считывать файл конфигурации ($HOME/.xdtv/xdtvrc).
 -o filename 

 
указать выходной файл для ppm & jpeg граббинга (по умолчанию snap000.ppm или snap000.jpeg)
 -v level 

 
Выводить много сообщений,
 level 

может быть 0 (по умолчанию), 1 или 2.  Только для отладки. Если
 level 

не указан, уровень 1 принимается.
 -x 

 
выключает использование X11 расширений (DGA, VidMode).
 -d 

 
выключает  X11 DGA расширение.
 -D adr 

 
устанавливает адрес фреймбуфера в adr. Нужен для overlay
режима, если DGA недоступен (необходимы права администратора, использоватьс осторожностью!).
 -c video_device 

 
video4linux видеоустройство. Для devfs систем по умолчанию /dev/v4l/video или /dev/v4l/video0. Для не-devfs систем по умолчанию /dev/video или /dev/video/video0 или /dev/video0.
Заметьте, что на /proc системах устройство видео определяется автоматически.
 -C vbi_device 

 
video4linux vbi устройство. Для devfs систем по умолчанию /dev/v4l/vbi или /dev/v4l/vbi0. Для не-devfs систем по умолчанию /dev/vbi или /dev/video/vbi или /dev/vbi0.
Заметьте, что на /proc системах устройство видео vbi определяется автоматически.
 -noxv | -no-xv 

 
выключает поддержку Xvideo если он скомпилирован.
 -xvport number 

 
устанавливает Xvideo Image порт (по умолчанию в первый пригодный, если Xvideo доступен).
Пригодный - поддерживающий YUY2.
 -noxvпо умолчаниюs 

 
Обычно xdtv устанавливает XVideo праметр (например, контраст...) в значение по умолчанию.
Эта опция выключает такой порядок. (полезно для сломанных адаптеров)
 -noplugin 

 
отключает все установленные плагины.
 -plugin pathfile 

 
включает указанный плагин.
 -plugindir pathdir 

 
указывает каталог с плагинами (по умолчанию =/usr/local/lib/xdtv-plugins)
 -probe_memcpy 

 
включает тестирование различных способов быстрой memcpy функции.
 -rec_fps fps 

 
устанавливает частоту кадров для записи (по умолчанию = 25.0)
 -rec_display on|off 

 
устанавливает display режим для записи (по умолчанию = 1)
 -rec_width width 

 
устанавливает горизонтальное разрешение для записи (по умолчанию = 384),
если равен 0,  то устанавливается в 4/3 высоты (верт. разрешения)
 -rec_height height 

 
задает верт. разрешение для записи (по умолчанию = 288),
если равен 0,  то устанавливается в 3/4 ширины (гориз. разрешения)
 -rec_videobr br 

 
устанавливает битрейт записи в br кбит/с (по умолчанию = 800)
 -rec_stereo on|off 

 
активировать стерео режим (по умолчанию = выкл)
 -rec_audiofreq freq 

 
устанавливает частоту аудио для записи (по умолчанию = 44100Hz)
 -rec_audiofmt u8|s16le 

 
устанавливает формат аудио для записи (по умолчанию = s16le)
 -rec_audiobuf size 

 
устанавливает размер аудио буфера(по умолчанию = 1764)
 -rec_fragments number 

 
устанавливает число аудио фрагментов (по умолчанию = 48)
 -rec_fragmentsize size 

 
устанавливает размер аудио фрагмента (по умолчанию = 2048)
 -rec_acodec codec_name 

 
устанавливает записывающий аудио кодек (по умолчанию = "LAME MP3")
 -rec_mp3cbr br 

 
активирует MP3 CBR и устанавливает битрейт в  br кбит/с
(по умолчанию = активирован, 128 kbit/s)
 -rec_mp3vbr quality 

 
активирует MP3 VBR и устанавливает качество сжатия (0=лучшее, 9=худшее)
(по умолчанию = выкл, качество = 8)
 -rec_vcodec codec_name 

 
установить записывающий видео кодек
 -rec_container container_name 

 
указать контейнер для записи
 -rec_maxgap gap 

 
устанавливает макс. разрыв между аудио и видео в секундах при записи
(по умолчанию = 0.08 сек)
 -rec_delay value 

 
устанавливает задержку между аудио и видео во время записи в секундах
(по умолчанию = 0.00). Значение может быть положительным или отрицательным.
Значение задержки всегда будет между
value-gap и value+gap. Используйте эту опцию,
если заметите, что задержка всегда одинакова 
в ваших записях, но 0.00 это всегда хорошо.
 -rec_sub on|off 

 
показывает, записаны ли субтитры
(субтитры записываются в формате MPlayer's MPsub).
 -rec_chg on|off 

 
позволяет менять канал во время записи.
 -rec_filename filename 

 
установить имя avi файла
(по умолчанию = divx_path/movie-channel-date.avi)
 -rec_maxsize s 

 
установить макс. размер записываемого файла в s Mb.
(по умолчанию = 1024 для ФС MSDOS, иначе 4096)
 -rec_stream on|off 

 
включает http экспорт записи
(XdTV будет работать как http stream сервер)
 -rec_http_port 

 
установить порт для http stream (по умолчанию = 63427)
 -e cmd_1; cmd_2; cmd_3;...cmd_n 

 
выполнить команды во время запуска
см.  xdtv_cmd (1) список команд
 -nowd 

 
отключить украшение окон при старте
 -stayontop 

 
Запуск с активацией stay on top.
 -h 

 
показывает короткое сообщение по использованию.
 -version 

 
текущая версия XdTV.
 -v4l2 

 
включает v4l2 драйвер. По умолчанию, если у вас не включен
v4l2, то v4l1 включается автоматически; с этой опцией,
если у вас нет v4l2, XdTV умрет.
 -v4l1 

 
включает устаревший v4l1 драйвер. Не рекомендуется, т.к. драйверы,
которые дают v4l2, могут неустойчиво работать в режиме v4l1.
 -xvtv  

 
взаимодействовать с TV-картой через X-сервер
(нужен Xvideo, и ваша TV-карта должна быть опознана Иксами.
Не работает с grabdisplay).
 -xvtv_overlay on|off 

 
использовать XVideo для overlay , если возможно, все другие операции
используют обычный драйвер. Работает с v4l2 драйверами,
т.к. устройство должно поддерживать "множественные открытия".
(по умолчанию = вкл с v4l2 и если XvVideo порт называется video4linux)
 -xvtvport 

 
установить Xvideo Video порт (по умолчанию первый доступный).
 -novbi  

 
не открывать устройство телетекста.
 -capture overlay|grabdisplay|off 

 
использовать указанный режим захвата для всех каналов при запуске.
 -nbufs nbufs 

 
установить число забуференных ядром кадров (по умолчанию=3).
 -capt_width width 

 
установить макс. ширину захватываемых кадров (по умолчанию=maximum=768)
 -capt_height height 

 
то же, что -capt_width опция. (по умолчанию=maximum=576)
 -force_capt_width width 

 
указать ширину захв. кадров (по умолчанию=0 что означает не указывать,
-1 означает макс. ширину(768 для pal, 640 для ntsc).
 -force_capt_height height 

 
то же что -force_capt_width опция. (по умолчанию=0=выкл)
-1 означает макс. высоту(576 для pal, 480 для ntsc).
 -only_capt_width width 

 
аналог -force_capt_width, только сильнее
 -only_capt_height height 

 
аналог -force_capt_height, только сильнее
 -fullscreen_mode 1 | 2 | 3 

 
выберите метод для запуска полного экрана.
 -avi filename.avi 

 
считывать кадры из filename.avi. (только для тестирования)
 -avibench 

 
(требует вкл. -avi опции)
не делать задержки между двумя кадрами; остановить при достижении конца файла
и показать статистику использования ЦП.
 -avi_audiofragments number 

 
установить число аудио фрагментов для чтения из файла (по умолчанию=2, 16 для sunaudio)
 -avi_audiofragmentsize size 

 
установить размер аудио фрагментов для чтения из файла (по умолчанию=2048)
 -avinoaudioout 

 
не воспроизводить аудио при чтении из файла.
 -sub on|off 

 
вкл/выкл субтитры (по умолчанию=выкл)
 -xosd 

 
использовать библиотеку  xosd для показа osd. (в разработке)
 -noalsa | -nooss | -nosunaudio 

 
не использовать соотв. драйвер для управления звуком
 -mixer_dev 

 
выбрать микшер.
(по умолчанию=по умолчанию для alsa, /dev/mixer для oss и sunaudio)
 -mixer_tvchan 

 
выбрать канал микшера, соответствующий ТВ
(по умолчанию=Line для alsa, line для oss, inputs.line для sunaudio)
 -mixer_pcmchan 

 
выбрать канал микшера, соотв. цифровому аудио
(по умолчанию=PCM для alsa, pcm для oss, inputs.dac для sunaudio)
 -audio_dev 

 
выбрать звуковое устройство.
(по умолчанию=по умолчанию для alsa, /dev/dsp для oss, /dev/sound для sunaudio)
 -restoresnd on|off 

 
показать, сохраняет ли XdTV установленные настройки звука при выходе.
(по умолчанию=off, работает только с alsa)
 -respectnullsnd on|off 

 
Показывает, учитывает ли XdTV отсутствие звука при запуске.
(по умолчанию = выкл, работает только с oss и alsa)
 -bktr_mode nr 

 
выбирает формат захвата по его номеру
(см. поддерживаемые форматы XdTV) (для BSD)
вы должны указать подходящий праметр для опции -grabfmt
 -bktr_read 

 
использовать read вместо mmap (медленно, используйте только в случае глюков драйвера)
(only for BSD)
 -doublekey on/off 

 
включить "двойные кнопки" (по умолчанию=вкл если больше 10 каналов)
 -doublekey_firstisone on/off 

 
показывает, имеет ли первая станция номер 1, и не 0, нужно для doublekey
(по умолчанию=выкл за искл. случаев когда lirc-key-1 установлен в keypad 0
или горячая клавиша первого канала - 1, KP_1 или KP_End)
 -noxawpopup 

 
выключить всплытие xaw
 -nopixmap 

 
выкл. использование pixmaps рисунков для кнопок. 
 -theme name 

 
загружает тему соответствующую name (например, "-theme aqua"). 
По умолчанию грузится тема указанная в конфиге. 
Если никакая тема не указана, то грузится тема по умолчанию. Каждая тема должна быть
установлена независимо. Несколько версий каждой 
темы могут быть установлены (например, aqua theme на франц. и на англ. языках), программа
загрузит версию, соответствующую текущему языку.
 -nodecoinit 

 
Для оконных менеджеров, у которых проблемы с украшением окон (ffwm, ff2wm)
 -nowmhooks 

 
отключает WM специфичные операции: fullscreen by wm, stayontop...
 -nowmfs 

 
не использовать WM Fullscreen. Полезно для получения полного экрана
покрывающего все другие окна.
 -ybar nr 

 
установить высоту черных бордюров для общей высоты в 1000:
nr=125 для 16:9, nr=200 для 20:9 (по умолчанию=0)
 -grabfmt -grabfmt yuyv|yuv420|rgb32... 

 
включает формат захваченных кадров картой
 -xvfmt yuyv|yuv420|rgb32... 

 
включает формат, используемый XVideo адаптером
 -x11fmt gray1|gray4|rgb4|gray8|hi240|rgb8|rgb16|rgb24|rgb32... 

 
включает формат, используемый x11 окном
 -vop op1:op2:op3... 

 
выполняет операции над видео.
 -aop op1:op2:op3... 

 
выполняет операции над аудио.
 -vop_autograb on|off 

 
автоматически входить в grabdisplay режим когда vop активирован
(по умолчанию=вкл)
 -novop 

 
запрещает любые операции с видео.
 -noaop 

 
запрещает любые операции с видео.
TP

-xineramascreen number|off|auto
указывает где full display должен быть инициирован.
("off" означает что xinerama не используется (по умолчанию),
"auto" означает что экран строится исходя из текущей позиции)
 -dvb 

 
использовать dvb TV-карту. (в разработке...)
 -alevt_arg 

 
 Вы должны записывать аргументы AleVT в кавычках

--help or -h
--version or -v
--debug or -debug
-copyright or -©
-editor or -ed
-display or -d <dpy>                                            $DISPLAY
-geometry or -g <geo>                                           41x25
-finetune or -f <-4..4|auto>                                    0
-child or -c ppp[.ss]
[-parent] or -p ppp[.ss]                                        900
-[no]erc or -[n]e                                               enabled
-[no]bell or -[n]b                                              enabled
-[no]fixvbioffset or [n]fvbio                                   enabled
-charset or -latin latin-1/2/koi8-r/koi/iso8859-7/el            latin-1

Порядок важен!  Каждый номер страницы открывает окно
с прежде указанными геометрией, устройством, дисплеем.

ppp[.ss] означает номер страницы и опционально номер
подстраницы (например 123.4).  Если номер подстраницы опущен
то показывается первая переданная подстраница.

Опция -child требует родительское окно. Так что
она должна быть обеспечена им или другим дочерним окном.

Чтобы узнать больше о AleVT опциях, смотрите его ман.

 

 XdTV это X приложение. Так что вы можете использовать любые параметры  X11 (1): 

 
 -iconic : запустить XdTV невидимым.

-xrm resourcestring : Эта опция указывает имя ресурса
и значение для перекрытия значений по умолчанию.  Очень полезна для
установления ресурсов которые не имеют явных командных аргументов.

например:
xdtv -xrm "xdtv.onscreen*foreground:red (получить OSD красный)
xdtv -xrm 'xdtv.vtx.label.font: -*-*-bold-r-normal-*-16-*-*-*-m-*-iso8859-1'
все ресурсы из XdTV.ad могут временно изменяться
этим методом.

 

 
   
 GETTING STARTED 

Просто запустите XdTV, она может работать без файла конфигурации.  Потом
проверьте опции (правый клик мыши) и выставьте настройки
(TV стандарт, источник видео, таблица частот).  Используя курсор вы
можете контролировать тюнер и TВ каналы.

Если найдете канал, запустите ваш любимый текстовый редактор и вставьте его
в $HOME/.xdtv/xdtvrc config file.  А можете 
использовать новый редактор каналов.  Горячая клавиша 'E' запустит его.
 Предупреждение: 

Создание конфиг файла с использованием редактора каналов уничтожит
все ваши комментарии в конфиге.
   
 Функции мыши 

Левая кнопка мыши вызывает меню со всеми ТВ каналами найденными в 
конфиге. Средняя клавиша переключает на след. канал. Правая
клавиша вызывает окно со множеством функций и кнопок.

   
 Клавиатурные сокращения 

 
A             A udio вкл/выкл
Shift+A      Аудио вкл/выкл, минуя TV-карту. (полезно когда звук
             потерян из-за плохого приема)
Ctrl+A       Старт/Стоп встроенного AleVT Videotext/Teletext декодера/смотрелки
Alt+A        Вызвать окно параметров AleVT
B            Устанавливает украшение окон
C            Вызывает  C hannels окно
Ctrl+D       Выбрать деинтерлейс-фильтр
E            Вызвать Channels  E ditor
F             F ullscreen вкл/выкл
G             G rab рисунок (полный размер, ppm)
Ctrl+G        G rab рисунок (оконный размер, ppm)
H            Показывает текущее время в заголовке окна или OSD
             в полноэкр. режиме
Ctrl+H       Вызвать помощь (только в TВ & Главном окне опций)
J            Грабить рисунок (полный размер,  j peg)
Ctrl+J       Грабить рисунок (в окне,  j peg)
K            Вызвать окно настроек плагинов
O            Вызвать  O ptions окно
P            Переключатель субтитров: вкл/выкл
Alt+P        Вернуться на страницу субтитров. Работает с Ctrl+P и P
Ctrl+P       Показать субтитры: выберите номер страницы
Shift+P      Введите номер страницы субтитров
R            Записать видео (старт/стоп)
Alt+R        Опции записи видео
Ctrl+R       Опции записи аудио
Shift+R      Опции стриминга
S            Краткая статистика записи
Shift+S      Сохранить конфиг
T            "Always on Top" функция, работающая с любым Gnome-совместимым
             оконным менеджером или с любым NET_WM совместимым оконным менеджером
V             V ideo (захват) переключатель: overlay/grabdisplay/off
Shift+V      Предпросмотр записываемого видео.
Shift+X      Окно Xosd опций
X            Окно X11 опций
Ctrl+X       Вкл / выкл Xosd
Z            Переключатель каналов ( z apping, настраивает каждый канал
             неск. секунд)
Ctrl+Z       Быстрый переключатель каналов
             
 
0            Установить аудио в auto
1            Установить аудио в mono
2            Установить аудио в stereo

up/down      вверх/вниз на один канал
left/right   тонкая настройка
pgup/pgdown  на станцию вверх/вниз
Ctrl+up      искать след. канал

ESC           Q uit

F1           Вызвать nxtvepg заголовок снова
F5           Уменьшить яркость до -512
F6           Повысить яркость до +512
F7           Уменьшить насыщенность до -512
F8           Повысить насыщенность до -512
F9           Уменьшить контрастность до -512
F10          Повысить контрастность до +512
F11          Уменьшить цветность до -512
F12          Повысить цветность до +512

+/-          Звук сильнее/слабее
Enter        убрать звук

End         уменьшить черные рамки
Home          увеличить черные рамки

Ветки содержат некоторую строку (TV station ID), строки содержат
настройки для этого канала. Обычно строки канала достаточно.

Есть еще несколько других опций.  Они доступны как для канала
(и будут использованы для него) так и до первого канала (будут
использованы по умолчанию для всех станций). Второй вариант полезен для
настроек вроде ТВ стандарта. См. пример ниже.

Вот детальное описание опций:
 
 fine = n 
 тонкая настройка (аналог клавиш право-лево), по умолчанию: 0
 norm = pal | ntsc | secam 
 выбрать ТВ стандарт, по умолчанию pal
 key = keysym 
 Горячая клавиша канала. Все X11 сочетания доступны. Вы можете указать
сочетание с +, напиример ^F это "Ctrl+F".
 capture = off | overlay | grabdisplay 
 режим захвата: выкл., overlay (по умолчанию, TV card => video, 0% cpu) или
grabdisplay (TV card => ОЗУ => X-Server => video, частота кадров зависит
от загрузхки и размера кадра).
 source = Television | Composite1 | Composite3 | SVHS 
 источник сигнала
 color = n 
 bright = n 
 hue = n 
 contrast = n 
 Диапазон значений 0-65535, по умолчанию 32768
 deinterlace = none | bob | weave | greedy | onefield 
 используемая деинтерлейс-функция
 subpage = val (different from 888) 
 позволяет сохранить страницу субтитров по умолчанию,
которая будет показываться при каждом вызове "show subtitles".
Следующие глобальные опции применимы только к первой станции. 
Они могут быть перекрыты настройками каналов:
 norm = pal | ntsc | secam 
 ТВ стандарт, по умолчанию SECAM
 capture = off | overlay | grabdisplay 
 режим захвата: off, overlay (TV card => video, 0% cpu) или
grabdisplay (по умолчанию TV card => ОЗУ => X-Server => video, частота кадров зависит
от загрузки и размера кадра).
 source = Television | Composite1 | Composite1 | SVHS 
 источник видео
 colorkey = value 
 Если Xvideo включен, присаивает value  colorkey.
 fullscreen = width x height 
 указывает, какой видеорежим будет использован в полном экране.  Рабортает только с
X11, также должна быть прописана правильная строка к этому режиму в вашем
 X11 RC файле.
 fullscreen_mode = 1 | 2 | 3 
 выберите метод для запуска полного экрана.
 windowsize = width x height 
 указывает стартовый размер экрана при старте. Перекрывает то, что
было записано в XdTV.ad файл.
 wm-off-by = [+-]x[+-]y 
 Некоторые WM обрабатывают static gravity неправильно (мне известны mwm и
kwm).  Что-то не так с полноэкранным режимом.  С этими
опциями вы можте исправлять смещение движущихся окон.
 Например, wm-off-by = -4-24 вразумляет kwm (
KDE window manager).
 subpage = val (по умолчанию = 888) 
 Позволяет сохранить страницу субтитров по умолчанию, которая будет показываться при каждом вызове
 "show subtitles".
 freqtab = 
 Выбрать разбивку канал-частота.  Опции->Таблица частот
вызывает меню со всеми доступными значениями (и позволяет переключать разбивку
во время исполнения).
 pixsize = width x height 
 размер картинки канала (внутри окна Каналы).  0x0 выключает
эту хвункцию.
 mixer_tvchan = device 
 Позволяет контролировать громкость звука через микшер звуковой платы. Устройство
*не* /dev/mixer (которое установлено mixer_dev),
а имя источника звука(line1 для меня, просто
возьмите одну из микшерных прог и узнайте...).
Громкость работает через клавиатуру: + выше, - ниже, Enter - подавить.
 mixer_dev = xxx | mixer_pcmchan = xxx | audio_dev = xxx 
 Продвинутый mixer/audio параметр, см. ОПЦЫИ
 restoresnd = on|off 
 см. опцию -restoresnd
 respectnullsnd = on|off 
 см. опцию -respectnullsnd
 vop_autograb = on|off 
 см. опцию -vop_autograb
 subtitles = on|off 
 Активация субтитров при запуске.
 capture_size = val (по умолчанию = 768 x 576) 
 Задать ширину и высоту захватываемых кадров;
 blackborder = nr (по умолчанию = 0) 
 задать высоту черных рамок (как -ybar option)
 xawpopup = val (по умолчанию = on) 
 Вкл./выкл. xawpopup
 message_timer = val (по умолчанию = 5000) 
 Сколько заголовок будет показываться на экране.
 decoration = on|off 
 Вкл. декорации при запуске.
 stayontop = on|off 
 Stay on Top активация при запуске.
 xvport = number 
 Xvideo Image порт (то же, что -xvport опция).
 grab_filepath = val (по умолчанию = $HOME) 
 путь для сохранения захваченных кадров.
 jpeg_compression = val (по умолчанию = 75) 
 Выбрать процент сжатия для захваченных jpeg.
 xosd = on|off 
 Xosd активация при запуске.
 xosd_main_color = val (по умолчанию = lawngreen) 
 Выбрать главный цвет текста xosd.
 xosd_outline_color = val (по умолчанию = black) 
 Выбрать аутлайновый цвет текста xosd.
 xosd_outline_offset = val (по умолчанию = 0) 
 Выбрать размер аутлайна
 xosd_shadow_offset = val (по умолчанию = 0) 
 Выбрать размер тени текста
 xosd_main_font = val (по умолчанию = -*-bitstream vera sans mono-*-*-*-*-*-240-*-*-*-*-*-*) 
 Выбрать главный шрифт текста xosd.
 xosd_vtx_font = val (по умолчанию = -*-bitstream vera sans mono-*-*-*-*-*-180-*-*-*-*-*-*) 
 Выбрать шрифт телетекста xosd.
 container = name (default = AVI) 
 Выбрать аудио/видео контейнер для записи.
 codec = name (default = XviD) 
 Выбрать видео кодек для записи.
 width = val (по умолчанию = 384) 32 to 768 (modulo 32) 
 Ширина видеокадров при записи.
 height = val (по умолчанию = 288) 16 to 576 (modulo 16) 
 Высота видеокадров при записи.
 bitrate = val (по умолчанию = 800) in Kbit/s 1 to 10000 (modulo 1) 
 Видео битрейт в kbits/s.
 quality = val (по умолчанию = 1) 
 Качество видео: от 1 до 5 для DivX, от 0 до 5 для FFMpeg и от 0 до 6 для XviD
 stereo_mode = off | on (по умолчанию =off) 
 Режим записи аудио: mono или stereo.
 compress_audio = on | off (по умолчанию = on) 
 Вкл / выкл сжатие звука при записи.
 mp3_bitrate = val (по умолчанию = 128) 16 до 512 (modulo 16) 
 При выборе CBR, этот параметр поможет вам выбрать постоянный
MP3 аудио битрейт (kbits/s)
 mp3_quality = val (по умолчанию = 5) 1 до 9 (modulo 1) 
 MP3 уровень качества.
 mp3_vbr_mode = on | off (по умолчанию =off) 
 Вкл / выкл "Переменный битрейт" для записи MP3.
 mp3_vbr_quality = val (по умолчанию = 8) от 1 до 8 (modulo 1) 
 Установить уровень качества MP3 VBR.
 fps = fps (по умолчанию = 25) от 1 до 30 (modulo 1) 
 Frame per second. Этот параметр применяется для синхронизации
видео и звука в AVI.
 max_gap = val (по умолчанию = 80) от 1 до 500 ms (modulo 1) 
 Возможный разрыв между аудио и видео в AVI.
Этот параметр применяется для синхронизации
видео и звука в AVI.
 min_quantizer = val (default = 2) от 1 до 64 modulo 1 
 Минимальный квантизер: чем он меньше, тем выше качество.
Помогает изменить качество во время записи.
Если необходимо постоянное качество, уравняйте MIN и MAX.
 max_quantizer = val (по умолчанию = 8) 1 to 64 modulo 1 
 Максимальный квантизер: чем он выше, тем хуже качество.
Помогает изменить качество во время записи.
Если необходимо постоянное качество, уравняйте MIN и MAX.
 audio_buffer_size = val (по умолчанию = 1764) от 441 до 65535 modulo 441 
 размер аудио буфера для записи.
 audio_freq = val (по умолчанию = 44100) 
 Частота звука при записи.
 audio_fmt = val (по умолчанию = s16le) 
 Формат записываемого звука.
 divx_path = path (по умолчанию = $HOME или каталог откуда запускается XdTV) 
 Выбрать каталог для сохранения записанных файлов.
 maxsize = size (по умолчанию = 1024 для MSDOS , иначе 4096) 
 установить макс. размер записываемого файла в s Mb.
 display_frame = on | off (по умолчанию = on) 
 Показывать кадры во время записи.
 record_sub = on | off (по умолчанию = off) 
 Вкл/выкл запись субтитров во время записи AVI.
 record_chg = on | off (по умолчанию = off) 
 Вкл/выкл смену каналов во время записи AVI.
 record_delay = val (по умолчанию = 0,000000) 
 задать разницу между аудио и видео в секундах
 streaming_mode = on | off (по умолчанию = off) 
 вкл. http export записи
(XdTV заработает как http stream server)
 streaming_http_port = val (по умолчанию = 63427) 
 установить порт для http stream
 preview_player = val (по умолчанию = mplayer -nofs -quiet -nosound) 
 Просмотр записываемого видео в выбранном плеере.
Можно также использовать
xdtv -avinoaudioout -avi
 alevt_по умолчаниюpage = val (по умолчанию = 100) 
 Выбрать страницу телетекста по умолчанию. Если набрать 100 200 300
то запустится 3 разных окна alevt с 100, 200 и 300
как страниц по умолчанию.
 alevt_finetune_mode = none | auto | manual 
 Выбрать лучший метод для захвата сигнала телетекста.
 alevt_finetune = val (по умолчанию = 1) 
 Если alevt_finetune_mode = manual, это значение используется для тонкой настройки
сигнала телетекста.
 alevt_error_reduction = yes|no (по умолчанию = yes) 
 Активировать алгоритм для подавления помех в телетексте.
 alevt_error_bell = yes|no (по умолчанию = yes) 
 Выдавать звуковой сигнал при ошибках.
 alevt_vbioffset = yes|no (по умолчанию = yes) 
  Вкл/выкл фикс смещения vbi. Эта ошибка возникает
 на ядрах >=2.6.16.  Обычно включен.
 alevt_charset = latin-1 | latin-2 | koi8-r | iso8859-7 (по умолчанию = latin-1) 
 Выбрать кодировку.
 Если хотите знать больше о поддержке eventmap, читайте README.lirc. 
 Если вы хотите получить больше онформации о продвинутых XviD и FFMpeg параметрах,  
 прочитайте MPlayer маны. Там все понятно. 
 
   
 пример конфиг файла 

 
Во как мой конфиг выглядит:

 #
# Global options
#
norm = SECAM
capture = grab
source = Television
subpage = 888
freqtab = secam-france

mixer_tvchan = Line
restoresnd = off
respectnullsnd = off
vop_autograb = on

xawpopup = on
message_timer = 5000
decoration = off
stayontop = on
subtitles = on
theme = default

#
# Fullscreen options
#
fullscreen = 1024 x 768
fullscreen_mode = 3
pixsize = 128 x 96
windowsize = 256 x 192
colorkey = 123456
capture_size = 768 x 576

#
# Grab options
#
grab_filepath = /home/user
jpeg_compression = 75

#
# XOSD options
#
xosd = on
xosd_main_color = white
xosd_outline_color = red
xosd_outline_offset = 2
xosd_shadow_offset = 2
xosd_main_font = -*-bitstream vera sans-*-*-*-*-*-240-*-*-*-*-*-*
xosd_vtx_font = -*-bitstream vera sans-*-*-*-*-*-180-*-*-*-*-*-*

#
# record options
#
codec = XviD
width = 512
height = 384
bitrate = 800
quality = 1
stereo_mode = no
audio_codec = LAME MP3
mp3_bitrate = 128
mp3_quality = 5
mp3_vbr_mode = off
mp3_vbr_quality = 8
fps = 25
max_gap = 80
audio_fragments = 48
audio_sizefragment = 2048
min_quantizer = 2
max_quantizer = 8
audio_buffer_size = 1764
audio_freq = 44100
audio_fmt = s16le
divx_path = /home/user
maxsize = 692
display_frame = yes
record_sub = no
record_chg = no
record_delay = 0
streaming_mode = off
streaming_http_port = 63427
preview_player = xdtv -avinoaudioout -avi

#
# record advanced options
#
ffmpeg_v4mv = no
ffmpeg_naq = no
ffmpeg_gray = no
ffmpeg_gmc = no
ffmpeg_qpel = no
ffmpeg_ildct = no
ffmpeg_keyint = 250
ffmpeg_vmax_b_frames = 0
ffmpeg_vlelim = 0
ffmpeg_vcelim = 0
ffmpeg_lumi_mask = 0
ffmpeg_dark_mask = 0
ffmpeg_tcplx_mask = 0
ffmpeg_scplx_mask = 0
ffmpeg_dia = 0
ffmpeg_cmp = 0
ffmpeg_subcmp = 0
ffmpeg_trell = no
ffmpeg_last_pred = 0
ffmpeg_predia = 0
ffmpeg_precmp = 0
ffmpeg_umv = no
ffmpeg_aic = no
ffmpeg_mbd = 0
ffmpeg_cbp = no
ffmpeg_obmc = no
ffmpeg_ss = no
ffmpeg_aiv = no
ffmpeg_loop = no
ffmpeg_ilme = no
xvid_vhq = 0
xvid_bvhq = no
xvid_chromame = no
xvid_chroma_opt = no
xvid_hqacpred = no
xvid_trell = no
xvid_cartoon = no
xvid_gray = no
xvid_interlacing = no
xvid_turbo = yes
xvid_qpel = no
xvid_gmc = no
xvid_keyint = 250
xvid_frame_drop_ratio = 0
xvid_vmax_b_frames = 0
xvid_bquant_ratio = 150
xvid_bquant_offset = 100
xvid_packed = yes
xvid_closed_gop = yes
xvid_bframe_threshold = 0
xvid_reaction_delay_factor = 16
xvid_averaging_period = 100
xvid_buffer = 100
xvid_max_I_quantizer = 12
xvid_min_I_quantizer = 2
xvid_max_P_quantizer = 12
xvid_min_P_quantizer = 2
xvid_max_B_quantizer = 12
xvid_min_B_quantizer = 2

#
# eventmap
#
lirc-key-0 = keypad 0
repeat = 1
lirc-key-1 = keypad 1
repeat = 1
lirc-key-2 = keypad 2
repeat = 1
lirc-key-3 = keypad 3
repeat = 1
lirc-key-4 = keypad 4
repeat = 1
lirc-key-5 = keypad 5
repeat = 1
lirc-key-6 = keypad 6
repeat = 1
lirc-key-7 = keypad 7
repeat = 1
lirc-key-8 = keypad 8
repeat = 1
lirc-key-9 = keypad 9
repeat = 1
lirc-key-ch+ = setstation next
repeat = 0
lirc-key-ch- = setstation prev
repeat = 0
lirc-key-vol+ = volume inc
repeat = 0
lirc-key-vol- = volume dec
repeat = 0
lirc-key-Mute = volume mute
repeat = 1
lirc-key-full_screen = fullscreen toggle
repeat = 1
lirc-key-source = setinput next
repeat = 0
lirc-key-record = record
repeat = 0
lirc-key-status = status
repeat = 0
lirc-key-preview = preview
repeat = 0

#
# alevt options
#
alevt_defaultpage = 100
alevt_finetune_mode = none
alevt_finetune = 1
alevt_error_reduction = yes
alevt_error_bell = yes
alevt_vbioffset = yes
alevt_charset = latin-1

#
# Channel options
#
[TF1]
channel = 25
key = KP_End
bright = 35920
hue = 27689
deinterlace = Linear Blend

[France2]
channel = 22
key = KP_Down
color = 13366
bright = 33988
hue = 32252
contrast = 27996
deinterlace = Linear Blend

[France3]
channel = 28
key = KP_Next
deinterlace = Linear Blend

[Canal+]
channel = K06
key = KP_Left
deinterlace = Linear Blend

[Arte / La Cinquieme]
channel = 30
key = KP_Begin
deinterlace = Linear Blend
subpage = 150

[M6]
channel = 33
key = KP_Right
color = 18371
norm = PAL
deinterlace = Linear Blend

[external]
key = KP_Home
source = Composite1
deinterlace = Linear Blend

 

   
 BUGS 

Чо это?
   
 СМ. ТАКЖЕ 


 http://bytesex.org/xawtv/  (xawtv homepage)

 http://bytesex.org/bttv/  (bttv driver homepage)

 http://lecker.essen.de/~froese/  (AleVT videotext decoder)

   
 AUTHOR 

Оригинальный xawtv от Gerd Knorr < kraxel@bytesex.org >

Пожалуйста
 NOT 

обращайтесь к нему по вопросам, касающимся XdTV.
Это здорово загрузит его е-мэйл, на что ему абсолютно начхать.
Задавайте вопросы на соответствующих форумах...

Оригинальный AleVT видеотекст декодер от Edgar Toerning < froese@gmx.de >

Пожалуйста
 NOT 

обращайтесь к нему по вопросам, касающимся встроенного в XdTV декодера AleVT.
Это здорово загрузит его е-мэйл. Но и ему абсолютно начхать.
Задавайте вопросы на соответствующих форумах...

   
 COPYRIGHT 

Copyright (C) 1997,1998 Gerd Knorr < kraxel@bytesex.org >

Copyright (C) 1998,1999,2000 Edgar Toerning < froese@gmx.de >

Copyright (C) 2000,2003 Keuleu

Copyright (C) 2003-2005 Alain, Bart, Blindman, Calimero, Cooly, CycyX, CuC, Nico, Mat, Maupatz, Pingus

Copyright (C) 2006 Alain, CuC, Nico, Pingus

Эта программа распостраняется свободно; вы можете передавать и/или изменять ее
в соответствиис GNU General Public License опубликованной
  Free Software Foundation; или версией 2 этой лицензии, или 
любой более поздней версии.

Эта программа распостраняется в надежде,что она окажется полезной,
но БЕЗ КАКИХ_ЛИБО ГАРАНТИЙ; без какой-либо гарантии пригодности для особых целей.  См.
GNU General Public License для подробной информации.

Вы должны получить копию GNU General Public License
вместе с этой программой; если нет, пишите на Free Software
Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.

 

 
   Index 
 
 NAME 
 SYNOPSIS 
 DESCRIPTION 
 OPTIONS 
 GETTING STARTED 
 
 Функции мыши 
 Клавиатурные сокращения 
 пример конфиг файла 
 
 BUGS 
 СМ. ТАКЖЕ 
 AUTHOR 
 COPYRIGHT 
 
 
 
 
 
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