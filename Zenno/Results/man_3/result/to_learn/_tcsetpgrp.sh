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
 
 
 
 tcsetpgrp (3)   tcsetpgrp  (3)   ( Solaris man: Библиотечные вызовы )   tcsetpgrp  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  tcsetpgrp  (3)   ( Русские man: Библиотечные вызовы )   tcsetpgrp  (3)   ( Linux man: Библиотечные вызовы )   tcsetpgrp  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

cfmakeraw, cfgetospeed, cfgetispeed, cfsetispeed, cfsetospeed - получение
и изменение атрибутов терминала, управление последовательным портом,
определение и изменение скорости обмена информацией
   
 СИНТАКСИС 


 
#include < termios.h >
 

#include < unistd.h >
 
int tcgetattr(int  fd , struct termios * termios_p ); 

 
 int tcsetattr(int  fd , int  optional_actions , struct termios * termios_p ); 

 
 int tcsendbreak(int  fd , int  duration ); 

 
 int tcdrain(int  fd ); 

 
 int tcflush(int  fd , int  queue_selector ); 

 
 int tcflow(int  fd , int  action ); 

 
 int cfmakeraw(struct termios * termios_p ); 

 
 speed_t cfgetispeed(struct termios * termios_p ); 

 
 speed_t cfgetospeed(struct termios * termios_p ); 

 
 int cfsetispeed(struct termios * termios_p , speed_t  speed ); 

 
 int cfsetospeed(struct termios * termios_p , speed_t  speed ); 



   
 ОПИСАНИЕ 

Функции termios описывают общий терминальный интерфейс,
гарантирующий управление асинхронным коммуникационным портом.
 

Большинство функций, описанных здесь, используют параметр  termios_p ,
который указывает на структуру  termios .  
Данная структура содержит, как минимум, следующие элементы:

 
 
 tcflag_t  c_iflag ;      /* режимы ввода */
tcflag_t  c_oflag ;      /* режимы вывода */
tcflag_t  c_cflag ;      /* режимы управления */
tcflag_t  c_lflag ;      /* режимы локали */
cc_t  c_cc [ NCCS ];       /* управляющие символы */
 

 

 

 c_iflag  - флаги констант:
 
 IGNBRK 

 
игнорировать режим BREAK при вводе.
 BRKINT 

 
если включен  IGNBRK  то BREAK игнорируется. Если он не включен,                                                                                                          
а  BRKINT  включен, то BREAK вызывает сброс очередей, и, если                                                                                                    
терминал является управляющим для группы процессов переднего плана, то
группе будет отослан сигнал  SIGINT . Если ни  IGNBRK  ни  BRKINT  
не включены, то BREAK считывается как нулевой символ, кроме случая
когда установлено  PARMRK , тогда он будет считан, как
последовательность \377 \0 \0.
 IGNPAR 

 
игнорировать ошибки четности и позиционирования.
 PARMRK 

 
если не включен режим  IGNPAR , то сопровождать
символ с ошибкой четности или позиционирования префиксом \377 \0.
Если не включен ни  IGNPAR , ни  PARMRK ,
то считывать символ с ошибкой четности или позиционирования как \0.
 INPCK 

 
запускать проверку четности при вводе.
 ISTRIP 

 
удалять восьмой бит.
 INLCR 

 
преобразовывать NL в CR при вводе.
 IGNCR 

 
игнорировать перевод каретки при вводе.
 ICRNL 

 
преобразовывать перевод каретки в конец строки при вводе
(пока не будет запущен  IGNCR ).
 IUCLC 

 
(не включено в POSIX) отображать символы верхнего регистра в нижнем
регистре при вводе.
 IXON 

 
запустить управление потоком данных XON/XOFF при выводе.
 IXANY 

 
(не включено в POSIX.1; XSI) позволить любому символу заново
запускать вывод.
 IXOFF 

 
запустить управление потоком данных XON/XOFF при вводе.
 IMAXBEL 

 
(не включено в POSIX) выдавать звуковой сигнал, когда очередь
ввода переполнится.
Linux не использует этот бит и действует так. будто он всегда включен.
 
 

Константы для флага  c_oflag , включенные в POSIX.1:
 
 OPOST 

 
включить режим вывода, определяемый реализацией по умолчанию.
 
 

Остальные константы для флага  c_oflag  определены в
POSIX 1003.1-2001 (если явно не указано иначе).
 
 OLCUC 

 
(не включено в POSIX)
отображать символы нижнего регистра в верхнем регистре при выводе.
 ONLCR 

 
