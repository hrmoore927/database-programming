INSERT INTO clients (clientID, firstName, lastName, address, city, state, zip, phone, email) VALUES
(1, 'Harriet', "O'Casey", '4088 Ottumwa Way', 'Mentira', 'IL', '61788', '303-417-4438', 'harrieto@com.net'),
(2, 'John', 'Grainger', '2256 N Santa Fe Dr.', 'Iliase', 'MD', '23456', '303-444-4475', 'johnny@com.net'),
(3, 'Steve', 'Snider', '39430 Big Rock Rd.', 'Flame Throw', 'TN', '59012', '717-420-1212', 'snidley@com.net'), 
(4, 'David', 'Stocking', '291-A Gorgonzola', 'Cleo', 'KS', '81029', '616-410-2990', 'stockingfeet@com.net'),
(5, 'Frank', 'Wheeler', '2225 Iola Ave.', 'Catuchi', 'PA', '56231', '303-414-0404', 'fwheeler@com.net'),
(6, 'Brittany', 'Fox', '297-B Gorgonzola', 'Cleo', 'KS', '81029', '616-410-2942', 'bfoxy@com.net'),
(7, 'Fran', 'McCoy', '1440 Manchester Way', 'Mountain View', 'CO', '87757', '303-477-8787', 'franm@com.net'),
(8, 'Joan', 'Thomas', '667438 E 91st St.', 'Baseboard', 'PA', '56987', '616-684-9385', 'joanie@com.net'),
(9, 'Ted', 'Stiggle', '12920 Industrial Workers', 'Scraggy View', 'CO', '82191', '303-421-1410', 'thestig@com.net'),
(10, 'Dean', 'Farrell', '121 Highway 80', 'Excelsior', 'MD', '23498', '717-483-3111', 'farrelld@com.net'),
(11, 'Marsha', 'Waltz', '1900 Industrial Way', 'Fargone', 'NC', '41923', '215-419-2349', 'walter@com.net'),
(12, 'Janet', 'Logan', '860 Charleston St.', 'Oxalys', 'NY', '54133', '303-441-1321', 'janetlogan@com.net'),
(13, 'Linda', 'Paloma', '1928 Highway 12', 'Portugal', 'NC', '82394', '317-423-9417', 'palomafam@com.net'),
(14, 'Gregg', 'Hansen', '6065 Rainbow Falls Rd.', 'Roselle', 'PA', '57203', '505-472-0398', 'gregghansen@com.net'),
(15, 'Pat', 'Carroll', '4018 Landers Lane', 'Lafayette', 'OH', '34548', '303-476-2718', 'pcarroll@com.net'),
(16, 'Bee', 'Wolf', '1775 Bear Tr.', 'Outcropping', 'WY', '74345', '404-444-4863', 'beew@com.net'),
(17, 'Scott', 'Krumple', '580 E Main St.', 'La Garita', 'CO', '88413', '303-444-1324', NULL),
(18, 'Elliot', 'Harvey', '34 Kerry Dr.', 'El Mano', 'MD', '23646', '505-406-4647', NULL),
(19, 'Carrie', 'Zygote', '8607 Ferndale St.', 'Montgomery', 'AL', '60631', '303-406-3104', 'carriez@com.net'),
(20, 'Abbie', 'Loftus', '8077 Montana Pl.', 'Big Fish', 'MT', '86505', '606-468-0858', 'aloftus@com.net'),
(21, 'Micah', 'Dowenger', '1515 Elliot Way', 'Asheville', 'NC', '28801', '828-121-6445', 'mdowenger@com.net');

INSERT INTO properties (propertyID, building, bedroom, view, pets, internet) VALUES
('301S', 'Sands', '3BR', 'OF', 'Y', 'Y'),
('207S', 'Sands', '3BR', 'OV', 'Y', 'Y'),
('1100T', 'Tides', '3BR', 'none', 'N', 'N'),
('1201T', 'Tides', '3BR', 'OF', 'N', 'Y'),
('317S', 'Sands', '2BR', 'OF', 'N', 'Y'),
('110T', 'Tides', '2BR', 'none', 'N', 'Y'),
('1010S', 'Sands', '2BR', 'OV', 'N', 'N'),
('409S', 'Sands', '2BR', 'OF', 'Y', 'Y'),
('505T', 'Tides', '2BR', 'none', 'Y', 'N'),
('1005T', 'Tides', '3BR', 'none', 'Y', 'Y'),
('656S', 'Sands', '2BR', 'OV', 'Y', 'N'),
('942S', 'Sands', '3BR', 'OF', 'N', 'N'),
('517T', 'Tides', '3BR', 'none', 'Y', 'Y');

