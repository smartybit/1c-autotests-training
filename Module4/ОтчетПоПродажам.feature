﻿#language: ru

@tree

Функционал: Отчет по продажам

Как Менеджер по продажам я хочу
построить отчет D2001 Продажи для предопределенных документов продажи,
чтобы быть уверенным в корректности проведения документов и данных, выводимых в отчете

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: 040020 - подготовка данных для отчета по продажам из предопределенных документов продажи
* подготовка данных для заказа
	Когда экспорт основных данных

* Создание объектов для справочника RowIDs
	Когда я проверяю или создаю для справочника "RowIDs" объекты:
		| 'Ref'                                                            | 'DeletionMark' | 'Code' | 'Description'                          | 'AgreementSales'                                                     | 'Company'                                                           | 'CurrencySales'                                                      | 'LegalNameSales'                                                    | 'PartnerSales'                                                     | 'PriceIncludeTaxSales' | 'Store'                                                          | 'Unit'                                                          | 'ItemKey'                                                          | 'Branch' | 'Basis'                                                                 | 'RowID'                                | 'ProcurementMethod' | 'StoreSender' | 'StoreReceiver' | 'TransactionTypeSC'                               | 'TransactionTypeGR'                                    | 'TransactionType' | 'Requester' | 'AgreementPurchases' | 'PartnerPurchases' | 'LegalNamePurchases' | 'PriceIncludeTaxPurchases' | 'CurrencyPurchases' |
		| 'e1cib/data/Catalog.RowIDs?ref=ac4df05e5066276211ecfe9d067120a0' | 'False'        | 1      | '3a017414-9fef-4196-8518-a9e949073436' | 'e1cib/data/Catalog.Agreements?ref=b762b13668d0905011eb76684b9f6867' | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7674324a4a2a' | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794b' | 'True'                 | 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6861' | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | 'e1cib/data/Catalog.ItemKeys?ref=b762b13668d0905011eb76684b9f687e' | ''       | 'e1cib/data/Document.SalesInvoice?ref=ac4df05e5066276211ecfe9d067120b6' | '3a017414-9fef-4196-8518-a9e949073436' | ''                  | ''            | ''              | 'Enum.ShipmentConfirmationTransactionTypes.Sales' | 'Enum.GoodsReceiptTransactionTypes.ReturnFromCustomer' | ''                | ''          | ''                   | ''                 | ''                   | 'False'                    | ''                  |
		| 'e1cib/data/Catalog.RowIDs?ref=ac4df05e5066276211ecfe9d067120b5' | 'False'        | 2      | '0acf969b-03db-49e3-8d51-c8feea3616ee' | 'e1cib/data/Catalog.Agreements?ref=b762b13668d0905011eb76684b9f6867' | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7674324a4a2a' | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794b' | 'True'                 | 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6861' | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | 'e1cib/data/Catalog.ItemKeys?ref=b762b13668d0905011eb766bf96b274f' | ''       | 'e1cib/data/Document.SalesInvoice?ref=ac4df05e5066276211ecfe9d067120b6' | '0acf969b-03db-49e3-8d51-c8feea3616ee' | ''                  | ''            | ''              | 'Enum.ShipmentConfirmationTransactionTypes.Sales' | 'Enum.GoodsReceiptTransactionTypes.ReturnFromCustomer' | ''                | ''          | ''                   | ''                 | ''                   | 'False'                    | ''                  |
		| 'e1cib/data/Catalog.RowIDs?ref=ac4df05e5066276211ecfe9d067120b9' | 'False'        | 3      | '1e9020b2-c5fe-4e19-ab8a-945da159f2c7' | 'e1cib/data/Catalog.Agreements?ref=ac4df05e5066276211ecfe9d067120b8' | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795f' | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb767f10805e27' | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794f' | 'True'                 | 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6862' | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | 'e1cib/data/Catalog.ItemKeys?ref=b762b13668d0905011eb76684b9f687e' | ''       | 'e1cib/data/Document.SalesInvoice?ref=ac4df05e5066276211ecfe9d067120bb' | '1e9020b2-c5fe-4e19-ab8a-945da159f2c7' | ''                  | ''            | ''              | 'Enum.ShipmentConfirmationTransactionTypes.Sales' | 'Enum.GoodsReceiptTransactionTypes.ReturnFromCustomer' | ''                | ''          | ''                   | ''                 | ''                   | 'False'                    | ''                  |
		| 'e1cib/data/Catalog.RowIDs?ref=ac4df05e5066276211ecfe9d067120ba' | 'False'        | 4      | 'd0b7eec5-02e2-450f-ba18-9b1dd2a63f83' | 'e1cib/data/Catalog.Agreements?ref=ac4df05e5066276211ecfe9d067120b8' | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795f' | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb767f10805e27' | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794f' | 'True'                 | 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6862' | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | 'e1cib/data/Catalog.ItemKeys?ref=b762b13668d0905011eb766bf96b274f' | ''       | 'e1cib/data/Document.SalesInvoice?ref=ac4df05e5066276211ecfe9d067120bb' | 'd0b7eec5-02e2-450f-ba18-9b1dd2a63f83' | ''                  | ''            | ''              | 'Enum.ShipmentConfirmationTransactionTypes.Sales' | 'Enum.GoodsReceiptTransactionTypes.ReturnFromCustomer' | ''                | ''          | ''                   | ''                 | ''                   | 'False'                    | ''                  |