(XSI) преобразовывать NL в CR-NL при выводе.
 OCRNL 

 
преобразовывать CR в NL при выводе.
 ONOCR 

 
не выводить CR в столбце 0.
 ONLRET 

 
не выводить CR.
 OFILL 

 
посылать символы заполнения для задержки, а не использовать
синхронизированную задержку.
 OFDEL 

 
(не включено в POSIX) установить символ заполнения ASCII DEL (0177).  
Иначе установить символ заполнения ASCII NUL.
 NLDLY 

 
маска задержки конца строки. Значениями будут  NL0  и  NL1 .
 CRDLY 

 
маска задержки перевода каретки. 
Значениями будут:  CR0 ,  CR1 ,  CR2  или  CR3 .
 TABDLY 

 
маска задержки горизонтальной табуляции. 
Значениями будут:  TAB0 ,  TAB1 ,  TAB2 ,  TAB3  (или  XTABS ). 
Значение TAB3 или, иначе, XTABS "расширяет" табуляцию в пробелы
(с символами табуляции в каждой восьмой позиции).
 BSDLY 

 
маска задержки символа забоя.  
Значением будет  BS0  или  BS1 .
(Никогда не была реализована.)
 VTDLY 

 
маска задержки вертикальной табуляции. 
Значением будет  VT0  или  VT1 .
 FFDLY 

 
маска задержки прокрутки страницы. 
Значением будет  FF0  или  FF1 .
 
 

Константы для флага  c_cflag :
 
 CBAUD 

 
(не включено в POSIX) маска скорости в бодах (4+1 бита).
 CBAUDEX 

 
(не включено в POSIX) дополнительная маска скорости в бодах
(1 бит), включена в CBAUD.
 
 

(В стандарте POSIX указано, что скорость в бодах хранится в структуре
termios, без указания ее точного местонахождения, и предоставляет
 cfgetispeed() 

и
 cgfsetispeed() 

для получения доступа к ней. Некоторые системы используют биты,
выбираемые CBAUD в
 c_cflag ,

другие используют отдельные поля, например
 sg_ispeed 

и
 sg_ospeed .)

 
 CSIZE 

 
маска размера символов. 
Значениями будут:  CS5 ,  CS6 ,  CS7  или  CS8 .
 CSTOPB 

 
устанавливать два стоповых бита вместо одного.
 CREAD 

 
включить прием.
 PARENB 

 
запустить генерацию четности при выводе и проверку четности на вводе.
 PARODD 

 
установить нечетность на вводе и выводе.
 HUPCL 

 
выключить управление модемом линиями после того, 
как последний процесс прекратил использование устройства (повесить трубку).
 CLOCAL 

 
игнорировать управление линиями с помощью модема.
 LOBLK 

 
(не включено в POSIX) блокировать вывод с нетекущего уровня оболочки.
(Для использования с  shl .)
 CIBAUD 

 
(не включено в POSIX) маска для скоростей ввода. Для битов CIBAUD
используются те же значения, что и для битов CBAUD, но они смещены
влево на ISHIFT битов.
 CRTSCTS 

 
(не включено в POSIX) разрешить управление потоком данных RTS/CTS
(аппаратное).
 
 

Константы для флага  c_lflag :
 
 ISIG 

 
когда принимаются любые символы из INTR, QUIT, SUSP или DSUSP,
то генерировать соответствующий сигнал.
 ICANON 

 
запустить канонический режим. Это означает, что линии используют специальные 
символы: EOF, EOL, EOL2, ERASE, KILL, LNEXT, REPRINT, STATUS и WERASE,
а также строчную буферизацию.
 XCASE 

 
(не включено в POSIX; не поддерживается в Linux)
если при этом запущен  ICANON , то терминал работает только
с символами в верхнем регистре. Все вводимое конвертируется в символы нижнего 
регистра, кроме символов, предваряемых \.
При выводе предваряемые \ символы в верхнем регистре и символы в нижнем
регистре преобразуются в символы вернего регистра.
 ECHO 

 
отображать вводимые символы.
 ECHOE 

 
если запущен  ICANON , то символ ERASE удалает предыдущий символ,
а WERASE удаляет предыдущее слово.
 ECHOK 

 
если запущен  ICANON , то символ KILL удаляет всю текущую строку.
 ECHONL 

 
если запущен  ICANON , то символ NL отображается, 
даже если режим ECHO не включен.
 ECHOCTL 

 
