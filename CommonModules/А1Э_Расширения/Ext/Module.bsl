﻿Функция Существует(Имя, ПовтИсп = Истина) Экспорт
	Если ПовтИсп Тогда А1Э_ПовторноеИспользование.РезультатФункцииСервер("А1Э_Расширения.Существует", Имя, Ложь); КонецЕсли;
	
	#Если Клиент Тогда
		А1Э_Служебный.СлужебноеИсключение("Выполнение на клиенте возможно только в режиме повторного использования!");
	#Иначе
		Возврат РасширенияКонфигурации.Получить(А1Э_Структуры.Создать(
		"Имя", Имя,
		)).Количество() > 0;
	#КонецЕсли
КонецФункции 