INSERT INTO owners (ownerID, propertyID, firstName, lastName, address, city, state, zip, phone, email) VALUES
(101, '301S', 'Sandy', 'Claus', '123 North Pole Dr.', 'Snowshoe', 'PA', '23987', '404-678-0909', 'sandyclaus@com.net'),
(102, '207S', 'Richard', 'Compote', '645 Snowpass Rd.', 'Plymouth', 'MD', '48170', '413-555-9876', 'richc@com.net'),
(103, '1100T', 'Lucille', 'Livingood', '63 Park Ave.', 'New York', 'NY', '12340', '007-555-3636', 'livingood@com.net'),
(104, '1201T', 'Charles', 'Brown', '8706 Main St.', 'Snowshoe', 'CO', '48000', '303-555-1236', 'charlie@com.net'),
(105, '317S', 'Jack', 'Bauer', '469 Carriage Hill Dr.', 'Washington', 'DC', '20001', '713-555-3872', 'jackbauer@com.net'),
(106, '110T', 'Barbie', 'Beckwith', '9010 Upper Crust Way', 'Littleton', 'NY', '20127', '007-555-9999', 'babs@com.net'),
(107, '1010S', 'Barney', 'Rubble', '1616 Stonehenge', 'Granite', 'CO', '80234', '720-555-1456', 'rockhead@com.net'),
(108, '409S', 'Fred', 'Flinstone', '26 Quarry Dr.', 'Granite', 'CO', '80234', '720-555-7676', 'freddie@com.net'),
(109, '505T', 'Larry', 'Lizard', '908 Green Mtn Rd.', 'Green Mountain', 'UT', '23987', '765-555-4392', 'lizard@com.net'),
(110, '1005T', 'Gwen', 'Grizzlie', '56231 Bear Ln.', 'Bear Lake', 'MD', '23123', '413-678-9808', 'griz@com.net'),
(111, '656S', 'Olivia', 'Pope', '878 Fort Rd.', 'Washington', 'DC', '20001', '404-555-8877', 'opa@com.net'),
(112, '942S', 'Robert', 'Smith', '5223 Mountain Ln.', 'Ft. Morgan', 'WV', '34665', '505-555-1456', 'bobbys@com.net'),
(113, '517T', 'Luke', 'Taylors', '375 Windward Way', 'Asheville', 'NC', '28801', '828-445-9776', 'luket@com.net');

