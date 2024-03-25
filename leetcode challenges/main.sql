-- enum data type- column that has a predifined list of allowed values

select product_id from products where low_fats = 'Y' and recyclable = 'Y'

select name from customer where referee_id <> 2 or  referee_id is null