(не включено в POSIX)
если запущен  ECHO , то управляющие сигналы ASCII, отличающиеся от TAB, NL, 
START и STOP, отображаются как ^X, где X есть символ из таблицы ASCII с кодом 
на 0x40 больше, чем у управляющего сигнала. Например, символ 0x08 (BS) 
отобразится как ^H.
 ECHOPRT 

 
(не включено в POSIX)
если включены  ICANON  и  IECHO , то символы печатаются по мере того,
как они уничтожаются.
 ECHOKE 

 
(не включено в POSIX)
если  ICANON  также включен, то KILL обозначается как 
уничтожение каждого символа в строке
(по спецификации  ECHOE  и  ECHOPRT ).
 DEFECHO 

 
(не включено в POSIX)
выводить только когда процесс считывает.
 FLUSHO 

 
(не включено в POSIX; не поддерживается в Linux)
выводимые данные ускоренно записываются. Этот флаг 
переключается с помощью набираемого символа DISCARD.
 NOFLSH 

 
отключить ускоренную запись вводимых и выводимых очередей во время
генерации сигналов SIGINT и SIGQUIT и записывать вводимую очередь
при генерации сигнала SIGSUSP.
 TOSTOP 

 
послать сигнал SIGTTOU процессной группе фонового процесса, которая
делает попытку записать его на контролирующий терминал.
 PENDIN 

 
(не включено в POSIX; не поддерживается в Linux)
все символы в очереди ввода повторно печатаются, когда считан последующий 
символ (таким образом  bash  "перехватывает" предваряющую печать).
 IEXTEN 

 
включить режим ввода, определяемый реализацией по умолчанию.
Этот флаг, как и  ICANON  должен быть включен для обработки
специальных символов EOL2, LNEXT, REPRINT, WERASE, а также
для того, чтобы работал флаг  IUCLC .
 
 

Массив  c_cc  определяет специальные управляющие символы.
Символьные индексы (что означают: начальное значение):                                 
 
 VINTR 

 
(003, ETX, Ctrl-C, а также 0177, DEL, rubout)
Символ прерывания. Посылает сигнал SIGINT.
Распознается если установлен ISIG, и, в этом случае, далее не пропускается.
 VQUIT 

 
(034, FS, Ctrl-\)
Символ завершения. Посылает сигнал SIGQUIT.
Распознается если установлен ISIG, и, в этом случае, далее не пропускается.
 VERASE 

 
