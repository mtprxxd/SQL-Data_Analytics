Use MyDatabase

--Problem 1--Create a new table named VehicleInsurance with columns InsuranceID, VehicleBrand, InsuranceType and PremiumAmount.
--CREATE TABLE VehicleInsurance(
--InsuranceID INT NOT NULL,
--VehicleBrand VARCHAR(20) NOT NULL,
--InsuranceType VARCHAR(20) NOT NULL,
--PremiumAmount INT NOT NULL,
--CONSTRAINT prim_key PRIMARY KEY(InsuranceID)
--)

--INSERT INTO VehicleInsurance(InsuranceID,VehicleBrand,InsuranceType,PremiumAmount)
--VALUES(1,'Hyundai','Comprehensive',15000),
--      (2,'Honda','Third Party',20000),
--      (3,'BMW','Zero Depreciation',70000),
--      (4,'Audi','Comprehensive',22000)
--SELECT*
--FROM VehicleInsurance

-------------------------------------------------------------------------------------------
--Problem 2----Add a column named Registration Year to RentalBookings.

--CREATE TABLE RentelBookings(
--    BookingID INT NOT NULL,
--    RenterName VARCHAR(20) NOT NULL,
--    VehicleType VARCHAR(20) NOT NULL,
--    Brand VARCHAR(30) NOT NULL,
--    PickupCity VARCHAR(20) NOT NULL,
--    DailyRate INT NOT NULL,
--    RentalDays INT NOT NULL,
--    BookingStatus VARCHAR(20) NOT NULL,

--    CONSTRAINT primary_key PRIMARY KEY(BookingID)
--)
--INSERT INTO RentelBookings(BookingID,RenterName,VehicleType,Brand,PickupCity,DailyRate,RentalDays,BookingStatus)

--VALUES(1,'Arjun','Car','Hyundai','Delhi',2500,3,'Completed'),
--      (2,'Kavya','Bike','Honda','Mumbai',800,5,'Active'),
--      (3,'Rohit','SUV','Toyota','Delhi',4000,2,'Completed'),
--      (4,'Meera','Car','Maruti','Pune',1800,4,'Cancelled'),
--      (5,'Kabir','Bike','Royal Enfield','Jaipur',1200,3,'Active'),
--      (6,'Ananya','SUV','Mahindra','Mumbai',3500,6,'Completed'),
--      (7,'Vikram','Car','Hyundai','Delhi',2500,2,'Active'),
--      (8,'Ishita','Bike','Yamaha','Pune',1000,7,'Completed'),
--      (9,'Aditya','SUV','Toyota','Jaipur',4000,3,'Active'),
--      (10,'Sanya','Car','Maruti','Mumbai',1800,5,'Completed'),
--      (11,'Rahul','Bike','Honda','Delhi',800,4,'Cancelled'),
--      (12,'Diya','SUV','Mahindra','Pune',3500,2,'Active');

SELECT*
FROM RentelBookings

-------------------------------------------------------------------------------------------
--Problem 3--Add a column named RegistrationYear to RentalBookings.
--ALTER TABLE RentelBookings
--ADD RegistrationYear INT NULL

-------------------------------------------------------------------------------------------
--Problem 4--Insert a new booking record.
--INSERT INTO RentelBookings(BookingID,RenterName,VehicleType,Brand,PickupCity,DailyRate,RentalDays,BookingStatus,RegistrationYear)
--VALUES(13,'Mani','Sedan','Lexus','Pune',6000,9,'Active',NULL)

-------------------------------------------------------------------------------------------
--problem 5--Update BookingStatus to 'Completed' where BookingID = 2
--UPDATE RentelBookings
--SET BookingStatus = 'Completed'
--WHERE BookingID = 2

-------------------------------------------------------------------------------------------
--Pronlem 6--Delete the record where BookingID = 12
--DELETE RentelBookings
--WHERE BookingID =12