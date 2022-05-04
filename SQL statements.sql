INSERT INTO Hotel (HotelNo,HotelName,HotelStreet,HotelCity,HotelState,HotelZip,HotelPhone) VALUES ('H101','Gold','Superior','Cleveland','OH','44116','2164758579');
INSERT INTO Hotel (HotelNo,HotelName,HotelStreet,HotelCity,HotelState,HotelZip,HotelPhone) VALUES ('H102','Diamond','Brooklyn','Columbus','OH','43004','2161946586');
INSERT INTO Hotel (HotelNo,HotelName,HotelStreet,HotelCity,HotelState,HotelZip,HotelPhone) VALUES ('H103','Silver','Samson','Cincinnati','OH','41073','2160374954');
INSERT INTO Hotel (HotelNo,HotelName,HotelStreet,HotelCity,HotelState,HotelZip,HotelPhone) VALUES ('H104','Ruby','Detroit','Akron','OH','44223','2167394503');
INSERT INTO Hotel (HotelNo,HotelName,HotelStreet,HotelCity,HotelState,HotelZip,HotelPhone) VALUES ('H105','Sapphire','Complex','Miami','OH','44056','2167364913');

INSERT INTO Employee (EmpNo,EmpfirstName,EmpLastName,EmpStreet,EmpCity,EmpState,EmpZip,EmpPhone,EmpDOB,EmpGender,EmpStartDate,EmpType,HotelNo) VALUES ('Emp100','Christy','Marcy','Piemont','Randall','OH','44128','2169469371','25-MAY-86','F','16-OCT-18','Server','H100');
INSERT INTO Employee (EmpNo,EmpfirstName,EmpLastName,EmpStreet,EmpCity,EmpState,EmpZip,EmpPhone,EmpDOB,EmpGender,EmpStartDate,EmpType,HotelNo) VALUES ('Emp101','Kaila','Solange','Collingwood','Lakewood','OH','44107','2166474936','14-JAN-90','F','02-NOV-18','Housekeeping','H101');
INSERT INTO Employee (EmpNo,EmpfirstName,EmpLastName,EmpStreet,EmpCity,EmpState,EmpZip,EmpPhone,EmpDOB,EmpGender,EmpStartDate,EmpType,HotelNo) VALUES ('Emp102','Tracy','Gilman','Garner','Mayfield','OH','44143','2164950037','30-JUN-95','F','25-APR-18','Reception','H102');
INSERT INTO Employee (EmpNo,EmpfirstName,EmpLastName,EmpStreet,EmpCity,EmpState,EmpZip,EmpPhone,EmpDOB,EmpGender,EmpStartDate,EmpType,HotelNo) VALUES ('Emp103','Anthony','Marsenio','Howard','Warrenville','OH','44128','2167484759','19-AUG-91','M','17-JUN-18','Maintenance','H103');
INSERT INTO Employee (EmpNo,EmpfirstName,EmpLastName,EmpStreet,EmpCity,EmpState,EmpZip,EmpPhone,EmpDOB,EmpGender,EmpStartDate,EmpType,HotelNo) VALUES ('Emp104','Serge','Rodrigo','Buddy','Northfield','OH','44067','2168494646','03-OCT-93','M','11-NOV-18','Maintenance','H104');

INSERT INTO GuestDetails (GuestNo,GuestFirstName,GuestLastName,NumOfChildren,GuestStreet,GuestCity,GuestZip,GuestPhone,GuestState) VALUES ('G100','Alex','Smith',3,'Sinclair','Northfield','44067','2165378364','OH');
INSERT INTO GuestDetails (GuestNo,GuestFirstName,GuestLastName,NumOfChildren,GuestStreet,GuestCity,GuestZip,GuestPhone,GuestState) VALUES ('G101','James','Daniel',2,'Rockwell','Lorain','44052','2169453849','OH');
INSERT INTO GuestDetails (GuestNo,GuestFirstName,GuestLastName,NumOfChildren,GuestStreet,GuestCity,GuestZip,GuestPhone,GuestState) VALUES ('G102','Paul','Jason',0,'Chester','Cleveland','44115','2168356483','OH');
INSERT INTO GuestDetails (GuestNo,GuestFirstName,GuestLastName,NumOfChildren,GuestStreet,GuestCity,GuestZip,GuestPhone,GuestState) VALUES ('G103','Renee','Beacoup',1,'Madison','Solon','44139','2161197624','OH');
INSERT INTO GuestDetails (GuestNo,GuestFirstName,GuestLastName,NumOfChildren,GuestStreet,GuestCity,GuestZip,GuestPhone,GuestState) VALUES ('G104','Stone','Sam',2,'Dampster','Bedford','44146','2162457742','OH');