(0177, DEL, rubout, или 010, BS, Ctrl-H, или также #)
Символ забоя. Стирает предыдущий еще-не-стертый символ, но не
стирает за EOF или началом строки.
Распознается если установлен ICANON, и, в этом случае, далее не пропускается.
 VKILL 

 
(025, NAK, Ctrl-U, или Ctrl-X, а также @)
Символ уничтожения. Стирает ввод с последнего EOF или начала строки.
Распознается если установлен ICANON, и, в этом случае, далее не пропускается.
 VEOF 

 
(004, EOT, Ctrl-D)
Символ конца файла.
Если более точно, то этот символ заставляет переслать буфер tty
ожидающей программе пользователя без ожидания конца строки.
Если это первый символ в строке, то  read()  вернет программе 0,
что означает конец файла.
Распознается если установлен ICANON, и, в этом случае, далее не пропускается.
 VMIN 

 
Минимальное количество символов для неканонического ввода.
 VEOL 

 
(0, NUL)
Дополнительный символ конца строки.
Распознается если установлен ICANON.
 VTIME 

 
Время ожидания в децисекундах для неканонического ввода.
 VEOL2 

 
(не включено в POSIX; 0, NUL)
Еще один символ конца строки.
Распознается если установлен ICANON.
 VSWTCH 

 
(не включено в POSIX; не поддерживается в Linux; 0, NUL)
Символ переключения. (Используется только  shl .)
 VSTART 

 
(021, DC1, Ctrl-Q)
Символ запуска. Перезапускает вывод, остановленный символом останова.
Распознается когда установлен IXON и, в этом случае, далее не пропускается.
 VSTOP 

 
(023, DC3, Ctrl-S)
Символ останова. Приостанавливает вывод до появления символа запуска.
Распознается когда установлен IXON и, в этом случае, далее не пропускается.
 VSUSP 

 
(032, SUB, Ctrl-Z)
Символ приостанова. Посылает сигнал SIGTSTP.
Распознается когда установлен ISIG и, в этом случае, далее не пропускается.
 VDSUSP 

 
(не включен в POSIX; не поддерживается в Linux; 031, EM, Ctrl-Y)
Символ отложенного приостанова: посылает сигнал SIGTSTP при считывании
символа программой пользователя.
Распознается когда установлены IEXTEN и ISIG, и система поддерживает
управление заданиями. В этом случае далее не пропускается.
 VLNEXT 

 
(не включено в POSIX; 026, SYN, Ctrl-V)
Следующий символ - литера. Экранирует следующий символ, отменяя его
возможное специальное значение.
Распознается когда установлены IEXTEN и, в этом случае далее не пропускается.
 VWERASE 

 
(не включено в POSIX; 027, ETB, Ctrl-W)
Стирание слова.
Распознается когда установлены ICANON и IEXTEN и, в этом случае далее не пропускается.
 VREPRINT 

 
(не включено в POSIX; 022, DC2, Ctrl-R)
Вывести заново несчитанные символы.
Распознается когда установлены ICANON и IEXTEN и, в этом случае далее не пропускается.
 VDISCARD 

 
(не включено в POSIX; не поддерживается в Linux; 017, SI, Ctrl-O)
Начать/остановить отбрасывание ожидающего вывода.
Распознается когда установлены IEXTEN и, в этом случае далее не пропускается.
 VSTATUS 

 
(не включено в POSIX; не поддерживается в Linux;
запрос состояния: 024, DC4, Ctrl-T).
 
 

Значения этих символов все различны, за исключением символов
VTIME, VMIN, которые могут иметь те же значения, что и VEOL, VEOF,
соответственно.
(В нестандартном режиме значение специальных символов заменяются
значениями по истечении времени ожидания. MIN представляет собой
минимальное число символов, которые должны быть получены при чтении.
TIME - десятые доли секунды таймера. Когда оба символа установлены,
чтение будет ожидать пока по меньшей мере один символ не будет получен,
и тогда возвращает либо MIN полученных символов, либо время TIME
прошедшее с момента получения последнего символа.
Если установлено только значение MIN, тогда операция чтение не будет
возвращаться пока не будет получено MIN количество символов.
Если установлено только значение TIME, то операция чтения будет возвращать
любой по крайней мере один полученный символ или произойдет истечение
времени ожидания. Если ничего не установлено, то
операция чтения немедленно завершается, и будут доступны только
уже принятые символы.
 

 tcgetattr() : 

получить параметры, связанные с объектом, на который ссылается  fd , 
и сохранить их в структуре  termios , на которую ссылается  termios_p .
Эта функция может быть запущена из фонового процесса;
однако, атрибуты терминала могут в дальнейшем
изменяться основным процессом.
 

 tcsetattr() :

меняет параметры, связанные с терминалом 
(если требуется поддержка используемого оборудования, 
которая недоступна), и параметры структуры  termios , связанной с 
 termios_p . Для того, чтобы изменения вступили в силу, необходимо указать 
 optional_actions :
 
 TCSANOW 
изменения немедленно начинают работать.
 TCSADRAIN 
изменения заработают после того, как все данные для вывода и записи переданы в
 fd .

Эта функция должна использоваться при работе с параметрами, которые
меняют работу устройств вывода данных и меняют выводимые данные.
 TCSAFLUSH 
изменения начинают работу после того, как на объект, на который указывает
 fd ,

были переданы все данные, предназначенные для вывода на запись; все данные, 
которые были приняты (но не считаны),
будут отменены перед тем, как произошли изменения.
 
 

 tcsendbreak() 

передает непрерывный поток нулевых битов в течение
указанного промежутка времени, 
если терминал использует асинхронную последовательность передачи данных.
Если  duration  равно нулю, то нулевые биты передаются,
по меньшей мере, в течение 0.25 секунд, но не более 0.5 секунды.
Если  duration  не равно нулю, то нулевые биты посылаются в
течении некоторого периода времени, зависящего от реализации.
 

Если терминал не использует асинхронную последовательную передачу данных,
то  tcsendbreak()  заканчивает работу, не предпринимая каких-либо действий.
 

 tcdrain() 

ждет, пока все данные вывода, записанные на объект, на который ссылается
 fd ,

не будут переданы.
 

 tcflush(): 

отказывается от данных, записанных, но не переданных на объект, на который 
ссылается
 fd ,

или принятых, но не считанных данных (в зависимости от значения
 queue_selector ):

 
 TCIFLUSH 
- срочный сброс принятых, но не прочитанных данных.
 TCOFLUSH 
- срочный сброс записанных, но не переданных данных.
 TCIOFLUSH 
- срочный сброс принятых, но не прочитанных данных 
и записанных, но не переданных данных.
 
 

 tcflow() 

задерживает передачу данных на объект или прием их объектом, на который ссылается
 fd 

(в зависимости от значения
 action ):

 
 TCOOFF 
задерживает вывод.
 TCOON 
возобновляет задержанный вывод.
 TCIOFF 
передает символ STOP, который останавливает 
передачу данных в систему. Передача осуществляется терминальным устройством.
 TCION 
передает символ START, который начинает 
передачу терминальным устройством данных в систему.
 
 

По умолчанию открывается терминальный файл, у которого ни
ввод, ни вывод не приостановлены.
 

Функции работы со скоростью двоичной передачи (в бодах) предназначены
для получения и установки значений скоростей ввода и вывода в
структуре  termios .  Новые значения не будут иметь эффекта, пока
не будет вызван  tcsetattr() .
При установке скорости в  B0  модему передается команда "повесить трубку".
Фактическая скорость, соответствующая  B38400 ,
может быть изменена с помощью  setserial (8).
 

Скорости ввода и вывода сохраняются в структуре  termios .
 

 cfmakeraw  меняет атрибуты терминала таки образом:
             termios_p->c_iflag &= ~(IGNBRK|BRKINT|PARMRK|ISTRIP
                            |INLCR|IGNCR|ICRNL|IXON);
            termios_p->c_oflag &= ~OPOST;
            termios_p->c_lflag &= ~(ECHO|ECHONL|ICANON|ISIG|IEXTEN);
            termios_p->c_cflag &= ~(CSIZE|PARENB);
            termios_p->c_cflag |= CS8;
 

 

 cfgetospeed() 

возвращает скорость вывода данных, сохраненную в структуре  termios ,
на которую указывает
 termios_p .

 

 cfsetospeed() 

устанавливает скорость вывода данных, сохраненную в структуре  termios ,
на которую указывает  termios_p , в  speed , 
которая должна быть равна одной из следующих констант:
         B0
        B50
        B75
        B110
        B134
        B150
        B200
        B300
        B600
        B1200
        B1800
        B2400
        B4800
        B9600
        B19200
        B38400
        B57600
        B115200
        B230400
 

Нулевая скорость,  B0 ,
используется для завершения связи.  Если указано B0,
то линии управления модемом не должны больше быть утверждены.
В обычном случае это прекратит связь с линией.
 CBAUDEX  является маской скоростей, которые выше 
определенных в POSIX.1 (57600 и выше).
Таким образом,  B57600  и  CBAUDEX  не равны нулю.
 

 cfgetispeed() 

возвращает скорость ввода данных, сохраненную в структуре  termios .
 

 cfsetispeed() 

устанавливает значение скорости ввода данных, 
сохраненной в структуре  termios , равное
 speed .

Если скорость ввода данных меняется на ноль, то скорость ввода данных
будет равна скорости вывода данных.
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

 

 cfgetispeed() 

возвращает скорость ввода данных,  сохраненную в структуре  termios .
 

 cfgetospeed() 

возвращает скорость вывода данных, сохраненную в структуре  termios .
 

Все другие функции возвращают:
 
 0 
при нормальном завершении работы.
 -1 
при ошибках (при этом значение переменной
 errno 

меняется на значение, соответствующее ошибке).
 
 

Обратите внимание, что
 tcsetattr() 

сообщает об успешном завершении, если  хотя бы одно  из запрошенных
изменений может быть успешно выполнено. Поэтому, при необходимости одновременного
изменения нескольких параметров, может понадобится после этой функции вызвать
 tcgetattr() 

для того, чтобы убедиться, что все изменения были выполнены успешно.
   
 ЗАМЕЧАНИЯ 

Unix V7, а также некоторые более поздние системы, имеют список скоростей в бодах
в котором, после первых четырнадцати значений B0, ..., B9600, идут две константы
EXTA и EXTB ("External A" и "External B"). Многие другие системы расширяют этот
список более высокими значениями.
 

Ненулевое  duration  вместе с  tcsendbreak  приведет к неизвестному результату.
SunOS определяет паузу в
 duration * N 

секунд, где  N  является минимум 0.25, а максимум 0.5.
Linux, AIX, DU, Tru64 делают паузу в
 duration 

миллискунд.
FreeBSD и NetBSD и HP-UX и MacOS игнорируют значение
 duration .

В Solaris и Unixware,
 tcsendbreak 

с ненулевым
 duration 

ведет себя аналогично
 tcdrain .



   
 СМ. ТАКЖЕ 

 stty (1),

 setserial (8)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 ЗАМЕЧАНИЯ 
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