INSERT INTO transactions (transactionID, clientID, propertyID, arrival, departure, deposit, petDeposit, petType, cleaningFee, rentalFee, paymentType) VALUES
(1001, 19, '1100T', '2016-01-02', '2016-01-09', 100, 0, NULL, 60, 375, 'Cash'),
(1002, 8, '317S', '2016-01-09', '2016-01-23', 100, 0, NULL, 50, 800, 'AMEX'),
(1003, 9, '1005T', '2016-01-16', '2016-01-30', 100, 0, NULL, 60, 750, 'Check'),
(1004, 6, '505T', '2016-02-06', '2016-02-27', 100, 150, 'cat', 50, 1050, 'Check'),
(1005, 19, '207S', '2016-02-13', '2016-02-20', 100, 150, 'dog', 60, 375, 'Visa'),
(1006, 7, '942S', '2016-02-13', '2016-02-27', 100, 0, NULL, 60, 900, 'AMEX'),
(1007, 4, '110T', '2016-02-27', '2016-03-03', 100, 0, NULL, 50, 350, 'Paypal'),
(1008, 14, '1005T', '2016-03-05', '2016-03-12', 100, 0, NULL, 60, 375, 'Visa'),
(1009, 7, '942S', '2016-03-19', '2016-03-26', 100, 0, NULL, 60, 450, 'Mastercard'),
(1010, 7, '942S', '2016-04-02', '2016-04-09', 100, 0, NULL, 60, 525, 'Mastercard'),
(1011, 1, '1005T', '2016-04-09', '2016-04-16', 100, 150, 'dog', 60, 400, 'Check'),
(1012, 13, '1201T', '2016-04-16', '2016-04-23', 100, 0, NULL, 60, 400, 'Mastercard'),
(1013, 8, '409S', '2016-05-07', '2016-05-21', 100, 150, 'cat', 50, 950, 'AMEX'),
(1014, 7, '1100T', '2016-05-07', '2016-05-14', 100, 0, NULL, 60, 400, 'Mastercard'),
(1015, 4, '317S', '2016-05-07', '2016-05-21', 100, 0, NULL, 50, 950, 'Paypal'),
(1016, 6, '942S', '2016-05-07', '2016-05-14', 100, 0, NULL, 60, 525, 'Cash'),
(1017, 13, '1201T', '2016-05-14', '2016-05-21', 100, 0, NULL, 60, 400, 'Mastercard'),
(1018, 9, '1005T', '2016-05-14', '2016-05-21', 100, 0, NULL, 60, 400, 'Visa'),
(1019, 2, '656S', '2016-05-21', '2016-05-28', 100, 150, 'dog', 50, 425, 'Visa'),
(1020, 3, '317S', '2016-06-04', '2016-06-18', 100, 0, NULL, 50, 1200, 'Paypal'),
(1021, 7, '942S', '2016-06-04', '2016-06-25', 100, 0, NULL, 60, 1950, 'Paypal'),
(1022, 1, '1005T', '2016-06-11', '2016-06-18', 100, 150, 'dog', 60, 500, 'Check'),
(1023, 13, '1201T', '2016-06-18', '2016-06-25', 100, 0, NULL, 60, 500, 'Mastercard'),
(1024, 9, '1005T', '2017-01-07', '2017-01-14', 100, 0, NULL, 60, 375, 'Check'),
(1025, 7, '942S', '2017-01-21', '2016-02-04', 100, 0, NULL, 60, 900, 'Mastercard'),
(1026, 4, '110T', '2017-02-04', '2016-02-11', 100, 0, NULL, 50, 350, 'Paypal'),
(1027, 1, '1005T', '2017-02-11', '2016-02-18', 100, 150, 'dog', 60, 375, 'Check'),
(1028, 8, '409S', '2017-03-04', '2016-03-25', 100, 150, 'cat', 50, 1200, 'AMEX');

INSERT INTO rates (rateID, propertyID, rate, startDate, endDate) VALUES
(1, '317S', 400, '2017-01-01', '2017-03-31'),
(2, '317S', 475, '2017-04-01', '2017-05-31'),
(3, '317S', 600, '2017-06-01', '2017-08-31'),
(4, '317S', 475, '2017-09-01', '2017-10-31'),
(5, '317S', 400, '2017-11-01', '2017-12-31'),
(6, '301S', 450, '2017-01-01', '2017-03-31'),
(7, '301S', 525, '2017-04-01', '2017-05-31'),
(8, '301S', 650, '2017-06-01', '2017-08-31'),
(9, '301S', 525, '2017-09-01', '2017-10-31'),
(10, '301S', 450, '2017-11-01', '2017-12-31'),
(11, '1010S', 375, '2017-01-01', '2017-03-31'),
(12, '1010S', 425, '2017-04-01', '2017-05-31'),
(13, '1010S', 575, '2017-06-01', '2017-08-31'),
(14, '1010S', 425, '2017-09-01', '2017-10-31'),
(15, '1010S', 375, '2017-11-01', '2017-12-31'),
(16, '207S', 425, '2017-01-01', '2017-03-31'),
(17, '207S', 475, '2017-04-01', '2017-05-31'),
(18, '207S', 625, '2017-06-01', '2017-08-31'),
(19, '207S', 475, '2017-09-01', '2017-10-31'),
(20, '207S', 425, '2017-11-01', '2017-12-31'),
(21, '110T', 350, '2017-01-01', '2017-03-31'),
(22, '110T', 375, '2017-04-01', '2017-05-31'),
(23, '110T', 450, '2017-06-01', '2017-08-31'),
(24, '110T', 375, '2017-09-01', '2017-10-31'),
(25, '110T', 350, '2017-11-01', '2017-12-31'),
(26, '1005T', 375, '2017-01-01', '2017-03-31'),
(27, '1005T', 400, '2017-04-01', '2017-05-31'),
(28, '1005T', 500, '2017-06-01', '2017-08-31'),
(29, '1005T', 400, '2017-09-01', '2017-10-31'),
(30, '1005T', 375, '2017-11-01', '2017-12-31');