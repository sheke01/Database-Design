DROP TABLE Engage
DROP TABLE Transportation
DROP TABLE Stirring
DROP TABLE Occupancy
DROP TABLE BookingDetails
DROP TABLE Room
DROP TABLE Event
DROP TABLE Facility
DROP TABLE GuestDetails
DROP TABLE Employee
DROP TABLE Hotel


CREATE TABLE Hotel
(
HotelNo varchar(10) NOT NULL,
HotelName varchar(25) NOT NULL,
HotelStreet varchar(50) NOT NULL,
HotelCity varchar(25) NOT NULL,
HotelState varchar(2) NOT NULL,
HotelZip varchar(15) NOT NULL,
HotelPhone varchar(15) NOT NULL,
CONSTRAINT Hotel_PK PRIMARY KEY (HotelNo)
);

CREATE TABLE Employee
(
EmpNo varchar(10) NOT NULL,
EmpFirstName varchar(25) NOT NULL,
EmpLastname varchar(25) NOT NULL,
EmpStreet varchar(25) NOT NULL,
EmpCity varchar(25) NOT NULL,
EmpState varchar(2) NOT NULL,
EmpZip varchar(15) NOT NULL,
EmpPhone varchar(15) NOT NULL,
EmpDOB date NOT NULL,
EmpGender char(1) ,
EmpStartDate date NOT NULL,
EmpType varchar(25) NOT NULL,
HotelNo varchar(10) NOT NULL,
CONSTRAINT Employee_PK PRIMARY KEY (EmpNo),
CONSTRAINT EmployeeHotel_FK FOREIGN KEY (HotelNo) REFERENCES Hotel (HotelNo),
CONSTRAINT EmployeeGender_CHK CHECK ( EmpGender IN ( 'M' , 'F'))
CONSTRAINT EmployeeType_CHK CHECK ( EmpType IN ( 'Server' , 'Housekeeping' , 'Reception' , 'Maintenance' ))
);

CREATE TABLE GuestDetails
(
GuestNo varchar(10) NOT NULL,
GuestFirstname varchar(25) NOT NULL,
GuestLastName varchar(25) NOT NULL,
NumOfChildren integer,
GuestStreet varchar(25) NOT NULL,
GuestCity varchar(25) NOT NULL,
GuestZip varchar(15) NOT NULL,
GuestPhone varchar(15) NOT NULL,
GuestState char(2) NOT NULL,
CONSTRAINT GuestDetails_PK PRIMARY KEY (GuestNo)
);

CREATE TABLE Facility
(
FacNo varchar(10) NOT NULL,
FacName varchar(25) NOT NULL,
FacType varchar(25) NOT NULL,
Note varchar(50) NOT NULL,
HotelNo varchar(10) NOT NULL,
CONSTRAINT Facility_PK PRIMARY KEY (FacNo),
CONSTRAINT FacilityHotel_FK FOREIGN KEY (HotelNo) REFERENCES Hotel (HotelNo),
CONSTRAINT FacilityType_CHK CHECK (FacType IN ( 'Hall' , 'Bar' , 'Restaurant' , 'Club' ))
);

CREATE TABLE Event
(
EventNo varchar(10) NOT NULL,
EventDesc varchar(25) NOT NULL,
EventType varchar(25) NOT NULL,
CONSTRAINT Event_PK PRIMARY KEY (EventNo),
CONSTRAINT EventType_CHK CHECK (EventType IN ( 'Concert' , 'Play ' , 'Private' , 'Conference' ))
);

CREATE TABLE Room
(
RoomNo varchar(10) NOT NULL,
RoomType varchar(25) NOT NULL,
RoomPrice numeric(10,2) NOT NULL,
HotelNo varchar(10) NOT NULL,
CONSTRAINT Room_PK PRIMARY KEY (RoomNo),
CONSTRAINT RoomHotel_FK FOREIGN KEY (HotelNo) REFERENCES Hotel (HotelNo),
CONSTRAINT RoomType_CHK CHECK ( RoomType IN ( '1bedroom ', '2bedroom', 'Studio', 'Lux'))
);

CREATE TABLE BookingDetails
(
BookingNo varchar(10) NOT NULL,
BookingDate date NOT NULL,
ArrivalDate date NOT NULL,
DepartureDate date NOT NULL,
NumOfRooms integer ,
NumOfGuests integer NOT NULL,
PaymentInfo varchar(25) NOT NULL,
BookType varchar(25) NOT NULL,
GuestNo varchar(10) NOT NULL,
EmpNo varchar(10),
CONSTRAINT BookingDetails_PK PRIMARY KEY (BookingNo),
CONSTRAINT BookingGuest_FK FOREIGN KEY (GuestNo) REFERENCES GuestDetails (GuestNo) ,
CONSTRAINT BookingEmployee_FK FOREIGN KEY (EmpNo) REFERENCES Employee (EmpNo),
CONSTRAINT BookingType_CHK CHECK (BookType IN ( 'Room' , 'Transport' , 'Facility' ))
);

