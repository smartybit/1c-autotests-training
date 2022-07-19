﻿#language: ru

@tree

Функционал: <описание фичи>

Как менеджер по продажам я хочу
видеть автоматическое заполениение реквизитов шапки заказа, когда это возможно
чтобы оформлять заказы быстрее, с меньшим количеством ошибок

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: 050020 Подготовка данных фичи
	Когда экспорт основных данных 
	И я проверяю или создаю для справочника "Agreements" объекты:
				| 'Ref'                                                                | 'DeletionMark' | 'Number'  | 'Date'               | 'PartnerSegment' | 'Partner' | 'Company' | 'PriceType'                                                          | 'ItemSegment' | 'StartUsing'         | 'EndOfUse'           | 'ManagerSegment' | 'PriceIncludeTax' | 'DaysBeforeDelivery' | 'Store'                                                          | 'Type'                         | 'LegalName' | 'CurrencyMovementType'                                                                            | 'ApArPostingDetail'                          | 'StandardAgreement'                                                  | 'Kind'                         | 'UseCreditLimit' | 'CreditLimitAmount' | 'PaymentTerm' | 'Description_en'                                                            | 'Description_hash' | 'Description_ru' | 'Description_tr' |
				| 'e1cib/data/Catalog.Agreements?ref=b762b13668d0905011eb76684b9f686e' | 'False'        | '1234567' | '01.01.2021 0:00:00' | ''               | ''        | ''        | 'e1cib/data/Catalog.PriceTypes?ref=b762b13668d0905011eb76684b9f6866' | ''            | '01.01.2021 0:00:00' | '01.01.0001 0:00:00' | ''               | 'True'            |                      | 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6861' | 'Enum.AgreementTypes.Customer' | ''          | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796b' | 'Enum.ApArPostingDetail.ByStandardAgreement' | 'e1cib/data/Catalog.Agreements?ref=b762b13668d0905011eb76684b9f686a' | 'Enum.AgreementKinds.Regular'  | 'False'          |                     | ''            | 'Общее соглашение для всех организаций (расчет по стандартным соглашениям)' | ''                 | ''               | ''               |
				| 'e1cib/data/Catalog.Agreements?ref=b762b13668d0905011eb76684b9f686f' | 'False'        | ''        | '01.01.0001 0:00:00' | ''               | ''        | ''        | ''                                                                   | ''            | '01.01.2021 0:00:00' | '01.01.0001 0:00:00' | ''               | 'False'           |                      | ''                                                               | 'Enum.AgreementTypes.Customer' | ''          | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796b' | 'Enum.ApArPostingDetail.ByAgreements'        | ''                                                                   | 'Enum.AgreementKinds.Standard' | 'False'          |                     | ''            | 'Стандартное соглашение 1'                                                  | ''                 | ''               | ''               |



Сценарий: 050030 Заполнение соглашения в шапке документа и проверка заполненности организации
* создание нового заказа
	Когда Я открываю навигационную ссылку "e1cib/list/Document.SalesOrder"
	И я нажимаю на кнопку с именем 'FormCreate'
	Тогда открылось окно 'Заказ покупателя (создание)'
	И я нажимаю кнопку выбора у поля с именем "Agreement"
	Тогда открылось окно 'Соглашения'
	И в таблице "List" я перехожу к строке:
		| 'Вид'     | 'Вид взаиморасчетов'         | 'Наименование'                                                              |
		| 'Обычное' | 'По стандартным соглашениям' | 'Общее соглашение для всех организаций (расчет по стандартным соглашениям)' |
	И в таблице "List" я выбираю текущую строку
	Тогда открылось окно 'Заказ покупателя (создание) *'
	И элемент формы с именем 'Company' стал равен ''

* Заполняем поле компания
	Если элемент формы с именем 'Company' имеет значение "" тогда
		И я нажимаю кнопку выбора у поля с именем "Company"
		Тогда открылось окно 'Организации'
		И в таблице "List" я перехожу к строке:
			| 'Код' | 'Наименование'           |
			| '2'   | 'Собственная компания 2' |
		И в таблице "List" я выбираю текущую строку
* проверка состояния формы
		Тогда открылось окно 'Заказ покупателя (создание) *'
		И элемент формы с именем "Company" стал равен 'Собственная компания 2'
		И элемент формы с именем "DecorationClosingOrder" стал равен 'Этот заказ закрыт:'
		И элемент формы с именем "ClosingOrder" стал равен ''
		И элемент формы с именем "DecorationGroupTitleCollapsedPicture" стал равен 'Сворачиваемая группа формы'
		И элемент формы с именем "DecorationGroupTitleCollapsedLabel" стал равен шаблону '*Организация: Собственная компания 2   Соглашение: Общее соглашение для всех организаций (расчет по стандартным соглашениям)   Статус: Согласовано   '
		И элемент формы с именем "DecorationGroupTitleUncollapsedPicture" стал равен 'DecorationGroupTitleUncollapsedPicture'
		И элемент формы с именем "DecorationGroupTitleUncollapsedLabel" стал равен шаблону '*Организация: Собственная компания 2   Соглашение: Общее соглашение для всех организаций (расчет по стандартным соглашениям)   Статус: Согласовано   '						
		И элемент формы с именем "Partner" стал равен ''
		И элемент формы с именем 'DecorationGroupTitleCollapsedLabel' стал равен шаблону '*Организация: Собственная компания 2   Соглашение: Общее соглашение для всех организаций (расчет по стандартным соглашениям)   Статус: Согласовано   '
		И элемент формы с именем "LegalName" стал равен ''
		И элемент формы с именем "Agreement" стал равен 'Общее соглашение для всех организаций (расчет по стандартным соглашениям)'
		И элемент формы с именем "Description" стал равен 'Нажмите для заполнения'
		И элемент формы с именем "Status" стал равен 'Согласовано'		
		И элемент формы с именем "Store" стал равен 'Склад 1 (с контролем остатка)'
		Тогда в таблице "ItemList" количество строк "равно" 0
		Тогда в таблице "SpecialOffers" количество строк "равно" 0
		Тогда в таблице "PaymentTerms" количество строк "равно" 0
		И элемент формы с именем "Branch" стал равен ''
		И элемент формы с именем "Autor" стал равен 'CI'
		И элемент формы с именем "Manager" стал равен ''
		И элемент формы с именем "DecorationStatusHistory" стал равен 'История статусов'
		И элемент формы с именем "PriceIncludeTax" стал равен 'Да'
		И элемент формы с именем "UseItemsShipmentScheduling" стал равен 'Нет'
		И элемент формы с именем "Currency" стал равен 'USD'
		И элемент формы с именем 'DeliveryDate' стал равен '  .  .    '
		И элемент формы с именем "CurrencyTotalAmount" стал равен 'USD'
							 						
		
		
	