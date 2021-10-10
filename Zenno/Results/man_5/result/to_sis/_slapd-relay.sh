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
 
 
 
 slapd-relay (5) >>  slapd-relay  (5)   ( Русские man: Форматы файлов ) 


   
 НАЗВАНИЕ 

slapd-relay - механизм манипуляции данными трансляции для slapd
   
 ОБЗОР 

/usr/local/etc/openldap/slapd.conf
   
 ОПИСАНИЕ 

Основное назначение этого механизма манипуляции данными для
 slapd (8) -

отображение контекста именования, определённого в работающей на том же экземпляре
 slapd (8)

базе данных, в виртуальный контекст именования и, при необходимости, выполнение манипуляций с типами
атрибутов и объектными классами. Для него требуется наложение
 slapo-rwm (5).

 

Этот механизм манипуляции данными, а также упомянутое наложение, являются экспериментальными.
   
 КОНФИГУРАЦИЯ 

Приведённые ниже директивы
 slapd.conf 

применяются к базам данных механизма манипуляции данными трансляции. То есть, они должны следовать
за строкой "database relay" и находиться до последующих строк "backend" или "database".
Другие относящиеся к базам данных директивы описаны в man-странице
 slapd.conf (5).

Из директив общего назначения для механизма манипуляции данными
 relay 

разрешена только директива
 suffix .

 
 relay <реальный контекст именования> 

 
Контекст именования базы данных, представленной в рамках виртуального контекста именования. Наличие
этой директивы подразумевает, что одна конкретная база данных, обслуживающая
 реальный контекст именования ,

будет представлена в рамках виртуального контекста именования.
 
 
   
 ПРЕОБРАЗОВАНИЕ СУФФИКСА 

База данных
 relay 

не перезаписывает автоматически контекст именования запросов и ответов. Для этой цели должно быть явно
указано и соответствующим образом настроено наложение
 slapo-rwm (5).

Обычно, если требуется только перезапись контекста именования, достаточно директивы
 rwm-suffixmassage .

 
   
 ПРАВИЛА ДОСТУПА 

Одним из важных аспектов является то, что правила доступа основываются на работе с идентификационной
сущностью, от имени которой выполняется операция. После преобразования из виртуального в реальный
контекст именования, для механизма frontend эта операция будет представлена как выполняемая от имени
идентификационной сущности в реальном контексте именования. Более того, поскольку механизм
 back-relay 

минует операции механизма frontend реальной базы данных путём выполнения операций напрямую через
внутренний API оригинального механизма манипуляции данными, правила доступа оригинальной базы данных
не применяются, кроме отдельных случаев, например, когда механизм манипуляции данными оригинальной
базы данных выполняет контроль доступа сам по себе.
Как следствие, в экземплярах базы данных relay должны быть определены собственные правила доступа,
совместимые с правилами оригинальной базы данных, и, возможно, с добавлением дополнительных
ограничений. Таким образом, в правилах доступа базы данных
 relay 

должны указываться идентификационные сущности в реальном контексте именования.
Примеры приведены в разделе "ПРИМЕРЫ".
 
   
 СЦЕНАРИИ 

 

Если не задана директива
 relay ,

база данных
 relay 

не ссылается на какую-либо конкретную базу данных, но после перезаписи DN запроса обрабатываемой
операции осуществляется выбор наиболее подходящей из баз данных.
 

Это позволяет с помощью тщательно составленных правил перезаписи направлять некоторые запросы к одной
базе данных, а некоторые - к другой. Например, аутентификация может отображаться на одну базу данных,
а поиск осуществляться в другой, либо можно выбирать различные целевые базы данных в зависимости от
DN запроса, и т.д.
 

Ещё один вариант - отображать одни и те же операции на разные базы данных в зависимости от деталей
виртуального контекста именования, например, записи групп получать из одной базы данных, а записи
людей - из другой.
 

   
 ПРИМЕРЫ 

Для реализации простого отображения виртуального контекста именования, ссылающегося на единственную
базу данных, используйте:
 

   database                relay
  suffix                  "dc=virtual,dc=naming,dc=context"
  relay                   "dc=real,dc=naming,dc=context"
  overlay                 rwm
  rwm-suffixmassage       "dc=real,dc=naming,dc=context"
 

 

