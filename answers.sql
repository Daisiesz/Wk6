-- Answer 1: Using Inner Join to get names, emails and codes
SELECT users.name, users.email, codes.code
FROM users
INNER JOIN codes ON users.id = codes.user_id;

-- Answer 2: Using left join to