* Создание вида мультивалютной аналитики
	Когда я проверяю или создаю для плана видов характеристик "CurrencyMovementType" объекты:
		| 'Ref'                                                                                             | 'DeletionMark' | 'Currency'                                                           | 'Source'                                                                      | 'Type'                        | 'DeferredCalculation' | 'Description_en'            | 'Description_hash' | 'Description_ru' | 'Description_tr' |
		| 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=ac4df05e5066276211ecfe9d067120b7' | 'False'        | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795f' | 'e1cib/data/Catalog.IntegrationSettings?ref=b762b13668d0905011eb7663e35d7966' | 'Enum.CurrencyType.Agreement' | 'False'               | 'Settlements in Euro'       | ''                 | 'Расчеты в Евро' | ''               |

* Создание соглашения в Евро
	Когда я проверяю или создаю для справочника "Agreements" объекты:
		| 'Ref'                                                                | 'DeletionMark' | 'Code' | 'Number' | 'Date'               | 'PartnerSegment'                                                          | 'Partner' | 'Company'                                                           | 'PriceType'                                                          | 'ItemSegment' | 'StartUsing'         | 'EndOfUse'           | 'ManagerSegment' | 'PriceIncludeTax' | 'DaysBeforeDelivery' | 'Store'                                                          | 'Type'                         | 'LegalName' | 'CurrencyMovementType'                                                                            | 'ApArPostingDetail'                  | 'StandardAgreement' | 'Kind'                        | 'UseCreditLimit' | 'CreditLimitAmount' | 'PaymentTerm'                                                              | 'Description_en'                                                      | 'Description_hash' | 'Description_ru'                                                      | 'Description_tr' |
		| 'e1cib/data/Catalog.Agreements?ref=ac4df05e5066276211ecfe9d067120b8' | 'False'        | 10     | '555656' | '01.01.2021 0:00:00' | 'e1cib/data/Catalog.PartnerSegments?ref=b762b13668d0905011eb76684b9f6864' | ''        | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | 'e1cib/data/Catalog.PriceTypes?ref=b762b13668d0905011eb76684b9f6866' | ''            | '01.01.2021 0:00:00' | '01.01.0001 0:00:00' | ''               | 'True'            |                      | 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6862' | 'Enum.AgreementTypes.Customer' | ''          | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=ac4df05e5066276211ecfe9d067120b7' | 'Enum.ApArPostingDetail.ByDocuments' | ''                  | 'Enum.AgreementKinds.Regular' | 'True'           | 5000                | 'e1cib/data/Catalog.PaymentSchedules?ref=b762b13668d0905011eb76684b9f686c' | 'Соглашение с клиентами EUR (расчет по документам + кредитный лимит)' | ''                 | 'Соглашение с клиентами EUR (расчет по документам + кредитный лимит)' | ''               |

