﻿#language: ru

@ExportScenarios
@IgnoreOnCIMainBuild
@tree

Функционал: Начальное заполнение базы

Как Специалист по тестированию я хочу
заполнить условно-постоянные данные в базе
чтобы иметь однозначное состояние базы перед запуском тестового комплекта

Контекст:

@ТипШага: Прикладные сценарии.Начальное заполнение
@Описание: Подсценарий. Заполняет справочник валют
@ПримерИспользования: И я инициализирую справочник Валюты
Сценарий: Я инициализирую справочник Валюты
	Дано я проверяю или создаю для справочника "Валюты" объекты:
		| 'Ссылка'                                                            | 'ПометкаУдаления' | 'Код'       | 'Наименование' | 'НаименованиеОсновнойВалюты' | 'НаименованиеРазменнойВалюты' |
		| 'e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4421dda1c5' | 'False'           | '000000001' | 'Рубли'        | 'рубль'                      | 'копейка'                     |
		| 'e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4c9d5c4223' | 'False'           | '000000003' | 'EUR'          | 'евро'                       | 'евроцент'                    |
		| 'e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4c9d5c4222' | 'False'           | '000000002' | 'USD'          | 'доллар США'                 | 'цент'                        |

@ТипШага: Прикладные сценарии.Начальное заполнение
@Описание: Подсценарий. Константы предопределенными значениями
@ПримерИспользования: И я инициализирую все константы
Сценарий: я инициализирую все константы
	Дано я перезаполняю константу "SSLIMAP" значением "False"
	И я перезаполняю константу "SSLPOP3" значением "False"
	И я перезаполняю константу "SSLSMTP" значением "False"
	И я перезаполняю константу "АдресPOP3Сервера" значением "pop.mail.ru"
	И я перезаполняю константу "АдресSMTPСервера" значением "smtp.mail.ru"
	И я перезаполняю константу "ВалютаУчета" значением "e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4421dda1c5"
	И я перезаполняю константу "ВоспроизводитьТекстУведомления" значением "False"
	И я перезаполняю константу "ИспользоватьIMAP" значением "False"
	И я перезаполняю константу "ИмяОтправителяПочтовогоСообщения" значением "tovarshop@mail.ru"
	И я перезаполняю константу "ИспользоватьAPNS" значением "False"
	И я перезаполняю константу "ИспользоватьFCM" значением "False"
	И я перезаполняю константу "ИспользоватьWNS" значением "False"
	И я перезаполняю константу "ИспользоватьСетьПередачиДанных" значением "False"
	И я перезаполняю константу "ИспользоватьСотовуюСеть" значением "False"
	И я перезаполняю константу "ИспользоватьСпутники" значением "False"
	И я перезаполняю константу "КодНовогоУзлаПланаОбмена" значением "3"
	И я перезаполняю константу "ОтметкаНаФотоснимкеДата" значением "False"
	И я перезаполняю константу "ПарольPOP3" значением "tovar1999"
	И я перезаполняю константу "ПользовательPOP3" значением "tovarshop"
	И я перезаполняю константу "ПортPOP3" значением "110"
	И я перезаполняю константу "ПортSMTP" значением "25"
	И я перезаполняю константу "РаботаСТорговымОборудованием" значением "False"
	И я перезаполняю константу "СертификатМобильногоПриложенияIOS" значением "ValueStorage:AQEIAAAAAAAAAO+7v3siVSJ9"
	И я перезаполняю константу "ТаймаутИнтернетПочты" значением "60"
	И я перезаполняю константу "ТолькоБесплатные" значением "False"
	И я перезаполняю константу "ТолькоЗащищеннаяАутентификацияIMAP" значением "False"
	И я перезаполняю константу "ТолькоЗащищеннаяАутентификацияPOP3" значением "False"
	И я перезаполняю константу "ТолькоЗащищеннаяАутентификацияSMTP" значением "False"
	И я перезаполняю константу "УчетПоСкладам" значением "True"


@ТипШага: Прикладные сценарии.Начальное заполнение
@Описание: Подсценарий. Заполнение справочника видов цен
@ПримерИспользования: И я инициализирую справочник ВидыЦен
Сценарий: я инициализирую справочник ВидыЦен
	Дано я проверяю или создаю для справочника "ВидыЦен" объекты:
		| 'Ссылка'                                                             | 'ПометкаУдаления' | 'Код'       | 'Наименование' |
		| 'e1cib/data/Справочник.ВидыЦен?refName=Закупочная'                   | 'False'           | '000000001' | 'Закупочная'   |
		| 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4225' | 'False'           | '000000002' | 'Оптовая'      |
		| 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4224' | 'False'           | '000000003' | 'Розничная'    |

@ТипШага: Прикладные сценарии.Начальное заполнение
@Описание: Подсценарий. Заполнение справочника складов
@ПримерИспользования: И я инициализирую справочник Склады
Сценарий: я инициализирую справочник Склады
	Дано я проверяю или создаю для справочника "Склады" объекты:
		| 'Ссылка'                                                            | 'ПометкаУдаления' | 'Код'       | 'Наименование'         | 'НеИспользовать' |
		| 'e1cib/data/Справочник.Склады?ref=8ca1000d8843cd1b11dc8eb49faea67b' | 'False'           | '000000001' | 'Склад отдела продаж'  | 'False'          |
		| 'e1cib/data/Справочник.Склады?ref=8e0a000d8843cd1b11de0ed853793994' | 'False'           | '000000002' | 'Неиспользуемый склад' | 'True'           |

@ТипШага: Прикладные сценарии.Начальное заполнение
@Описание: Подсценарий. Заполнение справочника организаций
@ПримерИспользования: И я инициализирую справочник Организации
Сценарий: я инициализирую справочник Организации
	Дано я проверяю или создаю для справочника "Организации" объекты:
		| 'Ссылка'                                                                 | 'ПометкаУдаления' | 'Код'       | 'Наименование'        | 'ВалютныйУчет' |
		| 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c63' | 'False'           | '000000001' | 'С валютным учетом'   | 'True'         |
		| 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c65' | 'False'           | '000000002' | 'Без валютного учета' | 'False'        |

@ТипШага: Прикладные сценарии.Начальное заполнение
@Описание: Подсценарий. Заполнение справочника регионов
@ПримерИспользования:  И я инициализурую справочник Регионы
Сценарий: я инициализурую справочник Регионы
	Дано я проверяю или создаю для справочника "Регионы" объекты:
		| 'Ссылка'                                                             | 'ПометкаУдаления' | 'Код'       | 'Наименование'    |
		| 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c422f' | 'False'           | '000000001' | 'Тестовый регион' |


@ТипШага: Прикладные сценарии.Начальное заполнение
@Описание: Подсценарий. Заполнение пустой базы минимальным набором данных для проведения тестов
@ПримерИспользования:  И я выполняю первоначальное заполнение базы
Сценарий: я выполняю первоначальное заполнение базы
	Дано я инициализирую справочник Валюты
	И я инициализирую справочник ВидыЦен
	И я инициализирую справочник Организации
	И я инициализирую справочник Склады
	И я инициализурую справочник Регионы
	И я инициализирую все константы
	И я добавляю информацию в лог "Выполнено (пере)заполнение базы начальными данными"
	
