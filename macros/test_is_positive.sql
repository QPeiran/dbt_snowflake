{% macro test_is_positive(model, column_name) %}

with validation as (

    select
        {{ column_name }} as positive_field

    from {{ model }}

),

validation_errors as (

    select
        positive_field

    from validation
    -- if this is true, then even_field is actually odd!
    where not(positive_field >= 0)

)

select count(*)
from validation_errors

{% endmacro %}