* Создание объектов для документа SalesInvoice в июне 2020 года
// рассчитываем, что в обазе это будут единственные документы, датированные этим месяцем
	Когда я проверяю или создаю для документа "SalesInvoice" объекты:
		| 'Ref'                                                                   | 'DeletionMark' | 'Date'                | 'Posted' | 'Agreement'                                                          | 'BasisDocument' | 'Company'                                                           | 'Currency'                                                           | 'DateOfShipment'     | 'LegalName'                                                         | 'Manager' | 'ManagerSegment'                                                          | 'Partner'                                                          | 'PriceIncludeTax' | 'IgnoreAdvances' | 'LegalNameContract' | 'Author'                                                        | 'Branch' | 'Description' | 'DocumentAmount' |
		| 'e1cib/data/Document.SalesInvoice?ref=ac4df05e5066276211ecfe9d067120b6' | 'False'        | '08.07.2020 12:04:52' | 'True'   | 'e1cib/data/Catalog.Agreements?ref=b762b13668d0905011eb76684b9f6867' | ''              | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | '01.01.0001 0:00:00' | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7674324a4a2a' | ''        | 'e1cib/data/Catalog.PartnerSegments?ref=b762b13668d0905011eb7663e35d7955' | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794b' | 'True'            | 'False'          | ''                  | 'e1cib/data/Catalog.Users?ref=aa7f120ed92fbced11eb13d7279770c0' | ''       | ''            | 390              |
		| 'e1cib/data/Document.SalesInvoice?ref=ac4df05e5066276211ecfe9d067120bb' | 'False'        | '08.07.2020 12:20:22' | 'True'   | 'e1cib/data/Catalog.Agreements?ref=ac4df05e5066276211ecfe9d067120b8' | ''              | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795f' | '01.01.0001 0:00:00' | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb767f10805e27' | ''        | 'e1cib/data/Catalog.PartnerSegments?ref=b762b13668d0905011eb7663e35d7955' | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794f' | 'True'            | 'False'          | ''                  | 'e1cib/data/Catalog.Users?ref=aa7f120ed92fbced11eb13d7279770c0' | ''       | ''            | 390              |

	И я перезаполняю для объекта табличную часть "ItemList":
		| 'Ref'                                                                   | 'TotalAmount' | 'NetAmount' | 'ItemKey'                                                          | 'Store'                                                          | 'OffersAmount' | 'Price' | 'Quantity' | 'TaxAmount' | 'Key'                                  | 'Unit'                                                          | 'PriceType'                                                          | 'SalesOrder' | 'DeliveryDate'       | 'Detail' | 'ProfitLossCenter' | 'RevenueType' | 'AdditionalAnalytic' | 'DontCalculateRow' | 'QuantityInBaseUnit' | 'UseShipmentConfirmation' |
		| 'e1cib/data/Document.SalesInvoice?ref=ac4df05e5066276211ecfe9d067120b6' | 190           | 158.33      | 'e1cib/data/Catalog.ItemKeys?ref=b762b13668d0905011eb76684b9f687e' | 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6861' |                | 190     | 1          | 31.67       | '3a017414-9fef-4196-8518-a9e949073436' | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | 'e1cib/data/Catalog.PriceTypes?ref=b762b13668d0905011eb76684b9f6866' | ''           | '01.01.0001 0:00:00' | ''       | ''                 | ''            | ''                   | 'False'            | 1                    | 'True'                    |
		| 'e1cib/data/Document.SalesInvoice?ref=ac4df05e5066276211ecfe9d067120b6' | 200           | 166.67      | 'e1cib/data/Catalog.ItemKeys?ref=b762b13668d0905011eb766bf96b274f' | 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6861' |                | 200     | 1          | 33.33       | '0acf969b-03db-49e3-8d51-c8feea3616ee' | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | 'e1cib/data/Catalog.PriceTypes?ref=b762b13668d0905011eb76684b9f6866' | ''           | '01.01.0001 0:00:00' | ''       | ''                 | ''            | ''                   | 'False'            | 1                    | 'True'                    |
		| 'e1cib/data/Document.SalesInvoice?ref=ac4df05e5066276211ecfe9d067120bb' | 190           | 158.33      | 'e1cib/data/Catalog.ItemKeys?ref=b762b13668d0905011eb76684b9f687e' | 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6862' |                | 190     | 1          | 31.67       | '1e9020b2-c5fe-4e19-ab8a-945da159f2c7' | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | 'e1cib/data/Catalog.PriceTypes?ref=b762b13668d0905011eb76684b9f6866' | ''           | '01.01.0001 0:00:00' | ''       | ''                 | ''            | ''                   | 'False'            | 1                    | 'True'                    |
		| 'e1cib/data/Document.SalesInvoice?ref=ac4df05e5066276211ecfe9d067120bb' | 200           | 166.67      | 'e1cib/data/Catalog.ItemKeys?ref=b762b13668d0905011eb766bf96b274f' | 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6862' |                | 200     | 1          | 33.33       | 'd0b7eec5-02e2-450f-ba18-9b1dd2a63f83' | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | 'e1cib/data/Catalog.PriceTypes?ref=b762b13668d0905011eb76684b9f6866' | ''           | '01.01.0001 0:00:00' | ''       | ''                 | ''            | ''                   | 'False'            | 1                    | 'True'                    |

	И я перезаполняю для объекта табличную часть "TaxList":
		| 'Ref'                                                                   | 'Key'                                  | 'Tax'                                                           | 'Analytics' | 'TaxRate'                                                          | 'Amount' | 'IncludeToTotalAmount' | 'ManualAmount' |
		| 'e1cib/data/Document.SalesInvoice?ref=ac4df05e5066276211ecfe9d067120b6' | '3a017414-9fef-4196-8518-a9e949073436' | 'e1cib/data/Catalog.Taxes?ref=b762b13668d0905011eb7663e35d7970' | ''          | 'e1cib/data/Catalog.TaxRates?ref=b762b13668d0905011eb7663e35d796c' | 31.67    | 'True'                 | 31.67          |
		| 'e1cib/data/Document.SalesInvoice?ref=ac4df05e5066276211ecfe9d067120b6' | '0acf969b-03db-49e3-8d51-c8feea3616ee' | 'e1cib/data/Catalog.Taxes?ref=b762b13668d0905011eb7663e35d7970' | ''          | 'e1cib/data/Catalog.TaxRates?ref=b762b13668d0905011eb7663e35d796c' | 33.33    | 'True'                 | 33.33          |
		| 'e1cib/data/Document.SalesInvoice?ref=ac4df05e5066276211ecfe9d067120bb' | '1e9020b2-c5fe-4e19-ab8a-945da159f2c7' | 'e1cib/data/Catalog.Taxes?ref=b762b13668d0905011eb7663e35d7970' | ''          | 'e1cib/data/Catalog.TaxRates?ref=b762b13668d0905011eb7663e35d796c' | 31.67    | 'True'                 | 31.67          |
		| 'e1cib/data/Document.SalesInvoice?ref=ac4df05e5066276211ecfe9d067120bb' | 'd0b7eec5-02e2-450f-ba18-9b1dd2a63f83' | 'e1cib/data/Catalog.Taxes?ref=b762b13668d0905011eb7663e35d7970' | ''          | 'e1cib/data/Catalog.TaxRates?ref=b762b13668d0905011eb7663e35d796c' | 33.33    | 'True'                 | 33.33          |

	И я перезаполняю для объекта табличную часть "Currencies":
		| 'Ref'                                                                   | 'Key' | 'CurrencyFrom'                                                       | 'Rate' | 'ReverseRate' | 'ShowReverseRate' | 'Multiplicity' | 'MovementType'                                                                                    | 'Amount' | 'IsFixed' |
		| 'e1cib/data/Document.SalesInvoice?ref=ac4df05e5066276211ecfe9d067120b6' | ''    | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 1      | 1             | 'False'           | 1              | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796b' | 390      | 'False'   |
		| 'e1cib/data/Document.SalesInvoice?ref=ac4df05e5066276211ecfe9d067120b6' | ''    | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 0.859  | 1.1641        | 'False'           | 1              | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796a' | 335.01   | 'False'   |
		| 'e1cib/data/Document.SalesInvoice?ref=ac4df05e5066276211ecfe9d067120b6' | ''    | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 1      | 1             | 'False'           | 1              | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d7968' | 390      | 'False'   |
		| 'e1cib/data/Document.SalesInvoice?ref=ac4df05e5066276211ecfe9d067120b6' | ''    | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' |        |               | 'False'           |                | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d7969' |          | 'False'   |
		| 'e1cib/data/Document.SalesInvoice?ref=ac4df05e5066276211ecfe9d067120bb' | ''    | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795f' | 1      | 1             | 'False'           | 1              | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=ac4df05e5066276211ecfe9d067120b7' | 390      | 'False'   |
		| 'e1cib/data/Document.SalesInvoice?ref=ac4df05e5066276211ecfe9d067120bb' | ''    | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795f' | 1      | 1             | 'False'           | 1              | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796a' | 390      | 'False'   |
		| 'e1cib/data/Document.SalesInvoice?ref=ac4df05e5066276211ecfe9d067120bb' | ''    | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795f' | 1.1    | 0.9091        | 'False'           | 1              | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d7968' | 429      | 'False'   |
		| 'e1cib/data/Document.SalesInvoice?ref=ac4df05e5066276211ecfe9d067120bb' | ''    | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795f' |        |               | 'False'           |                | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d7969' |          | 'False'   |

	И я перезаполняю для объекта табличную часть "PaymentTerms":
		| 'Ref'                                                                   | 'Date'               | 'ProportionOfPayment' | 'DuePeriod' | 'Amount' | 'CalculationType'                          |
		| 'e1cib/data/Document.SalesInvoice?ref=ac4df05e5066276211ecfe9d067120b6' | '15.07.2020 0:00:00' | 100                   | 7           | 390      | 'Enum.CalculationTypes.PostShipmentCredit' |
		| 'e1cib/data/Document.SalesInvoice?ref=ac4df05e5066276211ecfe9d067120bb' | '15.07.2020 0:00:00' | 100                   | 7           | 390      | 'Enum.CalculationTypes.PostShipmentCredit' |

	И я перезаполняю для объекта табличную часть "RowIDInfo":
		| 'Ref'                                                                   | 'Key'                                  | 'RowID'                                | 'Quantity' | 'Basis' | 'CurrentStep' | 'NextStep'                                    | 'RowRef'                                                         | 'BasisKey' |
		| 'e1cib/data/Document.SalesInvoice?ref=ac4df05e5066276211ecfe9d067120b6' | '3a017414-9fef-4196-8518-a9e949073436' | '3a017414-9fef-4196-8518-a9e949073436' | 1          | ''      | ''            | 'e1cib/data/Catalog.MovementRules?refName=SC' | 'e1cib/data/Catalog.RowIDs?ref=ac4df05e5066276211ecfe9d067120a0' | ''         |
		| 'e1cib/data/Document.SalesInvoice?ref=ac4df05e5066276211ecfe9d067120b6' | '0acf969b-03db-49e3-8d51-c8feea3616ee' | '0acf969b-03db-49e3-8d51-c8feea3616ee' | 1          | ''      | ''            | 'e1cib/data/Catalog.MovementRules?refName=SC' | 'e1cib/data/Catalog.RowIDs?ref=ac4df05e5066276211ecfe9d067120b5' | ''         |
		| 'e1cib/data/Document.SalesInvoice?ref=ac4df05e5066276211ecfe9d067120bb' | '1e9020b2-c5fe-4e19-ab8a-945da159f2c7' | '1e9020b2-c5fe-4e19-ab8a-945da159f2c7' | 1          | ''      | ''            | 'e1cib/data/Catalog.MovementRules?refName=SC' | 'e1cib/data/Catalog.RowIDs?ref=ac4df05e5066276211ecfe9d067120b9' | ''         |
		| 'e1cib/data/Document.SalesInvoice?ref=ac4df05e5066276211ecfe9d067120bb' | 'd0b7eec5-02e2-450f-ba18-9b1dd2a63f83' | 'd0b7eec5-02e2-450f-ba18-9b1dd2a63f83' | 1          | ''      | ''            | 'e1cib/data/Catalog.MovementRules?refName=SC' | 'e1cib/data/Catalog.RowIDs?ref=ac4df05e5066276211ecfe9d067120ba' | ''         |

