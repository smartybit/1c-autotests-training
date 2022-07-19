﻿#language: ru

@tree

Функционал: Формирование единообразных записей номенклатуры

Как Тестировщик я хочу
сформировать несколько однотипных записей номенклатуры
чтобы использовать эти записи в дальнейших тестах

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: 050010 - массовое создание новых записей номенклатуры
	Дано Я открываю навигационную ссылку "e1cib/list/Catalog.Items"

* настройка сортировки списка по убыванию кода
	И я нажимаю на кнопку с именем 'FormListSettings'
	Тогда открылось окно 'Настройка списка'
	И я перехожу к закладке с именем "SettingsComposerUserSettingsItem1"
	И я нажимаю на кнопку с именем 'FormStandardSettings'
	И в таблице "SettingsComposerUserSettingsItem1Order" я нажимаю на кнопку с именем 'SettingsComposerUserSettingsItem1OrderAddOrderItem'
	И в таблице "SettingsComposerUserSettingsItem1Order" из выпадающего списка с именем "SettingsComposerUserSettingsItem1OrderField" я выбираю точное значение 'Код'
	И я перехожу к следующему реквизиту
	И в таблице "SettingsComposerUserSettingsItem1Order" из выпадающего списка с именем "SettingsComposerUserSettingsItem1OrderOrderType" я выбираю точное значение 'По убыванию'
	И в таблице "SettingsComposerUserSettingsItem1Order" я завершаю редактирование строки
	И я нажимаю на кнопку с именем 'FormEndEdit'

* определение последнего кода
	Когда открылось окно 'Номенклатура'
	И Я запоминаю значение выражения '0' в переменную "АктуальныйКод"	
	Если в таблице "List" количество строк "больше или равно" 1 Тогда
		Когда в таблице "List" я перехожу к первой строке
		И в таблице "List" я активизирую поле с именем "Code"
		И я запоминаю значение поля с именем "Code" таблицы "List" как "АктуальныйКод"
				
* Создание элементов справочника Items
	И я делаю 10 раз
		И Я запоминаю значение выражения 'Число(Контекст.АктуальныйКод) + 1' в переменную "АктуальныйКод"	
		И Я запоминаю значение выражения '"Услуга " + Строка(Контекст.АктуальныйКод)' в переменную "НаименованиеЭлемента"
		И Я запоминаю значение выражения 'Строка("e1cib/data/Catalog.Items?ref=") + СтрЗаменить(Строка(Новый УникальныйИдентификатор()), "-", "")' в переменную "НавигационнаяСсылка"						
		И я проверяю или создаю для справочника "Items" объекты:
			| 'Ref'                   | 'DeletionMark' | 'ItemType'                                                          | 'Unit'                                                          | 'ItemID'          | 'Description_en'         |
			| '$НавигационнаяСсылка$' | 'False'        | 'e1cib/data/Catalog.ItemTypes?ref=b762b13668d0905011eb76684b9f687a' | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | '$АктуальныйКод$' | '$НаименованиеЭлемента$' |																			
	