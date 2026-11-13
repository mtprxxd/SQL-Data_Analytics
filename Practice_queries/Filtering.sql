SELECT*
FROM RentelBookings

--Problem 1--Retrieve bookings where the PickupCity is Delhi, Mumbai, or Pune, the DailyRate is between 1,000 and 4,000, and
             --the BookingStatus is not Cancelled.
SELECT*
FROM RentelBookings
WHERE PickupCity IN ('Delhi','Mumbai','Pune') AND DailyRate BETWEEN 1000 AND 4000 AND BookingStatus != 'Cancelled'

------------------------------------------------------------------------------------------------------------------------------

--Problem 2--Display bookings where the RenterName contains a, the VehicleType is either Car or SUV 
           --and the RentalDays are greater than 2 but less than 6.
SELECT*
FROM RentelBookings
WHERE RenterName LIKE '%a%' AND VehicleType IN ('Car','SUV') AND RentalDays > 2 AND RentalDays < 6
------------------------------------------------------------------------------------------------------------------------------
--Problem 3--Find bookings where the Brand starts with H or ends with a, the PickupCity is not Jaipur 
           --and the DailyRate is either below 1,000 or above 3,000
SELECT*
FROM RentelBookings
WHERE (Brand LIKE 'H%' OR Brand LIKE '%a')  AND PickupCity NOT IN ('Jaipur') AND (DailyRate < 1000 OR DailyRate > 3000)
------------------------------------------------------------------------------------------------------------------------------
--Problem 4--Retrieve bookings where the RenterName has exactly 5 characters, the BookingStatus is Active or Completed, 
           --and the DailyRate is not between 1,500 and 3,500.
SELECT*
FROM RentelBookings
WHERE RenterName LIKE '_____' 
    AND BookingStatus IN ('Active','Completed')
    AND DailyRate NOT BETWEEN 1500 AND 3500;
------------------------------------------------------------------------------------------------------------------------------
--Problem 5--Display bookings where the PickupCity contains the letter u,the VehicleType is not Bike,the RentalDays are between 2 and 5 
           --and the RenterName does not start with A.
SELECT*
FROM RentelBookings
WHERE PickupCity LIKE '%u%'
    AND VehicleType NOT IN ('Bike')
    AND RentalDays BETWEEN 2 AND 5
    --AND RenterName NOT LIKE 'A%' -------------------alternate way
    AND RenterName LIKE '[^A]%'

