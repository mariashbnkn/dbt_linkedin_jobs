Установка
```bash
python -m pip install dbt-core dbt-postgres
pip install --upgrade pip
dbt init pg_dbt
dbt debug  # проверка подключения
```
или
```bash
pip install --upgrade pip
pip install -r requirements.txt
dbt debug  # проверка подключения
```

Основные команды
```bash
dbt run # Запускает преобразование данных
dbt build # Выполняет полный цикл работы: последовательно запускает run, test, seed (если есть) и snapshot (если есть) для всех моделей или указанных. 
dbt compile # Компилирует Jinja-шаблоны в чистый SQL, но не выполняет его в БД. Результат сохраняется в папке target/compiled. Полезен для отладки SQL-кода перед запуском.
dbt snapshot # Запускает модели типа snapshot для отслеживания изменений в данных (SCD Type 2). Создает или обновляет таблицы с историей изменений (например, для отслеживания цен товаров).
dbt docs generate; # Создает статическую документацию на основе кода и комментариев (schema.yml).
dbt docs serve # Запускает локальный веб-сервер для просмотра документации.
# http://localhost:8080/#!/overview
dbt run -m name_of_model
dbt run -m tag:name_tag  # Запускает все модели с тегом name_tag. Теги задаются в dbt_project.yml или в config модели
dbt test  # Запускает тесты данных (проверки на уникальность, NULL, кастомные SQL-тесты). Тесты определяются в schema.yml или отдельных SQL-файлах.  
```

Packages
- dbt_utils
```bash
11. dbt deps # add packages 
```

Github actions
- Настроены 2 workflows: dbt_ci (pull_request), dbt_deploy (branch main)
