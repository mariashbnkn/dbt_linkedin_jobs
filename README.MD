```bash
python -m pip install dbt-core dbt-postgres
pip install --upgrade pip
dbt init pg_dbt
dbt debug  # проверка подключения
```

```bash
dbt build
dbt compile
dbt snapshot
dbt docs generate; 
dbt docs serve
# http://localhost:8080/#!/overview
dbt run -m name_of_model
dbt run -m tag:marts
dbt test
```

Packages
- dbt_utils
```bash
11. dbt deps # add packages 
```