* проведение созданных документов
	Когда Я открываю навигационную ссылку "e1cib/data/Document.SalesInvoice?ref=ac4df05e5066276211ecfe9d067120b6"
	Тогда открылось окно 'Реализация товаров и услуг * от *'
	И я нажимаю на кнопку с именем 'FormPostAndClose'
	И я жду закрытия окна 'Реализация товаров и услуг * от *' в течение 5 секунд

	Когда Я открываю навигационную ссылку "e1cib/data/Document.SalesInvoice?ref=ac4df05e5066276211ecfe9d067120bb"
	Тогда открылось окно 'Реализация товаров и услуг * от *'
	И я нажимаю на кнопку с именем 'FormPostAndClose'
	И я жду закрытия окна 'Реализация товаров и услуг * от *' в течение 5 секунд

Сценарий: 040030 - построение отчета в рублях
* формирование отчета о продажах в рублях
	Когда Я открываю навигационную ссылку "e1cib/app/Report.D2001_Sales"
	Когда открылось окно 'D2001 Продажи'

* установка периода отчета
	И я нажимаю на кнопку с именем 'FormChangeVariant'
	Тогда открылось окно 'Вариант "Default" отчета "D2001 Продажи"'
	И в таблице "SettingsComposerSettingsDataParameters" я перехожу к строке:
		| 'Параметр' |
		| 'Период'   |
	И в таблице "SettingsComposerSettingsDataParameters" я активизирую поле с именем "SettingsComposerSettingsDataParametersStartDate"
	И в таблице "SettingsComposerSettingsDataParameters" в поле с именем 'SettingsComposerSettingsDataParametersStartDate' я ввожу текст '01.07.2020  0:00:00'
	И в таблице "SettingsComposerSettingsDataParameters" я завершаю редактирование строки
	И в таблице "SettingsComposerSettingsDataParameters" я активизирую поле с именем "SettingsComposerSettingsDataParametersEndDate"
	И в таблице "SettingsComposerSettingsDataParameters" в поле с именем 'SettingsComposerSettingsDataParametersEndDate' я ввожу текст '31.07.2020 23:59:59'
	И в таблице "SettingsComposerSettingsDataParameters" я завершаю редактирование строки

