{% macro track_job_changes(date1, date2) %}
    {% set changes_query %}
        SELECT COUNT(1) AS changes
        FROM {{ ref('job_snapshots') }}
        WHERE dbt_valid_from between '{{ date1 }}'::date and '{{ date2 }}'::date
    {% endset %}

    {% set results = run_query(changes_query) %}
    {% if results and results[0][0] > 0 %}
        {{ log('Обнаружены изменения в ' ~ results[0][0] ~ ' вакансиях', info=True) }}
    {% endif %}
{% endmacro %}