INSERT INTO Facility (FacNo,FacName,FacType,Note,HotelNo) VALUES ('F101', 'Forbidden City', 'Hall', '75', 'H101');
INSERT INTO Facility (FacNo,FacName,FacType,Note,HotelNo) VALUES ('F102', 'Lotus', 'Bar', '25', 'H101');
INSERT INTO Facility (FacNo,FacName,FacType,Note,HotelNo) VALUES ('F103', 'La Pedrera', 'Restaurant', '50', 'H101');
INSERT INTO Facility (FacNo,FacName,FacType,Note,HotelNo) VALUES ('F104', 'Robinson', 'Club', '100', 'H101');

INSERT INTO Facility (FacNo,FacName,FacType,Note,HotelNo) VALUES ('F201', 'Dome of the Rock', 'Hall', '75', 'H102');
INSERT INTO Facility (FacNo,FacName,FacType,Note,HotelNo) VALUES ('F202', 'Sea Baron', 'Bar', '25', 'H102');
INSERT INTO Facility (FacNo,FacName,FacType,Note,HotelNo) VALUES ('F203', 'Taj Mahal', 'Restaurant', '50', 'H102');
INSERT INTO Facility (FacNo,FacName,FacType,Note,HotelNo) VALUES ('F204', 'Victory', 'Club', '100', 'H102');

INSERT INTO Facility (FacNo,FacName,FacType,Note,HotelNo) VALUES ('F301', 'Abifoluwa', 'Hall', '75', 'H103');
INSERT INTO Facility (FacNo,FacName,FacType,Note,HotelNo) VALUES ('F302', 'Kaduna', 'Bar', '25', 'H103');
INSERT INTO Facility (FacNo,FacName,FacType,Note,HotelNo) VALUES ('F303', 'Zuma Rock', 'Restaurant', '50', 'H103');
INSERT INTO Facility (FacNo,FacName,FacType,Note,HotelNo) VALUES ('F304', 'Lagos Island', 'Club', '100', 'H103');

INSERT INTO Facility (FacNo,FacName,FacType,Note,HotelNo) VALUES ('F401', 'Infinitive City', 'Hall', '75', 'H104');
INSERT INTO Facility (FacNo,FacName,FacType,Note,HotelNo) VALUES ('F402', 'Three Horses', 'Bar', '25', 'H104');
INSERT INTO Facility (FacNo,FacName,FacType,Note,HotelNo) VALUES ('F403', 'Red Square', 'Restaurant', '50', 'H104');
INSERT INTO Facility (FacNo,FacName,FacType,Note,HotelNo) VALUES ('F404', 'Ancient Rome', 'Club', '100', 'H104');

INSERT INTO Facility (FacNo,FacName,FacType,Note,HotelNo) VALUES ('F501', 'Crystal Cave', 'Hall', '75', 'H105');
INSERT INTO Facility (FacNo,FacName,FacType,Note,HotelNo) VALUES ('F502', 'Paris Cafe', 'Bar', '25', 'H105');
INSERT INTO Facility (FacNo,FacName,FacType,Note,HotelNo) VALUES ('F503', 'Colosseum', 'Restaurant', '50', 'H105');
INSERT INTO Facility (FacNo,FacName,FacType,Note,HotelNo) VALUES ('F504', 'Dancing House', 'Club', '100', 'H105');

