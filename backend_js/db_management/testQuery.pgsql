
-- SELECT PASSWORD FROM USERS where email='babu.slapps@tmail.com'

-- SELECT keywords FROM disasters where location='{"city":"Chicago","state":"Illinois","country":"USA"}';
-- UPDATE disasters SET keywords = jsonb_set(keywords, '{type}','["fire"]') WHERE location='{"city":"Chicago","state":"Illinois","country":"USA"}';
-- UPDATE disasters SET keywords = jsonb_set(keywords, '{type}','["fire"]') WHERE location='{"city":"Chicago","state":"Illinois","country":"USA"}';
-- SELECT disaster_id from disasters WHERE location='{"city":"Chicago","state":"Illinois","country":"USA"}';

-- UPDATE users SET tags = tags || array['admin'];
-- UPDATE users SET data = jsonb_set(data, '{name}', '"John"');

SELECT * from disasters;
SELECT * FROM users;
SELECT * FROM items WHERE NAME='*paper*' ;
SELECT * FROM requesters;
SELECT * FROM requests;
SELECT * FROM donations;
SELECT * FROM donors;

insert into requests (requester_id, disaster_id, item_id, num_needed,num_provided)
VALUES(1,1,1,20,5);

-- insert into items (name,type,keywords)
-- VALUES(
--     'paper towels',
--     'cleaning',
--     '["clean","paper","large"]'
-- )


-- ALTER TABLE users ADD COLUMN isAdmin bool;
-- INSERT INTO users ("First_Name","Last_Name","Email","Location","Password",isadmin)
-- VALUES('scoop',
--     'loop',
--     'tmail@tmail.com',
--     '{"Address":"111 Illiois Rd", "Country":"United States", "State":"Illinois", "City":"Naperville", "Zipcode":60563}), "isadmin":false}',
--     'pass',
--     false)
-- -- INSERT INTO  ("First_Name", "Last_Name", "Email", "Password", "Location", "isadmin")
-- -- VALUES
-- --   ( 'scoop',
-- --     'loop',
-- --     'tmail@tmail.com',
-- --     'pass',
-- --     '{"Address":"111 Illiois Rd", "Country":"United States", "State":"Illinois", "City":"Naperville", "Zipcode":60563}), "isadmin":false}',
-- --     false); 