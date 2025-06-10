## Проект по курсу "Базы данных", весна 2025

### **Описание проекта**

В проекте реализуется база данных футбольных лиг. Тип версионирования - SCD2. База данных находится в 2НФ.

Ссылки на модели:

Концептуальная модель - https://gitlab.atp-fivt.org/db2025s/frontovfeod-project/-/blob/dev/docs/conceptual_model.png?ref_type=heads

Логическая модель - https://gitlab.atp-fivt.org/db2025s/frontovfeod-project/-/blob/dev/docs/logical_model.png?ref_type=heads

Физическая модель - https://gitlab.atp-fivt.org/db2025s/frontovfeod-project/-/blob/dev/docs/physical_model.png?ref_type=heads



### **Сущности**

**League** - содержит информацию о лиге, стране ее проведения, формате и сезоне

**Team** - содержит информацию о команде, ее стране, стадионе и трофеях

**Match** - содержит информацию о матче, его дате и итоговом счёте

**Player** - содержит информацию об игроке, его параметрах, доходе, стоимости и т.д.

**Goal** - содержит информацию о голе

**Transfer** - содержит информацию о трансфере, его цене и дате

### **Структура проекта**

В папке `docs` находятся модели базы данных

В папке `scripts` находятся скрипты SQL:
1. `creates.sql` - DDL-скрипты
2. папка `inserts` - DML-скрипты
3. `selects.sql` - SELECT-запросы
4. `views.sql` - Представления
5. `indexes.sql` - Индексы
6. `procedures.sql` - Функции и Процедуры
7. `triggers.sql` - Триггеры