CREATE TABLE Occupancy
(
BookingNo varchar(10) NOT NULL,
RoomNo varchar(10) NOT NULL,
RoomStatus varchar(25) NOT NULL,
CONSTRAINT Occupancy_PK PRIMARY KEY (BookingNo, RoomNo),
CONSTRAINT OccupancyBooking_FK FOREIGN KEY (BookingNo) REFERENCES BookingDetails (BookingNo),
CONSTRAINT OccupancyRoom_FK FOREIGN KEY (RoomNo) REFERENCES Room (RoomNo)
);

CREATE TABLE Stirring
(
FacNo varchar(10) NOT NULL,
EventNo varchar(10) NOT NULL,
EventDate date NOT NULL,
EventStartTime time NOT NULL,
EventEndTime time NOT NULL,
CONSTRAINT Stirring_PK PRIMARY KEY (FacNo, EventNo),
CONSTRAINT StirringFacility_FK FOREIGN KEY (FacNo) REFERENCES Facility (FacNo),
CONSTRAINT StirringEvent_FK FOREIGN KEY (EventNo) REFERENCES Event (EventNo)
);

CREATE TABLE Transportation
(
TransNo varchar(10) NOT NULL,
TransType varchar(25) NOT NULL,
TransNote varchar(25) NOT NULL,
TransPrice numeric(10,2) NOT NULL,
TransStatus varchar(25) NOT NULL,
BookingNo varchar(10) NOT NULL,
CONSTRAINT Transportation_PK PRIMARY KEY (TransNo),
CONSTRAINT TrasportBooking_FK FOREIGN KEY (BookingNo) REFERENCES BookingDetails (BookingNo),
CONSTRAINT TransportType_CHK CHECK (TransType IN ( 'Car' , 'Van' , 'Bus' , 'VIP'))
);

CREATE TABLE Engage
(
BookingNo varchar(10) NOT NULL,
FacNo varchar(10) NOT NULL,
FacStatus varchar(25) NOT NULL,
CONSTRAINT Engage_PK PRIMARY KEY (BookingNo, FacNo),
CONSTRAINT EngageFacility_FK FOREIGN KEY (FacNo) REFERENCES Facility (FacNo),
CONSTRAINT EngageBooking_FK FOREIGN KEY (BookingNo) REFERENCES BookingDetails (BookingNo)
);


INSERT VALUE

INSERT INTO Room VALUES('R101', '1bedroom', 75, 'H101');
INSERT INTO Room VALUES('R102', '1bedroom', 75, 'H101');
INSERT INTO Room VALUES('R103', '2bedroom', 100, 'H101');
INSERT INTO Room VALUES('R104', '2bedroom', 100, 'H101');
INSERT INTO Room VALUES('R105', 'Studio', 50, 'H101');
INSERT INTO Room VALUES('R106', 'Studio', 50, 'H101');
INSERT INTO Room VALUES('R107', 'Lux', 200, 'H101');


INSERT INTO Room VALUES('R201', '1bedroom', 75, 'H102');
INSERT INTO Room VALUES('R202', '1bedroom', 75, 'H102');
INSERT INTO Room VALUES('R203', '2bedroom', 100, 'H102');
INSERT INTO Room VALUES('R204', '2bedroom', 100, 'H102');
INSERT INTO Room VALUES('R205', 'Studio', 50, 'H102');
INSERT INTO Room VALUES('R206', 'Studio', 50, 'H102');
INSERT INTO Room VALUES('R207', 'Lux', 200, 'H102');


INSERT INTO Room VALUES('R301', '1bedroom', 75, 'H103');
INSERT INTO Room VALUES('R302', '1bedroom', 75, 'H103');
INSERT INTO Room VALUES('R303', '2bedroom', 100, 'H103');
INSERT INTO Room VALUES('R304', '2bedroom', 100, 'H103');
INSERT INTO Room VALUES('R305', 'Studio', 50, 'H103');
INSERT INTO Room VALUES('R306', 'Studio', 50, 'H103');
INSERT INTO Room VALUES('R307', 'Lux', 200, 'H103');


INSERT INTO Room VALUES('R401', '1bedroom', 75, 'H104');
INSERT INTO Room VALUES('R402', '1bedroom', 75, 'H104');
INSERT INTO Room VALUES('R403', '2bedroom', 100, 'H104');
INSERT INTO Room VALUES('R404', '2bedroom', 100, 'H104');
INSERT INTO Room VALUES('R405', 'Studio', 50, 'H104');
INSERT INTO Room VALUES('R406', 'Studio', 50, 'H104');
INSERT INTO Room VALUES('R407', 'Lux', 200, 'H104');

INSERT INTO Room VALUES('R501', '1bedroom', 75, 'H105');
INSERT INTO Room VALUES('R502', '1bedroom', 75, 'H105');
INSERT INTO Room VALUES('R503', '2bedroom', 100, 'H105');
INSERT INTO Room VALUES('R504', '2bedroom', 100, 'H105');
INSERT INTO Room VALUES('R505', 'Studio', 50, 'H105');
INSERT INTO Room VALUES('R506', 'Studio', 50, 'H105');
INSERT INTO Room VALUES('R507', 'Lux', 200, 'H105');

