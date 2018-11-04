#Использовать irac
#Использовать json

Функция Index() Экспорт
	
	ОбщегоНазначения.УстановитьЗаголовокСтраницы(ЭтотОбъект, "Сеансы");

	Кластер = ОбщегоНазначения.ПолучитьКластерПоИД(ЭтотОбъект);
	ИнформационнаяБаза_Идентификатор = ОбщегоНазначения.ПолучитьИдентификаторИнформационнойБазыИзПараметровЗапроса(ЭтотОбъект);

	ПараметрыМодели = Новый Структура;
	ПараметрыМодели.Вставить("Кластер_Идентификатор", ?(Кластер = Неопределено, "", Кластер.Ид()));
	ПараметрыМодели.Вставить("ИнформационнаяБаза_Идентификатор", ?(ИнформационнаяБаза_Идентификатор = Неопределено, "", ИнформационнаяБаза_Идентификатор));
	ПараметрыМодели.Вставить("СписокИнформационныхБаз", ОбщегоНазначения.ПолучитьСписокИнформационныхБазПоКластеру(ЭтотОбъект, Кластер));
	ПараметрыМодели.Вставить("МодельДанных", ПолучитьМодельСписка());
	
	Возврат Представление("index", ПараметрыМодели);
	
КонецФункции

Функция GetModelDataList() Экспорт
	ПолучитьТолькоСтруктуру = ОбщегоНазначения.ПолучитьЗначениеПараметраЗапроса(ЭтотОбъект, "empty") <> Неопределено;
	Возврат Содержимое(ПолучитьДанныеДляСписка(ПолучитьТолькоСтруктуру));
КонецФункции

Функция ПолучитьДанныеДляСписка(ТолькоСтруктура)
	
	Возврат РаботаСЭлементамиФорм.ПолучитьДанныеИнформационнойБазыДляСписка(ЭтотОбъект, "session", ПолучитьМодельСписка(), ТолькоСтруктура);
	
КонецФункции

Функция ПолучитьМодельСписка()

	МодельСписка = Новый ПредставлениеСписка;
	МодельСписка.Колонки.Добавить("НомерСеанса");
	МодельСписка.Колонки.Добавить("Пользователь");
	МодельСписка.Колонки.Добавить("Компьютер");
	МодельСписка.Колонки.Добавить("Приложение");
	МодельСписка.Колонки.Добавить("Язык");
	МодельСписка.Колонки.Добавить("ВремяНачала");
	МодельСписка.Колонки.Добавить("ПоследняяАктивность");
	МодельСписка.Колонки.Добавить("ЗаблокированоСУБД");
	Возврат МодельСписка;

КонецФункции