* установка значения значения предопределенного отобора по виду валютной аналитики
	И я перехожу к закладке с именем "FilterPage"
	И в таблице "SettingsComposerSettingsFilter" я перехожу к строке:
		| 'Поле'                         |
		| 'Вид мультивалютной аналитики' |
	И в таблице "SettingsComposerSettingsFilter" я нажимаю кнопку выбора у реквизита с именем "SettingsComposerSettingsFilterRightValue"
	Тогда открылось окно 'Виды мультивалютной аналитики'
	И в таблице "List" я перехожу к строке:
		| 'Ссылка'                       |
		| 'ru наименование не заполнено' |
	И я нажимаю на кнопку с именем 'FormChoose'		
	Тогда открылось окно 'Вариант "Default" отчета "D2001 Продажи"'
	И в таблице "SettingsComposerSettingsFilter" я завершаю редактирование строки
* добавление отобора по организации "Собственная компания 1"
	И в таблице "SettingsComposerSettingsFilter" я нажимаю на кнопку с именем 'SettingsComposerSettingsFilterAddFilterItem'
	И в таблице "SettingsComposerSettingsFilter" из выпадающего списка с именем "SettingsComposerSettingsFilterLeftValue" я выбираю точное значение 'Организация'
	И я перехожу к следующему реквизиту
	И в таблице "SettingsComposerSettingsFilter" я нажимаю кнопку выбора у реквизита с именем "SettingsComposerSettingsFilterRightValue"
	Когда открылось окно 'Организации'
	И в таблице "List" я перехожу к строке:
		| 'Наименование'           |
		| 'Собственная компания 1' |
	И я нажимаю на кнопку с именем 'FormChoose'
	Тогда открылось окно 'Вариант "Default" отчета "D2001 Продажи"'
	И в таблице "SettingsComposerSettingsFilter" я завершаю редактирование строки
	И я нажимаю на кнопку с именем 'FormEndEdit'	
	И я нажимаю на кнопку с именем 'FormGenerate'
	И я жду когда в табличном документе "Result" заполнится ячейка "R12C2" в течение 20 секунд
		
	Тогда Табличный документ 'Result' равен макету "Module4\КонтрольныеДанные\ПродажиВРублях"