---------------------------------------------------------
INSERT INTO Occupancy VALUES('B101', 'R103', 'Booked');
INSERT INTO Occupancy VALUES('B103', 'R104', 'Booked');
INSERT INTO Occupancy VALUES('B105', 'R507', 'Booked');
INSERT INTO Occupancy VALUES('B106', 'R301', 'Booked');
INSERT INTO Occupancy VALUES('B107', 'R405', 'Booked');

---------------------------------------------------------

INSERT INTO Facility VALUES('F101', 'Forbidden City', 'Hall', '75', 'H101');
INSERT INTO Facility VALUES('F102', 'Lotus', 'Bar', '25', 'H101');
INSERT INTO Facility VALUES('F103', 'La Pedrera', 'Restaurant', '50', 'H101');
INSERT INTO Facility VALUES('F104', 'Robinson', 'Club', '100', 'H101');

INSERT INTO Facility VALUES('F201', 'Dome of the Rock', 'Hall', '75', 'H102');
INSERT INTO Facility VALUES('F202', 'Sea Baron', 'Bar', '25', 'H102');
INSERT INTO Facility VALUES('F203', 'Taj Mahal', 'Restaurant', '50', 'H102');
INSERT INTO Facility VALUES('F204', 'Victory', 'Club', '100', 'H102');

INSERT INTO Facility VALUES('F301', 'Abifoluwa', 'Hall', '75', 'H103');
INSERT INTO Facility VALUES('F302', 'Kaduna', 'Bar', '25', 'H103');
INSERT INTO Facility VALUES('F303', 'Zuma Rock', 'Restaurant', '50', 'H103');
INSERT INTO Facility VALUES('F304', 'Lagos Island', 'Club', '100', 'H103');

INSERT INTO Facility VALUES('F401', 'Infinitive City', 'Hall', '75', 'H104');
INSERT INTO Facility VALUES('F402', 'Three Horses', 'Bar', '25', 'H104');
INSERT INTO Facility VALUES('F403', 'Red Square', 'Restaurant', '50', 'H104');
INSERT INTO Facility VALUES('F404', 'Ancient Rome', 'Club', '100', 'H104');

INSERT INTO Facility VALUES('F501', 'Crystal Cave', 'Hall', '75', 'H105');
INSERT INTO Facility VALUES('F502', 'Paris Cafe', 'Bar', '25', 'H105');
INSERT INTO Facility VALUES('F503', 'Colosseum', 'Restaurant', '50', 'H105');
INSERT INTO Facility VALUES('F504', 'Dancing House', 'Club', '100', 'H105');
----------------------------------------------------------------------

INSERT INTO Stirring VALUES('F101', 'E101', '6/01/2018', '15:00', '21:00');
INSERT INTO Stirring VALUES('F102', 'E101', '6/01/2018', '16:00', '23:00');
INSERT INTO Stirring VALUES('F101', 'E103', '6/30/2018', '12:00', '21:00');
INSERT INTO Stirring VALUES('F103', 'E103', '6/30/2018', '12:00', '21:00');
INSERT INTO Stirring VALUES('F104', 'E108', '8/01/2018', '15:00', '00:00');

INSERT INTO Stirring VALUES('F201', 'E105', '7/07/2018', '16:00', '23:30');
INSERT INTO Stirring VALUES('F203', 'E105', '7/07/2018', '16:00', '23:00');
INSERT INTO Stirring VALUES('F202', 'E106', '8/01/2018', '17:00', '23:30');
INSERT INTO Stirring VALUES('F204', 'E107', '8/01/2018', '11:00', '15:00');

INSERT INTO Stirring VALUES('F303', 'E102', '6/24/2018', '18:00', '21:00');
INSERT INTO Stirring VALUES('F301', 'E109', '8/24/2018', '14:00', '18:00');
INSERT INTO Stirring VALUES('F304', 'E109', '8/24/2018', '18:00', '23:30');

INSERT INTO Stirring VALUES('F403', 'E110', '9/10/2018', '18:00', '21:00');
INSERT INTO Stirring VALUES('F403', 'E111', '9/30/2018', '17:30', '22:00');

INSERT INTO Stirring VALUES('F501', 'E112', '10/10/2018', '16:00', '21:00');
INSERT INTO Stirring VALUES('F503', 'E112', '10/10/2018', '18:00', '22:00');
--------------------------------------------------------------------



Delete FROM Engage
delete FROM Transportation
DELETE FROM StirrinG
DELETE FROM Occupancy
DELETE FROM BookingDetails
DELETE FROM Room
DELETE FROM Event
DELETE FROM Facility
DELETE FROM GuestDetails
DELETE FROM Employee
DELETE FROM Hotel









