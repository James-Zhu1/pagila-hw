/* 
 * Use a JOIN to list the number of copies of each film in the inventory system that begins with the letter h.
 * Use tables inventory and film.
 * Order by film title in reverse alphabetical order.
 */

 select film_id, title, count(store_id) as count from film join inventory using (film_id) where title like 'H%' group by film_id order by title desc;
