
Процедура ОбработкаПроведения(Отказ, Режим)
	// регистр ВзаиморасчетыСКомитентами Приход
	Движения.ВзаиморасчетыСКомитентами.Записывать = Истина;
	Для Каждого ТекСтрокаОплаты Из Оплаты Цикл
		Движение = Движения.ВзаиморасчетыСКомитентами.Добавить();
		Движение.ВидДвижения = ВидДвиженияНакопления.Расход;
		Движение.Период = Дата;
		Движение.Контрагент = ТекСтрокаОплаты.Контрагент; 
		Движение.Организация = Организация;
		Движение.Договор = ТекСтрокаОплаты.Договор;
		Движение.Сумма = ТекСтрокаОплаты.Сумма;
	КонецЦикла;

КонецПроцедуры
