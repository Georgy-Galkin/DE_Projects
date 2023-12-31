-- INSERT statements for dim_regions (5 rows)
INSERT INTO dim_regions ("region_code", "region_name") VALUES
    (1, 'North Region'),
    (2, 'South Region'),
    (3, 'East Region'),
    (4, 'West Region'),
    (5, 'Central Region');

-- INSERT statements for dim_sku_base (10 rows)
INSERT INTO dim_sku_base ("sku_internal_code", "sku_internal_name", "manufacturer") VALUES
    ('SKU001', 'Classic Hershey''s Milk Chocolate Bar 100g', 'Hershey Company'),
    ('SKU002', 'Reese''s Peanut Butter Cups', 'Hershey Company'),
    ('SKU003', 'M&M''s Milk Chocolate Candies', 'Mars, Inc.'),
    ('SKU004', 'Snickers Almond Bar', 'Mars, Inc.'),
    ('SKU005', 'Kit Kat Crisp Wafers', 'Nestle'),
    ('SKU006', 'Twizzlers Strawberry Twists', 'Hershey Company'),
    ('SKU007', 'Skittles Original Fruit Candy', 'Wrigley'),
    ('SKU008', 'Coca-Cola 12 oz Can', 'The Coca-Cola Company'),
    ('SKU009', 'Pepsi 20 oz Bottle', 'PepsiCo'),
    ('SKU010', 'Doritos Cool Ranch Chips', 'Frito-Lay'),
    ('SKU011', 'Hershey''s Cookies ''n'' Creme Bar', 'Hershey Company'),
    ('SKU012', 'Reese''s Pieces', 'Hershey Company'),
    ('SKU013', 'Mars Bar', 'Mars, Inc.'),
    ('SKU014', 'Milky Way Bar', 'Mars, Inc.'),
    ('SKU015', 'Nestle Crunch Bar', 'Nestle'),
    ('SKU016', 'Jolly Rancher Hard Candy', 'Hershey Company'),
    ('SKU017', 'Starburst Fruit Chews', 'Wrigley'),
    ('SKU018', 'Dr. Pepper 20 oz Bottle', 'The Coca-Cola Company'),
    ('SKU019', 'Mountain Dew 12 oz Can', 'PepsiCo'),
    ('SKU020', 'Lay''s Classic Potato Chips', 'Frito-Lay'),
    ('SKU021', 'Sour Patch Kids Candy', 'Mondelez International'),
    ('SKU022', 'Hershey''s Kisses Milk Chocolate', 'Hershey Company'),
    ('SKU023', 'Twix Caramel Chocolate Bar', 'Mars, Inc.'),
    ('SKU024', 'Snickers Peanut Butter Squared', 'Mars, Inc.'),
    ('SKU025', 'Butterfinger Candy Bar', 'Ferrero'),
    ('SKU026', 'Hershey''s Special Dark Chocolate Bar', 'Hershey Company'),
    ('SKU027', 'Coca-Cola Zero Sugar 12 oz Can', 'The Coca-Cola Company'),
    ('SKU028', 'Pepsi Wild Cherry 20 oz Bottle', 'PepsiCo'),
    ('SKU029', 'Ruffles Cheddar and Sour Cream Chips', 'Frito-Lay'),
    ('SKU030', 'Skittles Wild Berry Candy', 'Wrigley'),
    ('SKU031', 'Kit Kat White Chocolate', 'Nestle'),
    ('SKU032', 'M&M''s Peanut Chocolate Candies', 'Mars, Inc.'),
    ('SKU033', '3 Musketeers Candy Bar', 'Mars, Inc.'),
    ('SKU034', 'Toblerone Swiss Milk Chocolate', 'Mondelez International'),
    ('SKU035', 'Sprite 12 oz Can', 'The Coca-Cola Company'),
    ('SKU036', 'Mountain Dew Code Red 20 oz Bottle', 'PepsiCo'),
    ('SKU037', 'Doritos Nacho Cheese Chips', 'Frito-Lay'),
    ('SKU038', 'Twix White Chocolate Bar', 'Mars, Inc.'),
    ('SKU039', 'Snickers Peanut Brownie Bar', 'Mars, Inc.'),
    ('SKU040', 'Hershey''s Symphony Milk Chocolate Bar', 'Hershey Company'),
    ('temp_sku', 'na', 'na');

