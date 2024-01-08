{% set emp_name = ["Nandha", "Karthi", "Kishorika","Kaviya","Mano","Sarumathi"] %}
{% for emp_namee in emp_name %}
  SELECT
    '{{ emp_namee }}' AS emp
  FROM dual
  UNION ALL
{% endfor %}
SELECT 'Shankar' AS emp

FROM dual
