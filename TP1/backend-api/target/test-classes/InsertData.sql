DROP TABLE IF EXISTS students CASCADE;
DROP TABLE IF EXISTS departments CASCADE ;


CREATE TABLE public.departments
(
  id      SERIAL      PRIMARY KEY,
  name    VARCHAR(20) NOT NULL
);

CREATE TABLE public.students
(
  id              SERIAL      PRIMARY KEY,
  department_id   INT         NOT NULL REFERENCES departments (id),
  first_name      VARCHAR(20) NOT NULL,
  last_name       VARCHAR(20) NOT NULL
);
INSERT INTO departments (name)
VALUES ('ASI'),
       ('CFI'),
       ('EP'),
       ('GC'),
       ('GM'),
       ('MECA'),
       ('MRIE'),
       ('PERF-E'),
       ('PERF-I');


INSERT INTO students (first_name, last_name, department_id)
VALUES ('Gautier', 'Darchen', 1),
       ('Jonathan', 'Le Bloas', 1),
       ('Franck', 'Bolduc', 1),
       ('Gaston', 'Lagaffe', 2),
       ('Theodor', 'Nomrandom', 3),
       ('Jeanne', 'Ausecours', 4),
       ('Domitille', 'Monton', 5),
       ('Jacky', 'Sardou', 6),
       ('Valentin', 'Patrick', 7),
       ('Mohammed', 'Benevento', 8),
       ('Sophie', 'Schutt', 9),
       ('Madonna', 'Soto', 9),
       ('Julie', 'Waller', 4),
       ('Damon', 'Gregory', 7),
       ('Dominic', 'Rowe', 1),
       ('Alan', 'Mckay', 6),
       ('Quinlan', 'Bartlett', 1),
       ('Blake', 'Welch', 6),
       ('Jakeem', 'Phelps', 3),
       ('Kylee', 'Shepard', 9),
       ('Sybil', 'Raymond', 4),
       ('Evelyn', 'Holman', 4),
       ('Nash', 'Mccray', 7),
       ('Ursa', 'Morin', 3),
       ('Alan', 'Rasmussen', 6),
       ('Iris', 'Bean', 5),
       ('Wade', 'Mullen', 9),
       ('Addison', 'Boyd', 9),
       ('Ebony', 'Whitehead', 6),
       ('Isaac', 'Weiss', 4),
       ('Keely', 'Massey', 3),
       ('Zeus', 'Yates', 9),
       ('Summer', 'Bauer', 3),
       ('Eagan', 'Beard', 2),
       ('Nyssa', 'Andrews', 2),
       ('Rhonda', 'Johns', 8),
       ('Evan', 'Goodman', 3),
       ('Alden', 'Newton', 9),
       ('Timon', 'York', 3),
       ('Rafael', 'Hudson', 1),
       ('MacKensie', 'Meyers', 6),
       ('Axel', 'Glenn', 2),
       ('Erasmus', 'Schmidt', 7),
       ('Mara', 'Hickman', 7),
       ('Jescie', 'Moore', 7),
       ('Uma', 'Conway', 3),
       ('Cherokee', 'Hudson', 6),
       ('Martin', 'Peterson', 3),
       ('Demetria', 'Santiago', 5),
       ('Maya', 'Austin', 7),
       ('Charlotte', 'Simmons', 8),
       ('Vivian', 'Colon', 4),
       ('Patricia', 'Walton', 5),
       ('Baker', 'Carlson', 4),
       ('Calvin', 'Reyes', 9),
       ('Byron', 'Gay', 8),
       ('Regan', 'Wiley', 4),
       ('Nina', 'Chambers', 6),
       ('Octavius', 'Hess', 3),
       ('Hedda', 'Mcmillan', 2),
       ('Aidan', 'Meadows', 7),
       ('Iris', 'Nash', 7),
       ('Brenda', 'Maddox', 3),
       ('Justin', 'Salinas', 4),
       ('Dylan', 'Burris', 4),
       ('Olympia', 'Camacho', 6),
       ('Armando', 'Kim', 8),
       ('Harriet', 'Cooke', 2),
       ('Guy', 'Powell', 5),
       ('Grant', 'Rocha', 7),
       ('Darryl', 'Soto', 6),
       ('Martin', 'Nolan', 2),
       ('Blair', 'Crosby', 9),
       ('Oliver', 'Jennings', 6),
       ('Dennis', 'Wells', 4),
       ('Lucian', 'Odonnell', 9),
       ('Magee', 'Buchanan', 5),
       ('Daria', 'Frank', 2),
       ('Buffy', 'Stout', 1),
       ('Walter', 'Mcgee', 5),
       ('Odessa', 'Manning', 7),
       ('Keelie', 'Walters', 7),
       ('Valentine', 'Shelton', 2),
       ('Chloe', 'Dickerson', 1),
       ('Lucas', 'Ingram', 2),
       ('Plato', 'Davidson', 8),
       ('Walter', 'Griffith', 5),
       ('Imelda', 'Snider', 4),
       ('Chloe', 'Sanford', 5),
       ('Colt', 'Olsen', 4),
       ('Cherokee', 'Palmer', 7),
       ('Colorado', 'Wells', 6),
       ('Colorado', 'Williamson', 2),
       ('Penelope', 'Murphy', 4),
       ('Hamilton', 'Kaufman', 2),
       ('Mia', 'Mayo', 8),
       ('Kendall', 'Walker', 1),
       ('Kathleen', 'Hooper', 5),
       ('Gannon', 'Ellis', 8),
       ('Audrey', 'Dotson', 3),
       ('Dylan', 'Buckley', 2),
       ('Hanna', 'Atkins', 2),
       ('Miriam', 'Wolf', 2),
       ('Maile', 'Henson', 9),
       ('Colton', 'Britt', 3),
       ('Cleo', 'Whitley', 1),
       ('Garrett', 'Valencia', 9),
       ('Wyatt', 'Stewart', 1),
       ('Pamela', 'Sutton', 3),
       ('Ciara', 'Scott', 9),
       ('Ivory', 'Mejia', 4),
       ('Cameron', 'Frazier', 2),
       ('Brody', 'Hood', 3),
       ('Christen', 'Quinn', 1),
       ('Sawyer', 'Castro', 4),
       ('Karly', 'Dixon', 4),
       ('Kristen', 'Blackwell', 7),
       ('Erin', 'Casey', 1),
       ('Curran', 'Shepard', 4),
       ('Hannah', 'Gibson', 5),
       ('Levi', 'Bennett', 8),
       ('Vivien', 'Mcfadden', 4),
       ('Alyssa', 'Noble', 2),
       ('Lisandra', 'Bender', 6),
       ('Valentine', 'Brooks', 3),
       ('Tatum', 'Wyatt', 1),
       ('Dillon', 'Ratliff', 4),
       ('Amela', 'Duran', 9),
       ('Casey', 'Whitney', 7),
       ('Stone', 'Robertson', 6),
       ('Xerxes', 'Collier', 6),
       ('Daniel', 'Morrow', 9),
       ('Zorita', 'York', 7),
       ('Charity', 'Gutierrez', 6),
       ('Chadwick', 'Sparks', 7),
       ('Alfonso', 'Poole', 8),
       ('Graiden', 'Richardson', 8),
       ('Deacon', 'Hobbs', 7),
       ('Garrett', 'Sharp', 8),
       ('Charlotte', 'Campbell', 2),
       ('Colin', 'Mills', 5),
       ('Xavier', 'Giles', 5),
       ('Brennan', 'Buchanan', 8),
       ('Xanthus', 'Mann', 6),
       ('Coby', 'Watson', 4),
       ('Charde', 'Page', 8),
       ('Cooper', 'Wilkins', 7),
       ('Kane', 'Conrad', 2),
       ('Rhiannon', 'Mayo', 6),
       ('Charissa', 'Small', 8),
       ('Jarrod', 'Rodriquez', 5),
       ('Jonah', 'Glenn', 7),
       ('Cameron', 'Donovan', 4),
       ('Hector', 'Morales', 6),
       ('Malcolm', 'Francis', 2),
       ('Cade', 'Barry', 8),
       ('Buffy', 'Sims', 1),
       ('Vaughan', 'Downs', 6),
       ('Quinn', 'Eaton', 8),
       ('Kaseem', 'Kirby', 7),
       ('Zane', 'Wall', 1),
       ('Rebekah', 'Richardson', 2),
       ('Stephanie', 'Hood', 3),
       ('Sandra', 'Hyde', 9),
       ('Cassady', 'Bentley', 6),
       ('Brock', 'Miles', 6),
       ('Kyle', 'Fuentes', 5),
       ('Rafael', 'Cunningham', 4),
       ('Amela', 'Witt', 4),
       ('Gage', 'Poole', 6),
       ('Jarrod', 'English', 6),
       ('Quail', 'Perry', 9),
       ('Preston', 'Randolph', 6),
       ('Perry', 'Bond', 3),
       ('Mara', 'Nixon', 7),
       ('Aspen', 'Carlson', 6),
       ('Talon', 'Rosales', 3),
       ('Noble', 'Mack', 4),
       ('Clayton', 'Carter', 8),
       ('Griffin', 'Fisher', 4),
       ('Shellie', 'Rosales', 6),
       ('Ina', 'Jones', 1),
       ('Rudyard', 'Richard', 4),
       ('Paki', 'Bell', 3),
       ('Igor', 'Short', 8),
       ('Blake', 'Mann', 8),
       ('Graiden', 'Baird', 6),
       ('Valentine', 'Hood', 7),
       ('Flavia', 'Wiley', 1),
       ('Alfonso', 'Chambers', 8),
       ('Wyoming', 'Cote', 9),
       ('Len', 'Burton', 9),
       ('Fuller', 'Roman', 6),
       ('Clarke', 'Vaughn', 3),
       ('Raymond', 'Glenn', 3),
       ('Athena', 'Ellis', 3),
       ('Christian', 'Donaldson', 9),
       ('Omar', 'Hyde', 7),
       ('Ivor', 'Zamora', 7),
       ('Aphrodite', 'Gardner', 6),
       ('Mechelle', 'Padilla', 4),
       ('Nadine', 'Patrick', 7),
       ('Selma', 'Emerson', 1),
       ('Lysandra', 'Coleman', 7),
       ('Elijah', 'Pitts', 4),
       ('Hedley', 'Glenn', 1),
       ('Vivien', 'King', 2),
       ('Adrienne', 'Powell', 1),
       ('Renee', 'George', 6),
       ('Sydney', 'Bird', 7),
       ('Maile', 'Humphrey', 8),
       ('Jason', 'Mckenzie', 4),
       ('Tanek', 'Anderson', 8),
       ('Amir', 'Alexander', 2),
       ('Lillith', 'Logan', 5),
       ('Elliott', 'Small', 9),
       ('Coby', 'Tillman', 5),
       ('Fulton', 'Odom', 3),
       ('Hammett', 'Wilkerson', 7),
       ('Constance', 'Hawkins', 5),
       ('Carson', 'Perkins', 6),
       ('Ciara', 'Williamson', 8),
       ('Whilemina', 'Randall', 4),
       ('Melvin', 'Patel', 6),
       ('Odette', 'Rice', 9),
       ('Zia', 'Mccormick', 9),
       ('Brody', 'Nichols', 5),
       ('Colleen', 'Mcgowan', 1),
       ('Finn', 'Greer', 7),
       ('Kirby', 'Mercer', 4),
       ('Emerson', 'Patel', 9),
       ('Xantha', 'William', 1),
       ('Declan', 'Cabrera', 2),
       ('Cynthia', 'Parker', 7),
       ('Knox', 'Schroeder', 4),
       ('Thane', 'Stone', 5),
       ('Daniel', 'Stevenson', 6),
       ('Roanna', 'Blair', 4),
       ('Nigel', 'Byers', 6),
       ('Kristen', 'Black', 1),
       ('Rose', 'Oliver', 9),
       ('Thor', 'Taylor', 6),
       ('Slade', 'Sharpe', 5),
       ('Angelica', 'Day', 1),
       ('Duncan', 'Knight', 9),
       ('Bertha', 'Edwards', 2),
       ('Cairo', 'Shaw', 1),
       ('Rachel', 'Wagner', 7),
       ('Lavinia', 'Goodwin', 3),
       ('Hiram', 'Hoffman', 4),
       ('Kato', 'Strong', 6),
       ('Ainsley', 'Lawson', 6),
       ('Mercedes', 'Newman', 4),
       ('Ian', 'Graham', 6),
       ('Jesse', 'Abbott', 4),
       ('Lenore', 'Perez', 2),
       ('Cassady', 'Randall', 5),
       ('Acton', 'Wyatt', 4),
       ('Serena', 'Austin', 4),
       ('Byron', 'Chen', 7),
       ('Kessie', 'Brewer', 3),
       ('Ria', 'Cantu', 4),
       ('Dennis', 'Frazier', 1),
       ('Rhiannon', 'Cruz', 1),
       ('Tyler', 'Lawson', 9),
       ('Jerome', 'Cannon', 3),
       ('Tamara', 'Becker', 5),
       ('Aladdin', 'Brady', 3),
       ('Quynn', 'Underwood', 7),
       ('Urielle', 'Kane', 9),
       ('Dai', 'Wooten', 3),
       ('Blythe', 'Patrick', 5),
       ('Ivory', 'Hyde', 7),
       ('Philip', 'Mcneil', 9),
       ('Octavia', 'Bradley', 7),
       ('Giacomo', 'Arnold', 4),
       ('Allen', 'Koch', 9),
       ('Alana', 'Acosta', 8),
       ('Tiger', 'Acosta', 3),
       ('Jenna', 'Buckley', 3),
       ('Curran', 'Sears', 4),
       ('Kato', 'Raymond', 1),
       ('Brian', 'Lopez', 1),
       ('Ezra', 'Roberson', 1),
       ('Myles', 'Holland', 4),
       ('Brooke', 'Zamora', 6),
       ('Giacomo', 'Dorsey', 4),
       ('Henry', 'Cole', 7),
       ('Brynne', 'Goodman', 9),
       ('Jorden', 'Sargent', 3),
       ('Charissa', 'Chavez', 2),
       ('Graham', 'Nixon', 8),
       ('Riley', 'Mclaughlin', 6),
       ('Zeph', 'Dyer', 2),
       ('Savannah', 'Chaney', 5),
       ('Jelani', 'Neal', 5),
       ('Lunea', 'Farley', 6),
       ('Penelope', 'Wong', 8),
       ('Blossom', 'Hyde', 3),
       ('Angela', 'Gonzalez', 1),
       ('Fay', 'Daniels', 1),
       ('Sage', 'Clements', 8),
       ('Lucius', 'Rose', 8),
       ('Jelani', 'Bryant', 3),
       ('Michael', 'Shields', 5),
       ('Boris', 'Mayo', 6),
       ('Rhoda', 'Holloway', 1),
       ('Ivan', 'Hunt', 7),
       ('Brandon', 'Moses', 3),
       ('Dustin', 'Noel', 5),
       ('Tucker', 'Townsend', 4),
       ('Kirsten', 'Burke', 5),
       ('Amy', 'Graham', 5),
       ('Margaret', 'Frazier', 1),
       ('Pearl', 'Knight', 8),
       ('Penelope', 'Porter', 3),
       ('Madeline', 'Michael', 5),
       ('Raymond', 'Montgomery', 5),
       ('Serena', 'Nichols', 6),
       ('Stone', 'Berry', 8),
       ('Thomas', 'Henderson', 4),
       ('Cora', 'Sanchez', 4),
       ('Mohammad', 'Witt', 4),
       ('Cathleen', 'Nelson', 3),
       ('Keiko', 'Lawrence', 9),
       ('Nyssa', 'Frazier', 8),
       ('Vaughan', 'Crawford', 2),
       ('Blake', 'Mullen', 6),
       ('Baxter', 'Coffey', 7),
       ('Kristen', 'Vaughn', 3),
       ('Minerva', 'Hayden', 6),
       ('Logan', 'Hancock', 6),
       ('Urielle', 'Glenn', 1),
       ('Colt', 'Weiss', 5),
       ('Adrienne', 'Cherry', 4),
       ('Tanner', 'Thompson', 5),
       ('Walter', 'Glenn', 5),
       ('Carissa', 'Reynolds', 4),
       ('Ima', 'Jacobs', 7),
       ('Burke', 'Clark', 5),
       ('Acton', 'Gilbert', 7),
       ('Solomon', 'Kirby', 6),
       ('Herrod', 'Mckay', 1),
       ('Jaden', 'Jones', 2),
       ('Ina', 'Lowe', 2),
       ('Tana', 'Cunningham', 9),
       ('Emerson', 'Hurley', 6),
       ('Perry', 'Fitzpatrick', 4),
       ('Edan', 'Herring', 4),
       ('Alfreda', 'Navarro', 2),
       ('Imogene', 'Mcgee', 2),
       ('Brynn', 'Frost', 7),
       ('Hedwig', 'Nichols', 4),
       ('Gay', 'Hicks', 7),
       ('Emmanuel', 'Irwin', 3),
       ('Michael', 'Wood', 2),
       ('Cheyenne', 'Hall', 2),
       ('Coby', 'Cherry', 2),
       ('Todd', 'Lester', 5),
       ('Merrill', 'Graham', 2),
       ('Dillon', 'Boyd', 4),
       ('Adam', 'Houston', 6),
       ('Dylan', 'Holmes', 2),
       ('Otto', 'Church', 2),
       ('Lucius', 'Nixon', 2),
       ('Baker', 'Stevenson', 7),
       ('Ryder', 'Ferguson', 2),
       ('Castor', 'Lindsay', 2),
       ('Danielle', 'Kim', 8),
       ('Debra', 'Caldwell', 3),
       ('Kendall', 'Webster', 4),
       ('Len', 'Leblanc', 4),
       ('Gwendolyn', 'Cervantes', 1),
       ('Jillian', 'Peters', 2),
       ('Neve', 'Oneil', 1),
       ('Finn', 'Miranda', 1),
       ('Jonah', 'Merritt', 3),
       ('Leonard', 'Lloyd', 6),
       ('Quemby', 'Meyer', 9),
       ('Griffin', 'Hatfield', 1),
       ('Kibo', 'Daugherty', 8),
       ('Nelle', 'French', 8),
       ('Kasper', 'Velazquez', 1),
       ('Maris', 'Mccoy', 5),
       ('Oprah', 'Russo', 5),
       ('Emmanuel', 'Padilla', 5),
       ('Gretchen', 'Norris', 1),
       ('Hamish', 'Terry', 3),
       ('Cain', 'Burch', 4),
       ('Boris', 'Hewitt', 1),
       ('Heidi', 'Holden', 7),
       ('Martin', 'Willis', 7),
       ('Ryder', 'Bentley', 3),
       ('Adele', 'Estes', 6),
       ('Paul', 'William', 2),
       ('Gemma', 'Wood', 1),
       ('Todd', 'Hernandez', 9),
       ('John', 'Mcdaniel', 7),
       ('Vanna', 'Stafford', 6),
       ('Bianca', 'Klein', 4),
       ('Ashton', 'Walker', 5),
       ('Sigourney', 'Reyes', 9),
       ('Amery', 'Short', 6),
       ('Marsden', 'Ayala', 1),
       ('Tallulah', 'Ayers', 3),
       ('Reuben', 'Cherry', 1),
       ('Tana', 'Heath', 6),
       ('Josephine', 'Travis', 8),
       ('Macaulay', 'Mason', 1),
       ('Odessa', 'Malone', 7),
       ('Ryder', 'Levy', 7);