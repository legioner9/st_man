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
 
 
 
 console_codes (4) >>  console_codes  (4)   ( Русские man: Специальные файлы /dev/* )   console_codes  (4)   ( Linux man: Специальные файлы /dev/* ) 
   
 НАЗВАНИЕ 

console_codes - управляющие и ESC-последовательности консоли Linux
   
 ОПИСАНИЕ 

Консоль Linux имеет большой набор средств управления
терминалами VT102 и ECMA-48/ISO 6429/ANSI X3.64, а также некоторым
количеством частных последовательностей для изменения цветовой
палитры, распределений символьного набора и т.п.
В таблицах, приведенных ниже (во второй колонке), указывается
мнемонический код ECMA-48 или DEC (если последнее приписано к DEC) данной функции.
Последовательности без мнемонического кода не принадлежат ни к ECMA-48, ни к VT102.
 

Первым процессом, который выполняется после работы обычного
процесса по выводу информации и отправки к драйверу потока символов 
консоли (для их реального вывода), является перевод кодов, используемых при
обычной работе, в коды, применяемые для печати.
 

Если консоль работает в режиме UTF-8, то входящие байты сначала
организуются в 16-битовом уникоде. В ином случае каждый байт
преобразуется согласно текущей таблице распределения, которая переводит
данные в уникод.
(Смотри раздел НАБОРЫ СИМВОЛОВ ниже).
 

Обычно значения уникода преобразуются в индекс шрифта, который
сохраняется в видеопамяти таким образом, что соответствующий глиф
(обнаруженный в видео-ПЗУ) появляется на экране.
Заметим, что работа с уникодом (и текущими аппаратными средствами компьютеров)
позволяет одновременно использовать только 512 глифов.
 

Если текущим значением уникода является управляющий символ или если в
данный момент обрабатывается ESC-последовательность, значение будет
обрабатываться особым образом.
Вместо того, чтобы значение преобразовало себя в шрифт и отобразилось как глиф,
оно будет выполнять определенные действия (например, передвигать курсор) или
выполнять какие-нибудь другие функции управления.
Смотрите ниже раздел УПРАВЛЕНИЕ КОНСОЛЬЮ LINUX.
 

Некорректно строго задавать программам управление терминалом.
Linux поддерживает работу с базой возможностей терминала.
 terminfo (5) . 

Предпочитая не вводить управляющие ESC-последовательности вручную,
Вы, наверняка, захотите использовать для этой работы
библиотеку информации об экране terminfo-aware или другие утилиты, такие, как:
 ncurses (3),

 tput (1)

или
 reset (1).

   
 УПРАВЛЕНИЕ КОНСОЛЬЮ В LINUX 

Этот раздел описывает все управляющие символы и ESC-последовательности,
которые выполняют специальные команды (т.е., все, что отличается от
простого вывода символа в текущую позицию курсора) консоли Linux.
   
 Управляющие символы 

Символ считается управляющим, если (до преобразования 
согласно таблице перекодировки) он содержит один из 14-и кодов:
00 (NUL), 07 (BEL), 08 (BS), 09 (HT), 0a (LF), 0b (VT),
0c (FF), 0d (CR), 0e (SO), 0f (SI), 18 (CAN), 1a (SUB),
1b (ESC), 7f (DEL).
Можно установить режим `показывать управляющие символы' (см. ниже),
при этом символы 07, 09, 0b, 18, 1a, 7f будут выводиться на экран как глифы.
С другой стороны, в режиме UTF-8 все коды с 00 по 1f воспринимаются как
управляющие символы (независимо от режима `показывать управляющие символы').
Если встречается управляющий символ, то он немедленно указывается, 
а в дальнейшем никак не учитывается (даже если он стоял в середине
ESC-последовательности), и управляющая последовательность продолжается со
следующего символа.
Однако, символ ESC, начинающий новую управляющую последовательность,
возможно, отменит незаконченную предыдущую последовательность,
а команды CAN и SUB точно закончат управляющую последовательность.
Распознаваемыми управляющими символами являются: BEL, BS, HT, LF, VT, FF,
CR, SO, SI, CAN, SUB, ESC, DEL, CSI. Они выполняют стандартные для них действия:
 
 
 BEL (0x07, ^G) издает звуковой сигнал;
 
 BS (0x08, ^H) удаляет предыдущий символ (смещается влево на одну колонку,
но не далее, чем за начало строки);
 
 HT (0x09, ^I) перемещается на следующую позицию табуляции или в конец строки,
если до этого не было установлено позиций табуляции;
 
 LF (0x0A, ^J), VT (0x0B, ^K) и FF (0x0C, ^L) задают перевод строки;
 
 CR (0x0D, ^M) задает перевод каретки;
 
 SO (0x0E, ^N) приводит в действие набор символов G1,
и если LF/NL (режим новой строки) включен, то задает перевод каретки;
 
 SI (0x0F, ^O) приводит в действие набор символов G0;
 
 CAN (0x18, ^X) и SUB (0x1A, ^Z) прерывают ESC-последовательность;
 
 ESC (0x1B, ^[) начинает ESC-последовательность;
 
 DEL (0x7F) игнорируется;
 
 CSI (0x9B) эквивалентно ESC [.

 
   
 ESC- , но не CSI-последовательности 

 
 ESC c RIS Сброс. 
 ESC D IND Пропуск строки. 
 ESC E NEL Новая строка. 
 ESC H HTS Установить позицию табуляции в текущей колонке. 
 ESC M RI Возврат строки (обратный пропуск). 
 ESC Z DECID Частное определение DEC. Система 
 возвращает строки ESC [ ? 6 c, претендуя на VT102. 
 ESC 7 DECSC Сохранить текущую состояние (координаты курсора, 
 атрибуты, наборы символов, указанные G0, G1). 
 ESC 8 DECRC Восстановить последнее сохраненное ESC 7 состояние. 
 ESC [ CSI Ввод управляющей последовательности 
 ESC % Начать последовательность с выбором набора символов 
 ESC % @    выбрать по умолчанию (ISO 646 / ISO 8859-1) 
 ESC % G    выбрать UTF-8 
 ESC % 8    выбрать UTF-8 (устаревшее) 
 ESC # 8 DECALN экранный тест на выравнивание DEC: заполняет экран символами E. 
 ESC ( Начать последовательность с выбором набора символов G0 
 ESC ( B    выбрать по умолчанию (распределение ISO 8859-1) 
 ESC ( 0    выбрать графическое распределение vt100 
 ESC ( U    выбрать null-распределение: сразу в символьное ПЗУ 
 ESC ( K    выбрать распределение пользователя: загружаемое 
    утилитой  mapscrn (8). 
 ESC ) Начать последовательность с выбором набора смволов G1 
 (включая символы: B, 0, U, K,- как в примере выше). 
 ESC > DECPNM Использовать дополнительную клавиатуру как цифровую 
 ESC = DECPAM Использовать дополнительную клавиатуру как управляющую 
 ESC ] OSC (Сокращение "команд операционной системы") 
 ESC ] P  nrrggbb : установить палитру с параметрами, 
 заданными в 7-и шестнадцатеричных разрядах после последнейP :-(. 
 Здесь  n  является цветом 0-16, а  rrggbb  указывает 
 на использование красного/зеленого/голубого цвета (0-255). 
 ESC ] R: сбросить палитру 
 

   
 ECMA-48 CSI-последовательности 

CSI (или ESC [) сопровождаются последовательностью параметров, являющихся
десятичными номерами, разделенными точкой с запятой (самый больший из них - NPAR (16)).
"Пустой" параметр (или отсутствие его) приравнивается нулю.
Последовательность параметров может начинаться одним знаком вопроса.
Тем не менее, после CSI [ (или ESC [ [) считывается единственный символ
и оставшаяся часть последовательности игнорируется.
(Смысл этого в том, чтобы игнорировать отображаемую функциональную клавишу).
Результат задания CSI-последовательности определяется ее конечным символом.
 
 @ ICH Вставить N  пустых символов. 
 A CUU Переместить курсор вверх на N рядов. 
 B CUD Переместить курсор вниз на N рядов. 
 C CUF Переместить курсор вправо на N столбцов. 
 D CUB Переместить курсор влево на N столбцов. 
 E CNL Переместить курсор вниз на N рядов, в столбец #1. 
 F CPL Переместить курсор вверх на N рядов, в столбец #1. 
 G CHA Переместить курсор в указанный столбец текущего ряда. 
 H CUP Переместить курсор в указанный ряд и столбец (начало в 1,1). 
 J ED "Очистить" экран (по умолчанию от курсора до конца экрана). 
 ESC [ 1 J: "очистить" от начала столбца до курсора. 
 ESC [ 2 J: "очистить" весь экран. 
 K EL "Очистить" строку (по умолчанию от курсора до ее конца). 
 ESC [ 1 K: "очистить" от начала строки до курсора. 
 ESC [ 2 K: "очистить" всю строку. 
 L IL Вставить N пустых строк. 
 M DL Удалить N строк. 
 P DCH Удалить (со смещением в строке) N символов в текущей строке. 
 X ECH "Очистить" (без смещения в строке) N символов в текущей строке. 
 a HPR Переместить курсор вправо на N столбцов. 
 c DA Ответить ESC [ ? 6 c: `Я являюсь VT102'. 
 d VPA Переместить курсор в указанный ряд текущего столбца. 
 e VPR Переместить курсор вниз на N рядов. 
 f HVP Переместить курсор в указанный ряд и столбец. 
 g TBC Без параметров: "очистить" текущую позицию табуляции. 
 ESC [ 3 g: удалить все позиции табуляции. 
 h SM Режим установки (см. ниже). 
 l RM Режим сброса (см. ниже). 
 m SGR Установка атрибутов (см. ниже). 
 n DSR Отчет о статусе (см. ниже). 
 q DECLL Установить режимы работы индикаторов на клавиатуре. 
 ESC [ 0 q: выключить все индикаторы 
 ESC [ 1 q: включить индикатор "Scroll Lock" 
 ESC [ 2 q: включить индикатор "Num Lock" 
 ESC [ 3 q: включить индикатор "Caps Lock"  
 r DECSTBM Установить область прокрутки; параметрами будут верхний и нижний ряды. 
 s ? Сохранить местоположение курсора. 
 u ? Восстановить местоположение курсора. 
 ` HPA Переместить курсор в указанный столбец текущего ряда. 
 

   
 ECMA-48 Установка параметров графики 

Последовательность ECMA-48 SGR управляющих символов ESC [ <parameters> m
устанавливает атрибуты экрана.
Несколько атрибутов могут быть заданы в одной последовательности.
 

 
 парам. результат 
 0 сбросить все атрибуты в их значения по умолчанию 
 1 установить жирный шрифт 
 2 установить более яркий (имитированное цветом на цветном дисплее) 
 4 установить подчеркивание (имитированное цветом на цветном дисплее); 
 цвета, используемые для имитации затемнения или подчеркивания, устанавливаются 
 при помощи ESC ] ... 
 5 включить мерцание 
 7 включить режим инвертированного видео 
 10 сбросить выбранное распределение, флаги управления экраном 
 и переключить метафлаг 
 11 выбрать null-распределение, установить флаг управления экраном, 
 сбросить переключатель метафлага. 
 12 выбрать null-распределение, установить флаг управления экраном, 
 включить переключатель метафлага. Переключение метафлага 
 задает переключение старшего бита в байте  
 до его трансформации согласно таблице распределения. 
 21 включить режим нормальной интенсивности (несовместимо с ECMA-48) 
 22 выключить режим нормальной интенсивности 
 24 выключить подчеркивание 
 25 выключить мерцание 
 27 выключить инвертированное видео 
 30 установить черный цвет символов 
 31 установить красный цвет символов  
 32 установить зеленый цвет символов  
 33 установить коричневый цвет символов  
 34 установить синий цвет символов  
 35 установить сиреневый цвет символов  
 36 установить голубой цвет символов  
 37 установить белый цвет символов  
 38 включить подчеркивание, установить цвет символов по умолчанию 
 39 выключить подчеркивание, установить цвет символов по умолчанию 
 40 установить черный цвет фона 
 41 установить красный цвет фона  
 42 установить зеленый цвет фона  
 43 установить коричневый цвет фона  
 44 установить синий цвет фона 
 45 установить сиреневый цвет фона  
 46 установить голубой цвет фона  
 47 установить белый цвет фона  
 49 установить цвет фона по умолчанию 
 

   
 ECMA-48 Переключение режимов 

 
 ESC [ 3 h 
DECCRM (по умолчанию выключено): Показывать управляющие символы.
 ESC [ 4 h 
DECIM (по умолчанию выключено): Установить режим вставки/замены.
 ESC [ 20 h 
LF/NL (по умолчанию выключено): Автоматически выводить код CR после кодов: LF, VT или FF.

 
   
 ECMA-48 Команды сообщения статуса 


 
 ESC [ 5 n 
Сообщение о статусе устройства (DSR): Ответом является ESC [ 0 n (Терминал в порядке).
 ESC [ 6 n 
Сообщение о позиции курсора (CPR): Ответом является ESC [  y  ;  x  R,
где  x,y  являются координатами курсора.

 
   
 DEC-последовательности частного режима (DECSET/DECRST) 


Не описаны в ECMA-48. Далее будут перечислены последовательности установки режимов;
в последовательности для сброса режимов последний знак `h' заменяется на `l'.
 
 ESC [ ? 1 h 
DECCKM (по умолчанию выключено): Если включено, то клавиши курсора выдают
сигнал, начинающийся с ESC O, а не с ESC [.
 ESC [ ? 3 h 
DECCOLM (по умолчанию выключено = 80 столбцов): режим переключения количества
столбцов на 80 или 132. В исходных версиях драйвера задано, что одной этой команды
недостаточно; некоторые пользовательские утилиты, использующие
нестандартные режимы, такие, как
 resizecons (8),

должны менять регистры настройки консольной видеокарты.
 ESC [ ? 5 h 
DECSCNM (по умолчанию выключено): Включить инвертированный видеорежим.
 ESC [ ? 6 h 
DECOM (по умолчанию выключено): Если включено, то координаты курсора рассматриваются
относительно верхнего левого угла в области прокрутки.
 ESC [ ? 7 h 
DECAWM (по умолчанию включено): Включить режим автопереноса. В этом режиме
графический символ, вводящийся после столбца #80 (или #132, если DECCOLM включено),
переносится в начало следующей строки.
 ESC [ ? 8 h 
DECARM (по умолчанию включено): Включить режим автоповтора символов при нажатии клавиши клавиатуры.
 ESC [ ? 9 h 
X10 Отчет о состоянии мыши (по умолчанию выключено): Установить режим отчета о состоянии
мыши, равным единице или нулю (сброс), см. ниже.
 ESC [ ? 25 h 
DECCM (по умолчанию включено): Сделать курсор видимым.
 ESC [ ? 1000 h 
X11 Отчет о состоянии мыши (по умолчанию выключено): Установить режим отчета о состоянии
мыши, равным 2-м или нулю (сброс), см. ниже.

 
   
 Частные последовательности CSI консоли Linux 


Следующие последовательности не являются ни ECMA-48-, ни VT102-последовательностями.
Они являются "родными" для драйвера консоли Linux. Цвета в параметрах SGR:
0 = черный, 1 = красный, 2 = зеленый, 3 = коричневый, 4 = синий,
5 = сиреневый, 6 = голубой, 7 = белый.
 
 ESC [ 1 ;  n  ] Установить цвет  n  как цвет подчеркивания 
 ESC [ 2 ;  n  ] Установить цвет  n  как цвет затемнения 
 ESC [ 8 ]        Установить текущую пару цветов атрибутами по умолчанию. 
 ESC [ 9 ;  n  ] Установить начало "очистки" экрана через  n  минут. 
 ESC [ 10 ;  n  ] Установить частоту звукового сигнала (в герцах). 
 ESC [ 11 ;  n  ] Установить длительность звукового сигнала в( миллисекундах). 
 ESC [ 12 ;  n  ] Переместить указанную консоль впереди остальных. 
 ESC [ 13 ]       Восстановить экран после "очистки". 
 ESC [ 14 ;  n  ]    Установить VESA-интервал отключения (в минутах). 
 

   
 НАБОРЫ СИМВОЛОВ 

Ядро располагает информацией о 4-х типах перевода байтов в символы консоли экрана.
Эти четыре таблицы являются трансформирующими:
a) Latin1 -> PC,  b) графика VT100 -> PC, c) PC -> PC,
d) определяется пользователем.
В системе вообще существует два набора символов, называемых G0 и G1,
и один из них является текущим набором системы (изначально это G0).
Ввод ^N заставляет набор G1 стать текущим, ^O делает текущим набор G0.
Переменные G0 и G1 указывают на таблицы символов и могут меняться пользователем.
Изначально они указывают на таблицы a) и b) соответственно.
Последовательности ESC ( B и ESC ( 0 и ESC ( U и ESC ( K заставляют G0 ссылаться
на таблицы перевода a), b), c) и d) соответственно.
Последовательности ESC ) B и ESC ) 0 и ESC ) U и ESC ) K заставляют G1 ссылаться
на таблицы перевода a), b), c) и d) соответственно.
Последовательность ESC c приводит к сбросу терминала, то есть к тому, что
Вам необходимо при наличии "мусора" на экране.
Рекомендация, указанная после "echo ^V^O", только сделает G0 текущим набором,
но нет никакой гарантии, что G0 будет указывать на таблицу a).
В некоторых версиях есть программа
 reset (1) , 

которая всего лишь выполняет команду "echo ^[c".
Если элемент terminfo является правильным для консоли (и содержит элемент rs1=\Ec),
то "tput reset" также будет выполнять операции.
Определенная пользователем таблица распределения может быть установлена с помощью
 mapscrn (8).

Результатом распределения будет то, что при указании символа c
в видеопамять будет отправлен символ s = map[c] .
Побитное изображение, соответствующее s, ищется в ПЗУ символов
и может меняться при помощи
 setfont (8).

   
 ОТСЛЕЖИВАНИЕ МЫШИ 

Система для отслеживания работы мыши предполагает выдачу xterm-совместимых
сигналов о статусе мыши. Так как драйвер консоли не распознает такого устройства,
как мышь (или ее типа), то эти сигналы отправляются во входной поток консоли,
только когда драйвер виртуального терминала получает сигнал 
ioctl об обновлении статуса мыши. Эти сигналы ioctls должны генерироваться 
пользовательскими приложениями, поддерживающими работу с мышью (такими, как
демон  gpm (8) ).
Параметром для всех созданных  xterm  ESC-последовательностей 
(сигналов о перемещении мыши) будет один символ, код которого равен
 value +040. Например, `!' соответствует единице. Система координат экрана
при отслеживании работы мыши базирована на знаке единицы.
В режиме совместимости с X10 при нажатии на кнопки посылаются 
ESC-последовательности, в которых кодируется и состояние мыши, и информация
о нажатой кнопке. Режим запускается при выдаче ESC [ ? 9 h и выключается
при выдаче ESC [ ? 9 l. При нажатии на кнопку  xterm  посылает
ESC [ M  bxy  (6 символов), где  b  - это кнопка-1,
а  x  и  y  равны координатам x и y при нажатии на эту кнопку.
Это такие же коды, какие генерируют и выдают ядро системы.
В обычном режиме отслеживания мыши (который не был реализован в Linux 2.0.24) 
ESC-последовательности посылаются при нажатии и при отпускании кнопки мыши.
Также посылается информация о модификаторе. Запускается режим при выдаче
ESC [ ? 1000 h и выключается при выдаче ESC [ 1000 l.
При нажатии и отпускании кнопки  xterm  выдает ESC [ M  bxy .  
Два нижних бита  b  содержат информацию о кнопках:
0=MB1 нажата, 1=MB2 нажата, 2=MB3 нажата, 3=отпущена.
Старшие биты содержат информацию о том, какие модификаторы были выключены
когда кнопка была нажата. Эта информация складывается при нажатии: 
4=Shift, 8=Meta, 16=Control.  Еще раз:  x  и  y  являются координатами x и y 
мыши при обработке события. Координаты верхнего левого угла рассматриваются как (1,1).
   
 СРАВНЕНИЕ С ДРУГИМИ ТЕРМИНАЛАМИ 

Множество других типов терминалов описаны наподобие консоли Linux 
(как `VT100-совместимые'). Далее мы обсудим различия между Linux- 
консолью и двумя другими важнейшими типами, DEC VT102 и
 xterm (1).


   
 Обработка управляющих символов 

Тип vt102 также распознает следующие управляющие символы:
 
 
 NUL (0x00) был проигнорирован;
 
 ENQ (0x05) запущено обратное ответное сообщение;
 
 DC1 (0x11, ^Q, XON) продолженная передача;
 
 DC3 (0x13, ^S, XOFF) указывает, что vt100 необходимо игнорировать и останавливать передачу
всех кодов за исключением XOFF и XON
 
 

VT100-подобная DC1/DC3 обработка может быть запущена драйвером tty.
 

Программа
 xterm 

(в режиме vt100) распознает управляющие следующие символы:
BEL, BS, HT, LF, VT, FF, CR, SO, SI, ESC.

   
 ESC-последовательности 

VT100-последовательности консоли, не реализованные в консоли Linux:
 

 
 ESC N SS2 Сдвиг на 2. (Выбрать набор символов G2 только для следующего 
 символа.) 
 ESC O SS3 Сдвиг на 3. (Выбрать набор символов G3 только для следующего 
 символа.) 
 ESC P DCS Строка управления устройством (заканчивается на ESC \) 
 ESC X SOS Начало строки. 
 ESC ^ PM Частное сообщение (заканчивается на ESC \) 
 ESC \ ST Завершающий 0 строки 
 ESC * ... Определить набор символов G2 
 ESC + ... Определить набор символов G3 
 

Программа
 xterm 

(в режиме vt100) распознает: ESC c, ESC # 8, ESC >, ESC =,
ESC D, ESC E, ESC H, ESC M, ESC N, ESC O, ESC P ... ESC ,
ESC Z (оно выдает последовательности ESC [ ? 1 ; 2 c ответ: `Я являюсь vt100 
с улучшенными видеопараметрами')
и ESC ^ ... ESC  с теми же значениями, какие указаны выше.
Принимаются: ESC (, ESC ), ESC *,  ESC +,- сопровождаемые 0, A, B для
специальных символов DEC и режима рисования линий, UK и USASCII
соответственно.
Принимаются ESC ] для установки работы таких ресурсов, как:
 

 
 ESC ] 0 ; txt BEL Установить имя иконки и заголовок окна в режиме txt. 
 ESC ] 1 ; txt BEL Установить имя иконки в режиме txt. 
 ESC ] 2 ; txt BEL Установить заголовок окна в режиме txt. 
 ESC ] 4 6 ; name BEL Сменить файл логов на name (обычно отключено 
  параметрами компиляции) 
 ESC ] 5 0 ; fn BEL Установить шрифт fn. 
 

Распознаются следующие параметры с несколько измененным значением:
 

 
 ESC 7  DECSC Сохранить курсор 
 ESC 8  DECRC Восстановить курсор 
 

Также распознается
 

 
 ESC F Курсор в нижний левый угол экрана (если разрешено 
  ресурсом hpLowerleftBugCompat) 
 ESC l Блокирование памяти (для HP-терминалов). 
 Блокирует память выше курсора. 
 ESC m Разблокирование памяти (для HP-терминалов). 
 ESC n LS2 Ввод набора символов G2. 
 ESC o LS3 Ввод набора символов G3. 
 ESC | LS3R Ввод набора символов G3 в качестве GR. 
 Не имеет видимого эффекта в xterm. 
 ESC } LS2R Ввод набора символов G2 в качестве GR. 
 Не имеет видимого эффекта в xterm. 
 ESC ~ LS1R Ввод набора символов G1 в качестве GR. 
 Не имеет видимого эффекта в xterm. 
 

Не распознается ESC % ...

   
 CSI-последовательности 

Программа
 xterm 

(по данным XFree86 3.1.2G) не распознает мерцание или режим невидимости
SGRs. Версии X11R6 не распознают цветоустановки SGR.
Все другие ECMA-48 CSI-последовательности, распознаваемые Linux,
также распознаются 
 xterm 

и наоборот.
Программа
 xterm 

будет распознавать все последовательности частного режима DEC,
перечисленные выше, но не будут распознавать ни одну из
последовательностей частного режима в Linux.  Для обсуждения
последовательностей частного режима для
 xterm 

обратитесь к документу
 Xterm Control Sequences ,

созданного Edward Moy и Stephen Gildea и сопровождаемого дистрибутивом X Window System.
   
 НАЙДЕННЫЕ ОШИБКИ  

В версии 2.0.23 набор CSI является неправильным и недейственным, NUL не игнорируется
внутри ESC-последовательностей.
   
 СМ. ТАКЖЕ 

 console (4),

 console_ioctl (4),

 charsets (7)

 

 
   Index 
 
 НАЗВАНИЕ 
 ОПИСАНИЕ 
 УПРАВЛЕНИЕ КОНСОЛЬЮ В LINUX 
 
 Управляющие символы 
 ESC- , но не CSI-последовательности 
 ECMA-48 CSI-последовательности 
 ECMA-48 Установка параметров графики 
 ECMA-48 Переключение режимов 
 ECMA-48 Команды сообщения статуса 
 DEC-последовательности частного режима (DECSET/DECRST) 
 Частные последовательности CSI консоли Linux 
 
 НАБОРЫ СИМВОЛОВ 
 ОТСЛЕЖИВАНИЕ МЫШИ 
 СРАВНЕНИЕ С ДРУГИМИ ТЕРМИНАЛАМИ 
 
 Обработка управляющих символов 
 ESC-последовательности 
 CSI-последовательности 
 
 НАЙДЕННЫЕ ОШИБКИ  
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