INSERT INTO Event (EventNo,EventDesc,EventType) VALUES ('E101','Despicable','Concert');
INSERT INTO Event (EventNo,EventDesc,EventType) VALUES ('E102','Romeo and Juliet','Play');
INSERT INTO Event (EventNo,EventDesc,EventType) VALUES ('E103','The city is Blue','Privet');
INSERT INTO Event (EventNo,EventDesc,EventType) VALUES ('E104','Blockchain Solution','Conference');
INSERT INTO Event (EventNo,EventDesc,EventType) VALUES ('E105','A tale of two 
cities','Concert');

INSERT INTO Room (RoomNo,RoomType,RoomPrice,HotelNo) VALUES ('R101', '1bedroom', 75, 'H101');
INSERT INTO Room (RoomNo,RoomType,RoomPrice,HotelNo) VALUES ('R102', '1bedroom', 75, 'H101');
INSERT INTO Room (RoomNo,RoomType,RoomPrice,HotelNo) VALUES ('R103', '2bedroom', 100, 'H101');
INSERT INTO Room (RoomNo,RoomType,RoomPrice,HotelNo) VALUES ('R104', '2bedroom', 100, 'H101');
INSERT INTO Room (RoomNo,RoomType,RoomPrice,HotelNo) VALUES ('R105', 'Studio', 50, 'H101');
INSERT INTO Room (RoomNo,RoomType,RoomPrice,HotelNo) VALUES ('R106', 'Studio', 50, 'H101');
INSERT INTO Room (RoomNo,RoomType,RoomPrice,HotelNo) VALUES ('R107', 'Lux', 200, 'H101');


INSERT INTO Room (RoomNo,RoomType,RoomPrice,HotelNo) VALUES ('R201', '1bedroom', 75, 'H102');
INSERT INTO Room (RoomNo,RoomType,RoomPrice,HotelNo) VALUES ('R202', '1bedroom', 75, 'H102');
INSERT INTO Room (RoomNo,RoomType,RoomPrice,HotelNo) VALUES ('R203', '2bedroom', 100, 'H102');
INSERT INTO Room (RoomNo,RoomType,RoomPrice,HotelNo) VALUES ('R204', '2bedroom', 100, 'H102');
INSERT INTO Room (RoomNo,RoomType,RoomPrice,HotelNo) VALUES ('R205', 'Studio', 50, 'H102');
INSERT INTO Room (RoomNo,RoomType,RoomPrice,HotelNo) VALUES ('R206', 'Studio', 50, 'H102');
INSERT INTO Room (RoomNo,RoomType,RoomPrice,HotelNo) VALUES ('R207', 'Lux', 200, 'H102');


INSERT INTO Room (RoomNo,RoomType,RoomPrice,HotelNo) VALUES ('R301', '1bedroom', 75, 'H103');
INSERT INTO Room (RoomNo,RoomType,RoomPrice,HotelNo) VALUES ('R302', '1bedroom', 75, 'H103');
INSERT INTO Room (RoomNo,RoomType,RoomPrice,HotelNo) VALUES ('R303', '2bedroom', 100, 'H103');
INSERT INTO Room (RoomNo,RoomType,RoomPrice,HotelNo) VALUES ('R304', '2bedroom', 100, 'H103');
INSERT INTO Room (RoomNo,RoomType,RoomPrice,HotelNo) VALUES ('R305', 'Studio', 50, 'H103');
INSERT INTO Room (RoomNo,RoomType,RoomPrice,HotelNo) VALUES ('R306', 'Studio', 50, 'H103');
INSERT INTO Room (RoomNo,RoomType,RoomPrice,HotelNo) VALUES ('R307', 'Lux', 200, 'H103');


INSERT INTO Room (RoomNo,RoomType,RoomPrice,HotelNo) VALUES ('R401', '1bedroom', 75, 'H104');
INSERT INTO Room (RoomNo,RoomType,RoomPrice,HotelNo) VALUES ('R402', '1bedroom', 75, 'H104');
INSERT INTO Room (RoomNo,RoomType,RoomPrice,HotelNo) VALUES ('R403', '2bedroom', 100, 'H104');
INSERT INTO Room (RoomNo,RoomType,RoomPrice,HotelNo) VALUES ('R404', '2bedroom', 100, 'H104');
INSERT INTO Room (RoomNo,RoomType,RoomPrice,HotelNo) VALUES ('R405', 'Studio', 50, 'H104');
INSERT INTO Room (RoomNo,RoomType,RoomPrice,HotelNo) VALUES ('R406', 'Studio', 50, 'H104');
INSERT INTO Room (RoomNo,RoomType,RoomPrice,HotelNo) VALUES ('R407', 'Lux', 200, 'H104');

INSERT INTO Room (RoomNo,RoomType,RoomPrice,HotelNo) VALUES ('R501', '1bedroom', 75, 'H105');
INSERT INTO Room (RoomNo,RoomType,RoomPrice,HotelNo) VALUES ('R502', '1bedroom', 75, 'H105');
INSERT INTO Room (RoomNo,RoomType,RoomPrice,HotelNo) VALUES ('R503', '2bedroom', 100, 'H105');
INSERT INTO Room (RoomNo,RoomType,RoomPrice,HotelNo) VALUES ('R504', '2bedroom', 100, 'H105');
INSERT INTO Room (RoomNo,RoomType,RoomPrice,HotelNo) VALUES ('R505', 'Studio', 50, 'H105');
INSERT INTO Room (RoomNo,RoomType,RoomPrice,HotelNo) VALUES ('R506', 'Studio', 50, 'H105');
INSERT INTO Room (RoomNo,RoomType,RoomPrice,HotelNo) VALUES ('R507', 'Lux', 200, 'H105');


INSERT INTO BookingDetails (BookingNo,BookingDate,ArrivalDate,DepartureDate,NumOfRooms,NumOfGuests,PaymentInfo,BookType,GuestNo, EmpNo) VALUES ('B100','28-NOV-2018','01-DEC-2018','02-DEC-2018','0','5','Cash','Transport','G100','Emp100');
INSERT INTO BookingDetails (BookingNo,BookingDate,ArrivalDate,DepartureDate,NumOfRooms,NumOfGuests,PaymentInfo,BookType,GuestNo, EmpNo) VALUES ('B101','02-OCT-2018','30-NOV-2018','02-DEC-2018','1','4','Card','Room','G101','Emp101');
INSERT INTO BookingDetails (BookingNo,BookingDate,ArrivalDate,DepartureDate,NumOfRooms,NumOfGuests,PaymentInfo,BookType,GuestNo, EmpNo) VALUES ('B102','29-NOV-2018','29-NOV-2018','29-NOV-2018','0','2','Cash','Facility','G102','Emp102');
INSERT INTO BookingDetails (BookingNo,BookingDate,ArrivalDate,DepartureDate,NumOfRooms,NumOfGuests,PaymentInfo,BookType,GuestNo, EmpNo) VALUES ('B103','20-NOV-2018','30-NOV-2018','02-DEC-2018','1','3','Paypal','Room','G103','Emp103');
INSERT INTO BookingDetails (BookingNo,BookingDate,ArrivalDate,DepartureDate,NumOfRooms,NumOfGuests,PaymentInfo,BookType,GuestNo, EmpNo) VALUES ('B104','20-NOV-2018','30-NOV-2018','02-DEC-2018','0','3','Bitcoin','Transport','G103','Emp104');
INSERT INTO BookingDetails (BookingNo,BookingDate,ArrivalDate,DepartureDate,NumOfRooms,NumOfGuests,PaymentInfo,BookType,GuestNo, EmpNo) VALUES ('B105','25-NOV-2018','08-DEC-2018','09-DEC-2018','1','4','Card','Room','G104','Emp100');
INSERT INTO BookingDetails (BookingNo,BookingDate,ArrivalDate,DepartureDate,NumOfRooms,NumOfGuests,PaymentInfo,BookType,GuestNo, EmpNo) VALUES ('B106','17-OCT-2018','08-DEC-2018','11-DEC-2018','1','2','Paypal','Room','G104');
INSERT INTO BookingDetails (BookingNo,BookingDate,ArrivalDate,DepartureDate,NumOfRooms,NumOfGuests,PaymentInfo,BookType,GuestNo, EmpNo) VALUES ('B107','25-NOV-2018','14-DEC-2018','22-DEC-2018','1','1','Bitcoin','Room','G104','Emp100');
INSERT INTO BookingDetails (BookingNo,BookingDate,ArrivalDate,DepartureDate,NumOfRooms,NumOfGuests,PaymentInfo,BookType,GuestNo, EmpNo) VALUES ('B108','25-NOV-2018','14-DEC-2018','22-DEC-2018','1','1','Cash','Facility','G104','Emp100');


INSERT INTO Occupancy (BookingNo,RoomNo,RoomStatus) VALUES ('B101', 'R103', 'Booked');
INSERT INTO Occupancy (BookingNo,RoomNo,RoomStatus) VALUES ('B103', 'R104', 'Booked');
INSERT INTO Occupancy (BookingNo,RoomNo,RoomStatus) VALUES ('B105', 'R507', 'Booked');
INSERT INTO Occupancy (BookingNo,RoomNo,RoomStatus) VALUES ('B106', 'R301', 'Booked');
INSERT INTO Occupancy (BookingNo,RoomNo,RoomStatus) VALUES ('B107', 'R405', 'Booked');

INSERT INTO Stirring (FacNo,EventNo,EventDate,EventStartTime,EventEndTime) VALUES ('F104', 'E101', '6/01/2018', '15:00', '21:00');
INSERT INTO Stirring (FacNo,EventNo,EventDate,EventStartTime,EventEndTime) VALUES ('F204', 'E101', '6/01/2018', '16:00', '23:00');
INSERT INTO Stirring (FacNo,EventNo,EventDate,EventStartTime,EventEndTime) VALUES ('F304', 'E101', '6/30/2018', '12:00', '21:00');
INSERT INTO Stirring (FacNo,EventNo,EventDate,EventStartTime,EventEndTime) VALUES ('F404', 'E101', '6/30/2018', '12:00', '21:00');

INSERT INTO Stirring (FacNo,EventNo,EventDate,EventStartTime,EventEndTime) VALUES ('F101', 'E102', '7/07/2018', '16:00', '23:30');
INSERT INTO Stirring (FacNo,EventNo,EventDate,EventStartTime,EventEndTime) VALUES ('F201', 'E102', '7/07/2018', '16:00', '23:00');
INSERT INTO Stirring (FacNo,EventNo,EventDate,EventStartTime,EventEndTime) VALUES ('F301', 'E102', '8/01/2018', '17:00', '23:30');
INSERT INTO Stirring (FacNo,EventNo,EventDate,EventStartTime,EventEndTime) VALUES ('F401', 'E102', '8/01/2018', '11:00', '15:00');

INSERT INTO Stirring (FacNo,EventNo,EventDate,EventStartTime,EventEndTime) VALUES ('F103', 'E103', '6/24/2018', '18:00', '21:00');
INSERT INTO Stirring (FacNo,EventNo,EventDate,EventStartTime,EventEndTime) VALUES ('F203', 'E103', '8/24/2018', '14:00', '18:00');
INSERT INTO Stirring (FacNo,EventNo,EventDate,EventStartTime,EventEndTime) VALUES ('F303', 'E103', '8/24/2018', '18:00', '23:30');

INSERT INTO Stirring (FacNo,EventNo,EventDate,EventStartTime,EventEndTime) VALUES ('F401', 'E104', '9/10/2018', '18:00', '21:00');
INSERT INTO Stirring (FacNo,EventNo,EventDate,EventStartTime,EventEndTime) VALUES ('F101', 'E104', '9/30/2018', '17:30', '22:00');

INSERT INTO Stirring (FacNo,EventNo,EventDate,EventStartTime,EventEndTime) VALUES ('F103', 'E105', '10/10/2018', '16:00', '21:00');
INSERT INTO Stirring (FacNo,EventNo,EventDate,EventStartTime,EventEndTime) VALUES ('F403', 'E105', '10/10/2018', '18:00', '22:00');

INSERT INTO Transportation (TransNo,TransType,TransNote,TransPrice,TransStatus,BookingNo) VALUES ('T100','Car','A white car would be preferred','100','Booked','B100');
INSERT INTO Transportation (TransNo,TransType,TransNote,TransPrice,TransStatus,BookingNo) VALUES ('T101','VIP','A limo would be preferred','100','Booked','B104');


INSERT INTO Engage (BookingNo,FacNo,FacStatus) VALUES ('B102','F100','Booked');
INSERT INTO Engage (BookingNo,FacNo,FacStatus) VALUES ('B108','F100','Booked');



UPDATE GuestDetails
SET GuestFirstName = 'Jesse', GuestLastName = 'Hall', NumOfChildren = 5, GuestStreet = 'Eldora', GuestCity = 'Rocky River', GuestZip = '44116', GuestPhone = '2164893640'
WHERE GuestNo = 'G101';

UPDATE Hotel
SET HotelName = 'Emerald', HotelStreet = 'Birch', HotelCity = 'Toledo', HotelZip = '43460', HotelPhone = '2166730930'
WHERE HotelNo = 'H101';

UPDATE Employee
SET EmpFirstName = 'Rebecca', EmpLastName = 'Alba', EmpStreet = 'Almond', EmpCity = 'Mansfield', EmpZip = '44901', EmpPhone = '2165349373', EmpDOB = '06-FEB-89', EmpGender = 'F', EmpStartDate = '27-AUG-18', EmpType = 'Housekeeping', HotelNo = 'H102'
WHERE EmpNo = 'Emp104';

UPDATE Event
SET EventDesc = 'A tale by moonlight ', EventType = 'Play'
WHERE HotelNo = 'E102';



UPDATE BookingDetails
SET ArrivalDate = ‘12-DEC-2018’, DepartureDate = ‘19-DEC-2018’, NumOfRooms = 0, NumOfGuests = 10,BookType = ‘Facility’
WHERE BookingNo = ‘B103’;

INSERT INTO Hotel (HotelNo,HotelName,HotelStreet,HotelCity,HotelState,HotelZip,HotelPhone) VALUES ('H110','Grand','Mayfield','Brunswink','OH','44234','2167608579');


INSERT INTO BookingDetails (BookingNo,BookingDate,ArrivalDate,DepartureDate,NumOfRooms,NumOfGuests,PaymentInfo,BookType,GuestNo, EmpNo) VALUES ('B109','6-DEC-2018','15-DEC-2018','22-DEC-2018',1,7,'Card','Room','G103','Emp104');

SELECT *
FROM Hotel
WHERE HotelNo = ‘H110’

DELETE FROM GuestDetails
WHERE GuestNo = 'G101';

DELETE FROM Employee
WHERE EmpNo = 'Emp104';

DELETE FROM Hotel
WHERE HotelNo = 'H101';

DELETE FROM Event
WHERE EventNo = 'E102';

UPDATE Room SET RoomPrice = 250
WHERE RoomPrice = 200;

DELETE FROM Room
WHERE RoomNo = 'R501';

UPDATE Occupancy SET RoomStatus = 'Free'
WHERE RoomNo = 'R507';

DELETE FROM Occupancy
WHERE BookingNo = 'B105';

UPDATE Stirring SET EventDate = '6/25/2018'
WHERE FacNo = 'F103' AND EventNo = 'E103';

DELETE FROM Stirring
WHERE EventNo = 'E105';


DELETE FROM BookingDetails
WHERE BookingNo = ‘B109’;