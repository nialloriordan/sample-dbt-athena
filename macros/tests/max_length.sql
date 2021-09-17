{% test max_length(model, column_name) %}

    {{ config(severity = 'warn') }}

    select *
    from {{ model }}
    where length({{ column_name }}) < 5

{% endtest %}