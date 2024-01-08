{% set emp_name = ["Nandha", "Karthi", "Kishorika", "Kaviya", "Mano", "Sarumathi"] %}
{% for emp_namee in emp_name %}
    select '{{ emp_namee }}' as emp
    from dual
    union all
{% endfor %}
select 'Shankar' as emp

from dual
