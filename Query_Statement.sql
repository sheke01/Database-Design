/*List Hotels and Locations*/
SELECT HotelName,HotelStreet,HotelCity,HotelState,HotelZip
FROM Hotel;

/*Which Guest has no child*/
SELECT GuestNo,GuestFirstName,GuestLastName
FROM GuestDetails
WHERE NumOfChildren = 0;

/*Which guest resides in Solon*/
SELECT GuestNo,GuestFirstName,GuestLastName
FROM GuestDetails
WHERE GuestZip LIKE '_%_%139';

/*Get the event description of type "Conference" */
SELECT EventDesc
FROM Event 
WHERE EventType = 'Conference';

/* How many luxury rooms are there*/
SELECT COUNT(RoomNo)
FROM Room
WHERE RoomType = 'lux';

/*Which guests has 5 guests? */
SELECT GuestFirstName,GuestLastName
FROM GuestDetails, BookingDetails
WHERE GuestDetails.GuestNo = BookingDetails.GuestNo
AND NumOfGuests = 1;

/* How many 1bedroom rooms are there*/
SELECT COUNT(RoomNo)
FROM Room
WHERE RoomType = '1bedroom';

/* How many 2bedroom rooms are there*/
SELECT COUNT(RoomNo)
FROM Room
WHERE RoomType = '2bedroom';

/* How many Studio rooms are there*/
SELECT COUNT(RoomNo)
FROM Room
WHERE RoomType = 'Studio';



/* Which guest booked the VIP car?*/
SELECT GuestFirstName,GuestLastName
FROM GuestDetails, BookingDetails, Transportation
WHERE GuestDetails.GuestNo = BookingDetails.GuestNo
AND BookingDetails.BookingNo = Transportation.BookingNo
AND TransType = 'VIP';

/*Which guest did online payment and did not book a room? */
SELECT GuestFirstName,GuestLastName, BookType
FROM GuestDetails, BookingDetails
WHERE GuestDetails.GuestNo = BookingDetails.GuestNo
AND (PaymentInfo = 'Paypal' OR PaymentInfo = 'Bitcoin')
AND BookType != 'room';

/*List the facility that would be used in December 2018*/
SELECT HotelName, FacName, FacType, ArrivalDate,DepartureDate
FROM Hotel, Facility, BookingDetails, Engage
WHERE Hotel.hotelNo = Facility.HotelNo
AND Facility.facNo = Engage.FacNo
AND BookingDetails.bookingNo = Engage.bookingNo
AND BookType = 'facility'
AND DepartureDate BETWEEN '1-DEC-2018' AND '31-DEC-2018';

/*List the facilities in Hotel Ruby*/
SELECT HotelName, FacName, FacType
FROM Hotel, Facility
WHERE Hotel.hotelNo = Facility.HotelNo
AND HotelName = 'Ruby';

/*List Employees hired in the 4th quarter of 2018 and took a booking of type "room"*/
SELECT EmpfirstName,EmpLastName
FROM Employee, BookingDetails
WHERE Employee.EmpNo = BookingDetails.EmpNo
AND EmpStartDate  BETWEEN '1-OCT-2018' AND '31-DEC-2018'
AND BookType = 'room';

/*When and where is the event "Romeo and Juliet" scheduled to hold and what type of event is this?*/
SELECT HotelName, FacName, EventType, EventDate,EventStartTime,EventEndTime
FROM Hotel, Facility, Event, Stirring
WHERE Hotel.hotelNo = Facility.hotelNo
AND Facility.facNo = Stirring.FacNo
AND Event.EventNo = Stirring.EventNo
AND EventDesc LIKE '%Romeo%';

