/* 1. List the average rental rate for each property */
CREATE VIEW view1_average_rate AS
SELECT CONCAT(building, ' ', bedroom, ' ', view) AS 'Property Type', ROUND(AVG(rate), 2)
FROM rates JOIN properties
USING (propertyID) GROUP BY propertyID ORDER BY building;

/* 2. List the properties along with owner name and contact info for properties that have never been rented */
CREATE VIEW view2_unrented_properties AS
SELECT CONCAT(firstName, ' ', lastName) AS 'Owner', o.propertyID, address, city, state, zip, phone, email
FROM owners o LEFT JOIN transactions t USING (propertyID)
WHERE t.propertyID IS NULL;

/* 3. Select the most frequent renter */
CREATE VIEW view3_most_frequent_renter AS
SELECT clientID, firstName, lastName, COUNT(transactionID) AS total_times_rented
FROM clients JOIN transactions USING (clientID) GROUP BY clientID
ORDER BY total_times_rented DESC;

/* 4. List all people who rented in 2017 */
CREATE VIEW view4_renters_2017 AS
SELECT clientID, firstName, lastName, address, city, state, zip, phone, email
FROM clients JOIN transactions USING (clientID)
WHERE arrival RLIKE '^2017';

/* 5. List the current rate along with a 6% increase in rates for oceanview condos */
CREATE VIEW view5_rate_increase AS
SELECT startDate, endDate building, bedroom, view, rate AS old_rate, rate * .06 AS '6% rate increase', (rate * .06) + rate AS new_rate
FROM properties JOIN rates USING (propertyID)
WHERE view = 'OV';

/* 6. List property ID, total rent, total cleaning, total pet deposit, property total collected (rent + cleaning + pet deposit), SFRC Fees (25% of rent), and owner amount (75% of rent) for each property and include a total line for each year as well as a total for all properties */
CREATE VIEW view6_property_fees AS
SELECT propertyID, SUM(rentalFee) AS 'Total Rent', SUM(cleaningFee) AS 'Total Cleaning', 
SUM(petDeposit) AS 'Total Pet Deposit', SUM(rentalFee + cleaningFee + petDeposit) AS 'Property Total Collected', 
(SUM(rentalFee) * .25) AS 'SFRC Fees', (SUM(rentalFee) * .75) AS 'Owner Amount', YEAR(arrival) AS 'Year'
FROM transactions GROUP BY propertyID, YEAR(arrival) WITH ROLLUP;

/* 7. List how much SFRC has received for each payment type and include a total line */
CREATE VIEW view7_payment_type_total AS
SELECT SUM(rentalFee + cleaningFee + petDeposit) AS 'Property Total Collected', paymentType
FROM transactions GROUP BY paymentType WITH ROLLUP;

/* 8. SFRC will be opening a pet day care center in Fall 2017. We would like to email all of the pet owners. List their names, email, and pet type */
CREATE VIEW view8_pet_owners_type AS
SELECT DISTINCT CONCAT(firstName, ' ', lastName) AS 'Renter', email, petType
FROM clients JOIN transactions
USING (clientID)
WHERE petType IS NOT NULL;

/* 9. SFRC will start offering 4 bedroom condos at the end of Summer 2017. We would like to contact all of the renters of 3 bedroom condos to see if they would be interested in these. List their names, contact info, and amount of times they have rented, searching by the bedroom size. */
CREATE VIEW view9_renters_3_bedroom AS
SELECT DISTINCT CONCAT(firstName, ' ', lastName) AS 'Renter', address, city, state, zip, email, COUNT(transactionID) AS 'Total Times Rented'
FROM clients JOIN transactions USING (clientID)
JOIN properties USING (propertyID)
WHERE bedroom = '3BR' GROUP BY Renter;

/* 10. All properties now have internet. Create a query for this update */
UPDATE properties SET internet = 'Y'
WHERE internet = 'N';