-- INSERT statements for dim_geo_base (10 rows)
INSERT INTO dim_geo_base ("pos_internal_code", "region_code", "city", "address") VALUES
    ('POS001', 1, 'Los Angeles', '1234 Elm Street, Los Angeles, CA 90001'),
    ('POS002', 2, 'New York', '5678 Maple Avenue, New York, NY 10001'),
    ('POS003', 3, 'Chicago', '9876 Oak Lane, Chicago, IL 60007'),
    ('POS004', 4, 'Houston', '5432 Birch Road, Houston, TX 77002'),
    ('POS005', 5, 'Miami', '2468 Pine Street, Miami, FL 33125'),
    ('POS006', 1, 'Los Angeles', '1357 Cedar Court, Philadelphia, PA 19103'),
    ('POS007', 2, 'New York', '8642 Spruce Drive, Phoenix, AZ 85001'),
    ('POS008', 3, 'Chicago', '2319 Willow Lane, San Francisco, CA 94109'),
    ('POS009', 4, 'Houston', '6754 Redwood Boulevard, Dallas, TX 75201'),
    ('POS010', 5, 'Miami', '7890 Sequoia Way, Atlanta, GA 30301'),
    ('POS011', 1, 'Seattle', '9876 Oak Street, Seattle, WA 98101'),
    ('POS012', 2, 'Portland', '1234 Elm Avenue, Portland, OR 97201'),
    ('POS013', 3, 'Las Vegas', '5678 Pine Lane, Las Vegas, NV 89101'),
    ('POS014', 4, 'Phoenix', '5432 Birch Drive, Phoenix, AZ 85001'),
    ('POS015', 5, 'Albuquerque', '2468 Cedar Road, Albuquerque, NM 87101'),
    ('POS016', 1, 'Denver', '1357 Spruce Court, Denver, CO 80201'),
    ('POS017', 2, 'Salt Lake City', '8642 Willow Drive, Salt Lake City, UT 84101'),
    ('POS018', 3, 'Boise', '2319 Redwood Boulevard, Boise, ID 83701'),
    ('POS019', 4, 'Cheyenne', '6754 Sequoia Way, Cheyenne, WY 82001'),
    ('POS020', 5, 'Billings', '7890 Maple Street, Billings, MT 59101'),
    ('POS021', 1, 'Fargo', '9876 Oak Street, Fargo, ND 58102'),
    ('POS022', 2, 'Sioux Falls', '1234 Elm Avenue, Sioux Falls, SD 57103'),
    ('POS023', 3, 'Omaha', '5678 Pine Lane, Omaha, NE 68104'),
    ('POS024', 4, 'Kansas City', '5432 Birch Drive, Kansas City, KS 66105'),
    ('POS025', 5, 'Tulsa', '2468 Cedar Road, Tulsa, OK 74106'),
    ('POS026', 1, 'Des Moines', '1357 Spruce Court, Des Moines, IA 50309'),
    ('POS027', 2, 'St. Louis', '8642 Willow Drive, St. Louis, MO 63108'),
    ('POS028', 3, 'Chicago', '2319 Redwood Boulevard, Chicago, IL 60601'),
    ('POS029', 4, 'Nashville', '6754 Sequoia Way, Nashville, TN 37201'),
    ('POS030', 5, 'Birmingham', '7890 Maple Street, Birmingham, AL 35201'),
    ('POS031', 1, 'Jackson', '9876 Oak Street, Jackson, MS 39201'),
    ('POS032', 2, 'Little Rock', '1234 Elm Avenue, Little Rock, AR 72201'),
    ('POS033', 3, 'Indianapolis', '5678 Pine Lane, Indianapolis, IN 46201'),
    ('POS034', 4, 'Columbus', '5432 Birch Drive, Columbus, OH 43201'),
    ('POS035', 5, 'Detroit', '2468 Cedar Road, Detroit, MI 48201'),
    ('POS036', 1, 'Milwaukee', '1357 Spruce Court, Milwaukee, WI 53201'),
    ('POS037', 2, 'Minneapolis', '8642 Willow Drive, Minneapolis, MN 55401'),
    ('POS038', 3, 'Fargo', '2319 Redwood Boulevard, Fargo, ND 58102'),
    ('POS039', 4, 'Sioux Falls', '6754 Sequoia Way, Sioux Falls, SD 57103'),
    ('temp_pos', 4, 'na', 'na'),
    ('POS040', 5, 'Omaha', '7890 Maple Street, Omaha, NE 68104');

