Функция Index() Экспорт
	
	Ссылка = ПолучитьПеременнуюСреды("SERVICE_ENTRYPOINT");
	Соединение = Новый HTTPСоединение(Ссылка);
	Запрос = Новый HTTPЗапрос("/");
	Результат = Соединение.Получить(Запрос);

	Данные = Новый Структура();
	Данные.Вставить("Содержимое", Результат.ПолучитьТелоКакСтроку());
	Возврат Представление("index", Данные);

КонецФункции