
Функция Overview() Экспорт

	Кластер = ПолучитьКластерПоИд();
	Если Кластер = Неопределено Тогда
		Возврат КодСостояния(404);
	КонецЕсли;
	
	Возврат Представление(, Кластер);

КонецФункции

Функция ПолучитьКластерПоИд()
	Возврат ОбщегоНазначения.ПолучитьКластерПоИД(ЭтотОбъект);
КонецФункции

Функция ИдентификаторКластера()
	Параметры = ЗапросHttp.ПараметрыЗапроса();
	Возврат Параметры["cluster"];
КонецФункции