-- INSERT statements for dim_geo_mapping (10 rows)
-- INSERT statements for dim_geo_mapping (30 rows)
INSERT INTO dim_geo_mapping ("pos_ext_code", "pos_internal_code") VALUES
    ('USWA1235', 'POS011'),
    ('USOR5679', 'POS012'),
    ('USNV9880', 'POS013'),
    ('USAZ5433', 'POS014'),
    ('USNM2469', 'POS015'),
    ('USCO1360', 'POS016'),
    ('USMT8643', 'POS017'),
    ('USID2310', 'POS018'),
    ('USWY6755', 'POS019'),
    ('USUT7891', 'POS020'),
    ('USND1236', 'POS021'),
    ('USSD5680', 'POS022'),
    ('USNE9881', 'POS023'),
    ('USKS5434', 'POS024'),
    ('USOK2470', 'POS025'),
    ('USIA1361', 'POS026'),
    ('USMO8644', 'POS027'),
    ('USAR2311', 'POS028'),
    ('USLA6756', 'POS029'),
    ('USMS7892', 'POS030'),
    ('USTN1237', 'POS031'),
    ('USKY5681', 'POS032'),
    ('USIN9882', 'POS033'),
    ('USOH5435', 'POS034'),
    ('USMI2471', 'POS035'),
    ('USWI1362', 'POS036'),
    ('USMN8645', 'POS037'),
    ('USIA2312', 'POS038'),
    ('USKS6757', 'POS039'),
    ('USOK7893', 'POS040');


-- INSERT statements for dim_matrix_goals (10 rows)
INSERT INTO dim_matrix_goals ("pos_internal_code", "matrix") VALUES
    ('POS001', 1),
    ('POS002', 2),
    ('POS003', 3),
    ('POS004', 1),
    ('POS005', 2),
    ('POS006', 3),
    ('POS007', 1),
    ('POS008', 2),
    ('POS009', 3),
    ('POS010', 1),
    ('POS011', 2),
    ('POS012', 3),
    ('POS013', 1),
    ('POS014', 2),
    ('POS015', 3),
    ('POS016', 1),
    ('POS017', 2),
    ('POS018', 3),
    ('POS019', 1),
    ('POS020', 2),
    ('POS021', 3),
    ('POS022', 1),
    ('POS023', 2),
    ('POS024', 3),
    ('POS025', 1);


-- INSERT statements for dim_matrix_assortment (10 rows)
INSERT INTO dim_matrix_assortment ("sku_internal_code", "matrix") VALUES
    ('SKU003', 3),
    ('SKU004', 1),
    ('SKU023', 3),
    ('SKU024', 1),
    ('SKU025', 2),
    ('SKU026', 1),
    ('SKU027', 2),
    ('SKU028', 3),
    ('SKU029', 1),
    ('SKU030', 2),
    ('SKU031', 3),
    ('SKU032', 1),
    ('SKU033', 2),
    ('SKU034', 3),
    ('SKU035', 1);

-- INSERT statements for dim_sku_mapping (10 rows)
INSERT INTO dim_sku_mapping ("sku_ext_code", "sku_internal_code") VALUES
    ('USH001', 'SKU001'),
    ('USP002', 'SKU002'),
    ('USM003', 'SKU003'),
    ('USS004', 'SKU004'),
    ('USK005', 'SKU005'),
    ('UST006', 'SKU006'),
    ('USS007', 'SKU007'),
    ('USC008', 'SKU008'),
    ('USP009', 'SKU009'),
    ('USD010', 'SKU010'),
    ('USX001', 'SKU011'),
    ('USY002', 'SKU012'),
    ('USZ003', 'SKU013'),
    ('USX004', 'SKU014'),
    ('USY005', 'SKU015'),
    ('USZ006', 'SKU016'),
    ('USX007', 'SKU017'),
    ('USY008', 'SKU018'),
    ('USZ009', 'SKU019'),
    ('USX010', 'SKU020'),
    ('USY011', 'SKU021'),
    ('USZ012', 'SKU022'),
    ('USX013', 'SKU023'),
    ('USY014', 'SKU024'),
    ('USZ015', 'SKU025'),
    ('USX016', 'SKU026'),
    ('USY017', 'SKU027'),
    ('USZ018', 'SKU028'),
    ('USX019', 'SKU029'),
    ('USY020', 'SKU030'),
    ('USX021', 'SKU031'),
    ('USY022', 'SKU032'),
    ('USZ023', 'SKU033'),
    ('USX024', 'SKU034'),
    ('USY025', 'SKU035'),
    ('USZ026', 'SKU036'),
    ('USX027', 'SKU037'),
    ('USY028', 'SKU038'),
    ('USZ029', 'SKU039'),
    ('USX030', 'SKU040');


