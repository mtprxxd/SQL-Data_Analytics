USE MYDatabase
--SELECT*
--FROM VehicleInsurance
----------------------IN operator---------------------------------------------
--TASK 1--Retrieve all the type of Brand from either comprehensive or third party
SELECT*
FROM VehicleInsurance
--WHERE InsuranceType = 'Comprehensive' OR InsuranceType = 'Third Party'
--Alternative way using IN-------------------------
--WHERE InsuranceType IN ('Comprehensive','Third Party')

----------------LIKE operator-----(%) could be anything 0,1,Multiple characters------------(_) it matches exactly one character--------------------------------
/*   M%   --->M̲aria      -----	Starts with M
     %in   --->Marti̲n̲    -----  Ends with in
     %r%  --->Mar̲io      -----  Contains r
     __b̲% --->A̲l̲b̲ert */  -----  b must be on 3rd postion


--TASK 2--
SELECT*
FROM VehicleInsurance
--WHERE VehicleBrand LIKE 'H%'
--WHERE VehicleBrand LIKE '%i'
--WHERE VehicleBrand LIKE '%n%'
--WHERE PremiumAmount LIKE '_2%'


