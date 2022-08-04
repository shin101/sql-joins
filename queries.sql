-- write your queries here

-- 1. SELECT * FROM owners FULL JOIN vehicles ON owners.id = vehicles.owner_id;

-- 2. SELECT first_name, last_name, COUNT(owner_id)
-- FROM owners JOIN vehicles ON owners.id = vehicles.owner_id 
-- GROUP BY first_name, last_name 
-- ORDER BY first_name;

3. SELECT first_name, last_name, AVG(price) AS average_price, COUNT(owner_id) AS vehicle_count
FROM owners JOIN vehicles ON owners.id = vehicles.owner_id 
GROUP BY first_name, last_name
HAVING vehicle_count > 1 AND average_price>10000
ORDER BY first_name DESC;