Для реализации простого отображения виртуального контекста именования, при котором определение
реального контекста именования осуществляется для каждой операции, используйте:
 

   database                relay
  suffix                  "dc=virtual,dc=naming,dc=context"
  overlay                 rwm
  rwm-suffixmassage       "dc=real,dc=naming,dc=context"
 

 

Такой вариант может быть полезным, например, для ретрансляции разных баз данных, разделяющих между
собой конечную часть контекста именования (ту, которая подвергается перезаписи).
 

Для реализации старомодных суффикс-псевдонимов (suffixalias), например, отображения виртуального
контекста в реальный при запросах, но сохранения реального контекста именования в ответах (без обратного
отображения в виртуальный), используйте:
 

   database                relay
  suffix                  "dc=virtual,dc=naming,dc=context"
  relay                   "dc=real,dc=naming,dc=context"
  overlay                 rwm
  rwm-rewriteEngine       on
  rwm-rewriteContext      default
  rwm-rewriteRule         "dc=virtual,dc=naming,dc=context"
                          "dc=real,dc=naming,dc=context" ":@"
  rwm-rewriteContext      searchFilter
  rwm-rewriteContext      searchEntryDN
  rwm-rewriteContext      searchAttrDN
  rwm-rewriteContext      matchedDN
 

 

Обратите внимание, что выполняет инициализация наложения
 slapo-rwm (5),

но вместо автоматической перезаписи с помощью директивы
 rwm-suffixmassage 

правила перезаписи устанавливаются в явном виде так, чтобы выполнялось отображение всего потока данных
из виртуального контекста именования в реальный, но никакого отображения из реального контекста
именования в виртуальный не происходило.
 

Правила доступа:
 

   database                bdb
  suffix                  "dc=example,dc=com"

  # другие настройки базы данных ...

  access to dn.subtree="dc=example,dc=com"
          by dn.exact="cn=Supervisor,dc=example,dc=com" write
          by * read

  database                relay
  suffix                  "o=Example,c=US"
  relay                   "dc=example,dc=com"
  overlay                 rwm
  rwm-suffixmassage       "dc=example,dc=com"

  #  другие настройки базы данных ...

  access to dn.subtree="o=Example,c=US"
          by dn.exact="cn=Supervisor,dc=example,dc=com" write
          by dn.exact="cn=Relay Supervisor,dc=example,dc=com" write
          by * read
 

 

Обратите внимание, что в обоих базах данных идентификационные сущности (в условии
 <who> )

указаны в
 реальном контексте именования `dc=example,dc=com' ,

а цели (в условии
 <what> )

- в
 реальном 

и
 виртуальном контексте именования ,

соответственно.
   
 КОНТРОЛЬ ДОСТУПА 

Механизм манипуляции данными
 relay 

не соблюдает каких-либо семантик ACL, описанных в man-странице
 slapd.access (5);

контроль доступа полностью делегируется транслируемой базе (базам) данных.
Выполняется только проверка доступа на чтение
 read (=r) 

для псевдо-атрибута
 entry 

и других значений атрибутов записей, возвращаемых операцией
 Search ,

поскольку она выполняется механизмом frontend.
   
 ФАЙЛЫ 

 
 /usr/local/etc/openldap/slapd.conf 
конфигурационный файл slapd по умолчанию.
 
   
 СМОТРИТЕ ТАКЖЕ 

 slapd.conf (5),

 slapd-config (5),

 slapo-rwm (5),

 slapd (8).

 

 
   Index 
 
 НАЗВАНИЕ 
 ОБЗОР 
 ОПИСАНИЕ 
 КОНФИГУРАЦИЯ 
 ПРЕОБРАЗОВАНИЕ СУФФИКСА 
 ПРАВИЛА ДОСТУПА 
 СЦЕНАРИИ 
 ПРИМЕРЫ 
 КОНТРОЛЬ ДОСТУПА 
 ФАЙЛЫ 
 СМОТРИТЕ ТАКЖЕ 
 
 
 
 
 
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