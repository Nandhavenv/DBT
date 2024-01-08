{% if var("env") == 'DEV' %}
select 'DEV' as environment from dual
{% elif var("env") == 'QUA' %}
select 'QUA' as environment from dual
{% elif var("env") == 'PRD' %}
select 'PRD' as environment from dual
{% else %}
  SELECT 'Unknown' AS environment FROM dual
{% endif %}
