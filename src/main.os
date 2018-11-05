﻿#Использовать "models"

Процедура ПриНачалеРаботыСистемы()
	
	ИспользоватьСтатическиеФайлы();
	ИспользоватьСессии();
	ИспользоватьМаршруты("ОпределениеМаршрутов");

КонецПроцедуры

Процедура ОпределениеМаршрутов(КоллекцияМаршрутов)
	УмолчанияАгенты = Новый Соответствие;
	УмолчанияАгенты.Вставить("controller","agents");
	КоллекцияМаршрутов.Добавить("Агенты","agents/{action=Index}/{id?}",УмолчанияАгенты);

	КоллекцияМаршрутов.Добавить("ПоАгенту","{agent}/{controller}/{action=Index}/{id?}");
	КоллекцияМаршрутов.Добавить("ПоУмолчанию","{controller=agents}/{action=Index}/{id?}");
КонецПроцедуры