-- enum data type- column that has a predifined list of allowed values

select product_id from products where low_fats = 'Y' and recyclable = 'Y'

select name from customer where referee_id <> 2 or  referee_id is null

select name, population, area from world where population >= 25000000 or area >= 3000000;

select distinct author_id as id from views where author_id = viewer_id order by id;

select tweet_id from Tweets where length(content) > 15

