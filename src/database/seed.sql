--
-- Used to add example values to the DB
--

-- Required, otherwise inserting products breaks categories references
PRAGMA foreign_keys = OFF;

BEGIN;

INSERT INTO tasks VALUES
  (1, 'Create my first todo', '2022-09-16 01:01:01',0),
  (2, 'Buy milk', '2022-09-16 11:10:07',1),
  (3, 'Become a 10x developer', '2022-09-16 23:59:59',0)
ON CONFLICT(id) DO NOTHING;

INSERT INTO categories VALUES
  (1, 'Beverages', 'Soft drinks, coffees, teas, beers, and ales'),
  (2, 'Condiments', 'Sweet and savory sauces, relishes, spreads, and seasonings'),
  (3, 'Confections', 'Desserts, candies, and sweet breads'),
  (4, 'Dairy Products', 'Cheeses'),
  (5, 'Grains/Cereals', 'Breads, crackers, pasta, and cereal'),
  (6, 'Meat/Poultry', 'Prepared meats'),
  (7, 'Produce', 'Dried fruit and bean curd'),
  (8, 'Seafood', 'Seaweed and fish')
ON CONFLICT DO NOTHING;

INSERT INTO products VALUES
  (1, 'Chai', 1, '10 boxes x 20 bags', 18, 39, 0),
  (2, 'Chang', 1, '24 - 12 oz bottles', 19, 17, 40),
  (3, 'Aniseed Syrup', 2, '12 - 550 ml bottles', 10, 13, 70),
  (4, 'Chef Anton''s Cajun Seasoning', 2, '48 - 6 oz jars', 22, 53, 0),
  (5, 'Chef Anton''s Gumbo Mix', 2, '36 boxes', 21.35, 0, 0),
  (6, 'Grandma''s Boysenberry Spread', 2, '12 - 8 oz jars', 25, 120, 0),
  (7, 'Uncle Bob''s Organic Dried Pears', 7, '12 - 1 lb pkgs.', 30, 15, 0),
  (8, 'Northwoods Cranberry Sauce', 2, '12 - 12 oz jars', 40, 6, 0),
  (9, 'Mishi Kobe Niku', 6, '18 - 500 g pkgs.', 97, 29, 0),
  (10, 'Ikura', 8, '12 - 200 ml jars', 31, 31, 0),
  (11, 'Queso Cabrales', 4, '1 kg pkg.', 21, 22, 30),
  (12, 'Queso Manchego La Pastora', 4, '10 - 500 g pkgs.', 38, 86, 0),
  (13, 'Konbu', 8, '2 kg box', 6, 24, 0),
  (14, 'Tofu', 7, '40 - 100 g pkgs.', 23.25, 35, 0),
  (15, 'Genen Shouyu', 2, '24 - 250 ml bottles', 15.5, 39, 0),
  (16, 'Pavlova', 3, '32 - 500 g boxes', 17.45, 29, 0),
  (17, 'Alice Mutton', 6, '20 - 1 kg tins', 39, 0, 0),
  (18, 'Carnarvon Tigers', 8, '16 kg pkg.', 62.5, 42, 0),
  (19, 'Teatime Chocolate Biscuits', 3, '10 boxes x 12 pieces', 9.2, 25, 0),
  (20, 'Sir Rodney''s Marmalade', 3, '30 gift boxes', 81, 40, 0),
  (21, 'Sir Rodney''s Scones', 3, '24 pkgs. x 4 pieces', 10, 3, 40),
  (22, 'Gustaf''s Knäckebröd', 5, '24 - 500 g pkgs.', 21, 104, 0),
  (23, 'Tunnbröd', 5, '12 - 250 g pkgs.', 9, 61, 0),
  (24, 'Guaraná Fantástica', 1, '12 - 355 ml cans', 4.5, 20, 0),
  (25, 'NuNuCa Nuß-Nougat-Creme', 3, '20 - 450 g glasses', 14, 76, 0),
  (26, 'Gumbär Gummibärchen', 3, '100 - 250 g bags', 31.23, 15, 0),
  (27, 'Schoggi Schokolade', 3, '100 - 100 g pieces', 43.9, 49, 0),
  (28, 'Rössle Sauerkraut', 7, '25 - 825 g cans', 45.6, 26, 0),
  (29, 'Thüringer Rostbratwurst', 6, '50 bags x 30 sausgs.', 123.79, 0, 0),
  (30, 'Nord-Ost Matjeshering', 8, '10 - 200 g glasses', 25.89, 10, 0),
  (31, 'Gorgonzola Telino', 4, '12 - 100 g pkgs', 12.5, 0, 70),
  (32, 'Mascarpone Fabioli', 4, '24 - 200 g pkgs.', 32, 9, 40),
  (33, 'Geitost', 4, '500 g', 2.5, 112, 0),
  (34, 'Sasquatch Ale', 1, '24 - 12 oz bottles', 14, 111, 0),
  (35, 'Steeleye Stout', 1, '24 - 12 oz bottles', 18, 20, 0),
  (36, 'Inlagd Sill', 8, '24 - 250 g  jars', 19, 112, 0),
  (37, 'Gravad lax', 8, '12 - 500 g pkgs.', 26, 11, 50),
  (38, 'Côte de Blaye', 1, '12 - 75 cl bottles', 263.5, 17, 0),
  (39, 'Chartreuse verte', 1, '750 cc per bottle', 18, 69, 0),
  (40, 'Boston Crab Meat', 8, '24 - 4 oz tins', 18.4, 123, 0),
  (41, 'Jack''s New England Clam Chowder', 8, '12 - 12 oz cans', 9.65, 85, 0),
  (42, 'Singaporean Hokkien Fried Mee', 5, '32 - 1 kg pkgs.', 14, 26, 0),
  (43, 'Ipoh Coffee', 1, '16 - 500 g tins', 46, 17, 10),
  (44, 'Gula Malacca', 2, '20 - 2 kg bags', 19.45, 27, 0),
  (45, 'Rogede sild', 8, '1k pkg.', 9.5, 5, 70),
  (46, 'Spegesild', 8, '4 - 450 g glasses', 12, 95, 0),
  (47, 'Zaanse koeken', 3, '10 - 4 oz boxes', 9.5, 36, 0),
  (48, 'Chocolade', 3, '10 pkgs.', 12.75, 15, 70),
  (49, 'Maxilaku', 3, '24 - 50 g pkgs.', 20, 10, 60),
  (50, 'Valkoinen suklaa', 3, '12 - 100 g bars', 16.25, 65, 0),
  (51, 'Manjimup Dried Apples', 7, '50 - 300 g pkgs.', 53, 20, 0),
  (52, 'Filo Mix', 5, '16 - 2 kg boxes', 7, 38, 0),
  (53, 'Perth Pasties', 6, '48 pieces', 32.8, 0, 0),
  (54, 'Tourtière', 6, '16 pies', 7.45, 21, 0),
  (55, 'Pâté chinois', 6, '24 boxes x 2 pies', 24, 115, 0),
  (56, 'Gnocchi di nonna Alice', 5, '24 - 250 g pkgs.', 38, 21, 10),
  (57, 'Ravioli Angelo', 5, '24 - 250 g pkgs.', 19.5, 36, 0),
  (58, 'Escargots de Bourgogne', 8, '24 pieces', 13.25, 62, 0),
  (59, 'Raclette Courdavault', 4, '5 kg pkg.', 55, 79, 0),
  (60, 'Camembert Pierrot', 4, '15 - 300 g rounds', 34, 19, 0),
  (61, 'Sirop d''érable', 2, '24 - 500 ml bottles', 28.5, 113, 0),
  (62, 'Tarte au sucre', 3, '48 pies', 49.3, 17, 0),
  (63, 'Vegie-spread', 2, '15 - 625 g jars', 43.9, 24, 0),
  (64, 'Wimmers gute Semmelknödel', 5, '20 bags x 4 pieces', 33.25, 22, 80),
  (65, 'Louisiana Fiery Hot Pepper Sauce', 2, '32 - 8 oz bottles', 21.05, 76, 0),
  (66, 'Louisiana Hot Spiced Okra', 2, '24 - 8 oz jars', 17, 4, 100),
  (67, 'Laughing Lumberjack Lager', 1, '24 - 12 oz bottles', 14, 52, 0),
  (68, 'Scottish Longbreads', 3, '10 boxes x 8 pieces', 12.5, 6, 10),
  (69, 'Gudbrandsdalsost', 4, '10 kg pkg.', 36, 26, 0),
  (70, 'Outback Lager', 1, '24 - 355 ml bottles', 15, 15, 10),
  (71, 'Flotemysost', 4, '10 - 500 g pkgs.', 21.5, 26, 0),
  (72, 'Mozzarella di Giovanni', 4, '24 - 200 g pkgs.', 34.8, 14, 0),
  (73, 'Röd Kaviar', 8, '24 - 150 g jars', 15, 101, 0),
  (74, 'Longlife Tofu', 7, '5 kg pkg.', 10, 4, 20),
  (75, 'Rhönbräu Klosterbier', 1, '24 - 0.5 l bottles', 7.75, 125, 0),
  (76, 'Lakkalikööri', 1, '500 ml', 18, 57, 0),
  (77, 'Original Frankfurter grüne Soße', 2, '12 boxes', 13, 32, 0)
ON CONFLICT DO NOTHING;

COMMIT;

-- turn this back on now we're done
PRAGMA foreign_keys = ON;