Сценарий: 040040 - построение отчета в Евро
	Когда я закрываю все окна клиентского приложения
* открытие формы отчета и переход к настройкам варианта
	Когда Я открываю навигационную ссылку "e1cib/app/Report.D2001_Sales"
	И открылось окно 'D2001 Продажи'
	И я нажимаю на кнопку с именем 'FormChangeVariant'
	Тогда открылось окно 'Вариант "Default" отчета "D2001 Продажи"'

* установка периода отчета	
	И в таблице "SettingsComposerSettingsDataParameters" я перехожу к строке:
		| 'Параметр' |
		| 'Период'   |
	И в таблице "SettingsComposerSettingsDataParameters" я активизирую поле с именем "SettingsComposerSettingsDataParametersStartDate"
	И в таблице "SettingsComposerSettingsDataParameters" в поле с именем 'SettingsComposerSettingsDataParametersStartDate' я ввожу текст '01.07.2020  0:00:00'
	И в таблице "SettingsComposerSettingsDataParameters" я завершаю редактирование строки
	И в таблице "SettingsComposerSettingsDataParameters" я активизирую поле с именем "SettingsComposerSettingsDataParametersEndDate"
	И в таблице "SettingsComposerSettingsDataParameters" в поле с именем 'SettingsComposerSettingsDataParametersEndDate' я ввожу текст '31.07.2020 23:59:59'
	И в таблице "SettingsComposerSettingsDataParameters" я завершаю редактирование строки

