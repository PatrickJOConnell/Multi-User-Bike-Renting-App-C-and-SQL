﻿Update Rental Set Expected_Time = null, Rental_Cost = Round((DATEDIFF(second, REntal.Bike_out, Rental.Bike_in) / 3600.0 * (Select Distinct Rental_Rate From REntal with (Index(BID_Index)) join Bike on bike.BID = rental.bid join Bike_type on Bike_Type.TID = Bike.TID where Bike.Bid = 1001)), 2) where BID = 1001;