* установка вида мультивалютной аналитики в Евро
	И я перехожу к закладке с именем "FilterPage"
	И в таблице "SettingsComposerSettingsFilter" я перехожу к строке:
		| 'Поле'                         |
		| 'Вид мультивалютной аналитики' |
	И в таблице "SettingsComposerSettingsFilter" я нажимаю кнопку выбора у реквизита с именем "SettingsComposerSettingsFilterRightValue"
	Тогда открылось окно 'Виды мультивалютной аналитики'
	И в таблице "List" я перехожу к строке:
		| 'Ссылка'         |
		| 'Расчеты в Евро' |
	И в таблице "List" я выбираю текущую строку
	И в таблице "SettingsComposerSettingsFilter" я завершаю редактирование строки
* добавление отобора по организации "Собственная компания 1"
	И в таблице "SettingsComposerSettingsFilter" я нажимаю на кнопку с именем 'SettingsComposerSettingsFilterAddFilterItem'
	И в таблице "SettingsComposerSettingsFilter" из выпадающего списка с именем "SettingsComposerSettingsFilterLeftValue" я выбираю точное значение 'Организация'
	И я перехожу к следующему реквизиту
	И в таблице "SettingsComposerSettingsFilter" я нажимаю кнопку выбора у реквизита с именем "SettingsComposerSettingsFilterRightValue"
	Когда открылось окно 'Организации'
	И в таблице "List" я перехожу к строке:
		| 'Наименование'           |
		| 'Собственная компания 1' |
	И я нажимаю на кнопку с именем 'FormChoose'

	И я нажимаю на кнопку с именем 'FormEndEdit'
	Тогда открылось окно 'D2001 Продажи'
* проверка данных отчета	
	И я нажимаю на кнопку с именем 'FormGenerate'
	Тогда Табличный документ 'Result' равен макету "Module4\КонтрольныеДанные\ПродажиВЕвро"	
		
