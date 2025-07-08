-- Create Database
DROP DATABASE IF EXISTS GymManagement;
CREATE DATABASE GymManagement;
USE GymManagement;

-- Table 1: Personal Details
DROP TABLE IF EXISTS PersonalDetails;
CREATE TABLE PersonalDetails (
    MemberID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Address VARCHAR(255),
    Phone VARCHAR(15),
    Email VARCHAR(100),
    DOB DATE
);

INSERT INTO PersonalDetails (MemberID, Name, Address, Phone, Email, DOB) VALUES
(701, 'Alice Johnson', '123 Main St, Dallas, TX', '5551234567', 'alice@example.com', '1995-05-10'),
(702, 'Bob Smith', '456 Elm St, Dallas, TX', '5552345678', 'bob@example.com', '1990-08-20'),
(703, 'Cathy Brown', '789 Oak St, Plano, TX', '5553456789', 'cathy@example.com', '1985-12-15'),
(704, 'David Lee', '135 Maple Ave, Richardson, TX', '5554567890', 'david@example.com', '1988-03-25'),
(705, 'Eva White', '246 Pine Rd, Frisco, TX', '5555678901', 'eva@example.com', '1992-07-14'),
(706, 'Frank Moore', '357 Cedar Ln, Irving, TX', '5556789012', 'frank@example.com', '1996-01-30'),
(707, 'Grace King', '468 Birch St, Garland, TX', '5557890123', 'grace@example.com', '1994-11-05'),
(708, 'Hank Queen', '579 Spruce Ct, Carrollton, TX', '5558901234', 'hank@example.com', '1989-04-22'),
(709, 'Ivy Ray', '680 Willow Dr, Dallas, TX', '5559012345', 'ivy@example.com', '1991-09-18'),
(710, 'Jack Black', '791 Oakridge Blvd, Plano, TX', '5550123456', 'jack@example.com', '1993-06-08'),
(711, 'Karen Gold', '802 Magnolia Way, Frisco, TX', '5551122334', 'karen@example.com', '1997-02-12'),
(712, 'Leo Silver', '913 Cherry Hill, Richardson, TX', '5552233445', 'leo@example.com', '1998-12-20'),
(713, 'Mia Collins', '1024 Elmwood Ave, Irving, TX', '5553344556', 'mia@example.com', '1986-05-25'),
(714, 'Nathan Brooks', '1135 Pinewood Ln, Carrollton, TX', '5554455667', 'nathan@example.com', '1987-08-13'),
(715, 'Olivia Dean', '1246 Ashwood Ct, Dallas, TX', '5555566778', 'olivia@example.com', '1999-10-29'),
(716, 'Peter Long', '1357 Redwood St, Garland, TX', '5556677889', 'peter@example.com', '1992-01-05'),
(717, 'Quinn Foster', '1468 Cedar Grove, Plano, TX', '5557788990', 'quinn@example.com', '1994-03-19'),
(718, 'Rachel Lane', '1579 Walnut St, Irving, TX', '5558899001', 'rachel@example.com', '1988-07-23'),
(719, 'Sam Hill', '1680 Palm Ave, Frisco, TX', '5559900112', 'sam@example.com', '1995-11-30'),
(720, 'Tina Vale', '1791 Maple Ln, Carrollton, TX', '5550011223', 'tina@example.com', '1996-04-18');





-- Table 2: Trainer Details
DROP TABLE IF EXISTS TrainerDetails;
CREATE TABLE TrainerDetails (
    TrainerID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Phone VARCHAR(15),
    Email VARCHAR(100),
    Specialty VARCHAR(100)
);

INSERT INTO TrainerDetails (TrainerID, Name, Phone, Email, Specialty) VALUES
(801, 'John Doe', '5551234567', 'jdoe@fitness.com', 'Cardio Blast'),
(802, 'Jane Roe', '5552345678', 'jroe@fitness.com', 'Strength Training'),
(803, 'Chris Lee', '5553456789', 'clee@fitness.com', 'Flexibility Routine'),
(804, 'Pat Brown', '5554567890', 'pbrown@fitness.com', 'HIIT Advanced'),
(805, 'Alex White', '5555678901', 'awhite@fitness.com', 'Core Workout'),
(806, 'Emily Green', '5556789012', 'egreen@fitness.com', 'Endurance Training'),
(807, 'Michael Scott', '5557890123', 'mscott@fitness.com', 'Weight Lifting'),
(808, 'Sarah King', '5558901234', 'sking@fitness.com', 'Circuit Training'),
(809, 'Ryan Black', '5559012345', 'rblack@fitness.com', 'Stretch and Relax'),
(810, 'Sophia Taylor', '5550123456', 'staylor@fitness.com', 'Power Yoga');




 

-- Table 3: Workouts
DROP TABLE IF EXISTS Workouts;
CREATE TABLE Workouts (
    WorkoutID INT AUTO_INCREMENT PRIMARY KEY,
    WorkoutName VARCHAR(50) NOT NULL,
    DurationMinutes INT NOT NULL,
    IntensityLevel VARCHAR(20),
    TrainerID INT NOT NULL,
    FOREIGN KEY (TrainerID) REFERENCES TrainerDetails(TrainerID)
);


INSERT INTO Workouts (WorkoutID, WorkoutName, DurationMinutes, IntensityLevel, TrainerID) VALUES
(1, 'Cardio Blast', 30, 'High', 801),
(2, 'Strength Training', 45, 'Medium', 802),
(3, 'Flexibility Routine', 20, 'Low', 803),
(4, 'HIIT Advanced', 40, 'High', 804),
(5, 'Core Workout', 25, 'Medium', 805),
(6, 'Endurance Training', 50, 'High', 806),
(7, 'Weight Lifting', 60, 'Medium', 807),
(8, 'Circuit Training', 30, 'High', 808),
(9, 'Stretch and Relax', 20, 'Low', 809),
(10, 'Power Yoga', 35, 'Medium', 810);

-- Table 4: Membership Plans
DROP TABLE IF EXISTS MembershipPlans;
CREATE TABLE MembershipPlans (
    PlanID INT AUTO_INCREMENT PRIMARY KEY,
    PlanName VARCHAR(50) NOT NULL,
    DurationMonths INT NOT NULL,
    Price DECIMAL(10, 2) NOT NULL
);

INSERT INTO MembershipPlans (PlanID, PlanName, DurationMonths, Price) VALUES
(1, 'Basic', 1, 30.00),
(2, 'Standard', 3, 80.00),
(3, 'Premium', 6, 150.00),
(4, 'Annual', 12, 250.00),
(5, 'Family', 12, 400.00),
(6, 'Student', 6, 120.00),
(7, 'Corporate', 12, 350.00);



-- Table 5: Health Details
DROP TABLE IF EXISTS HealthDetails;
CREATE TABLE HealthDetails (
    HealthID INT AUTO_INCREMENT PRIMARY KEY,
    MemberID INT NOT NULL,
    HeightCM DECIMAL(5, 2),
    WeightKG DECIMAL(5, 2),
    BMI DECIMAL(5, 2),
    FOREIGN KEY (MemberID) REFERENCES PersonalDetails(MemberID)
);

INSERT INTO HealthDetails (HealthID, MemberID, HeightCM, WeightKG, BMI) VALUES
(1, 701, 170.5, 65.0, 22.4),
(2, 702, 160.0, 70.0, 27.3),
(3, 703, 180.0, 75.0, 23.1),
(4, 704, 165.0, 55.0, 20.2),
(5, 705, 175.0, 68.0, 22.2),
(6, 706, 168.0, 80.0, 28.3),
(7, 707, 172.0, 72.0, 24.3),
(8, 708, 178.0, 78.0, 24.6),
(9, 709, 165.5, 65.5, 23.9),
(10, 710, 167.0, 63.0, 22.6);

-- Table 6: Payment
DROP TABLE IF EXISTS Payment;
CREATE TABLE Payment (
    PaymentID INT AUTO_INCREMENT PRIMARY KEY,
    MemberID INT NOT NULL,
    Amount DECIMAL(10, 2) NOT NULL,
    PaymentDate DATE NOT NULL,
    PaymentMethod VARCHAR(20),
    FOREIGN KEY (MemberID) REFERENCES PersonalDetails(MemberID)
);

INSERT INTO Payment (PaymentID, MemberID, Amount, PaymentDate, PaymentMethod) VALUES
(1, 701, 30.00, '2024-11-01', 'Credit Card'),
(2, 702, 80.00, '2024-11-02', 'Debit Card'),
(3, 703, 150.00, '2024-11-03', 'Cash'),
(4, 704, 250.00, '2024-11-04', 'Credit Card'),
(5, 705, 400.00, '2024-11-05', 'PayPal'),
(6, 706, 120.00, '2024-11-06', 'Cash'),
(7, 707, 350.00, '2024-11-07', 'Debit Card'),
(8, 708, 30.00, '2024-11-08', 'Credit Card'),
(9, 709, 80.00, '2024-11-09', 'PayPal'),
(10, 710, 150.00, '2024-11-10', 'Debit Card');

-- Table 7: Trainer Assignment
DROP TABLE IF EXISTS TrainerAssignment;
CREATE TABLE TrainerAssignment (
    AssignmentID INT AUTO_INCREMENT PRIMARY KEY,
    MemberID INT NOT NULL,
    TrainerID INT NOT NULL,
    AssignedDate DATE NOT NULL,
    FOREIGN KEY (MemberID) REFERENCES PersonalDetails(MemberID),
    FOREIGN KEY (TrainerID) REFERENCES TrainerDetails(TrainerID)
);
INSERT INTO TrainerAssignment (AssignmentID, MemberID, TrainerID, AssignedDate) VALUES

(1, 701, 801, '2024-11-01'),

(2, 702, 802, '2024-11-02'),

(3, 703, 803, '2024-11-03'),

(4, 704, 804, '2024-11-04'),

(5, 705, 805, '2024-11-05');

 

-- Table 8: Equipments
DROP TABLE IF EXISTS Equipments;
CREATE TABLE Equipments (
    EquipmentID INT AUTO_INCREMENT PRIMARY KEY,
    EquipmentName VARCHAR(50) NOT NULL,
    MaintenanceCycleMonths INT NOT NULL
);

INSERT INTO Equipments (EquipmentID, EquipmentName, MaintenanceCycleMonths) VALUES
(1, 'Treadmill', 6),
(2, 'Elliptical', 6),
(3, 'Rowing Machine', 12),
(4, 'Dumbbells', 24),
(5, 'Bench Press', 18),
(6, 'Cable Machine', 12),
(7, 'Pull-Up Bar', 36),
(8, 'Kettlebells', 24),
(9, 'Spin Bike', 6),
(10, 'Leg Press', 18);

-- Table 9: Classes
DROP TABLE IF EXISTS Classes;
CREATE TABLE Classes (
    ClassID INT AUTO_INCREMENT PRIMARY KEY,
    ClassName VARCHAR(50) NOT NULL,
    TrainerID INT NOT NULL,
    ScheduleTime DATETIME NOT NULL,
    FOREIGN KEY (TrainerID) REFERENCES TrainerDetails(TrainerID)
);

INSERT INTO Classes (ClassID, ClassName, TrainerID, ScheduleTime) VALUES
(1, 'Yoga', 801, '2024-11-22 08:00:00'),
(2, 'Pilates', 802, '2024-11-22 10:00:00'),
(3, 'HIIT', 803, '2024-11-22 12:00:00'),
(4, 'CrossFit', 804, '2024-11-23 07:30:00'),
(5, 'Zumba', 805, '2024-11-23 09:00:00'),
(6, 'Strength Training', 806, '2024-11-23 11:00:00'),
(7, 'Aqua Aerobics', 807, '2024-11-23 14:00:00'),
(8, 'Cycling', 808, '2024-11-24 08:30:00'),
(9, 'Kickboxing', 809, '2024-11-24 10:30:00'),
(10, 'Body Pump', 810, '2024-11-24 12:30:00');

-- Table 10: Class Enrollment
DROP TABLE IF EXISTS ClassEnrollment;
CREATE TABLE ClassEnrollment (
    EnrollmentID INT AUTO_INCREMENT PRIMARY KEY,
    MemberID INT NOT NULL,
    ClassID INT NOT NULL,
    EnrollmentDate DATE NOT NULL,
    FOREIGN KEY (MemberID) REFERENCES PersonalDetails(MemberID),
    FOREIGN KEY (ClassID) REFERENCES Classes(ClassID)
);

INSERT INTO ClassEnrollment (EnrollmentID, MemberID, ClassID, EnrollmentDate) VALUES
(1, 701, 1, '2024-11-01'),
(2, 702, 2, '2024-11-02'),
(3, 703, 3, '2024-11-03'),
(4, 704, 1, '2024-11-04'),
(5, 705, 2, '2024-11-05'),
(6, 706, 3, '2024-11-06'),
(7, 707, 1, '2024-11-07'),
(8, 708, 2, '2024-11-08'),
(9, 709, 3, '2024-11-09'),
(10, 710, 1, '2024-11-10');

-- Table 11: Premium Facilities
DROP TABLE IF EXISTS PremiumFacilities;
CREATE TABLE PremiumFacilities (
   FacilityID INT AUTO_INCREMENT PRIMARY KEY,
   FacilityName VARCHAR(100) NOT NULL,
   PricePerUse DECIMAL(10, 2)
);

INSERT INTO PremiumFacilities (FacilityID, FacilityName, PricePerUse) VALUES
(1, 'Sauna', 15.00),
(2, 'Steam Room', 10.00),
(3, 'Swimming Pool', 20.00),
(4, 'Jacuzzi', 25.00),
(5, 'Personal Locker', 5.00);

-- Table 12: Facilities Assignment
DROP TABLE IF EXISTS FacilitiesAssignment;
CREATE TABLE FacilitiesAssignment (
   AssignmentID INT AUTO_INCREMENT PRIMARY KEY,
   MemberID INT NOT NULL,
   FacilityID INT NOT NULL,
   UsageDate DATE NOT NULL,
   FOREIGN KEY (MemberID) REFERENCES PersonalDetails(MemberID),
   FOREIGN KEY (FacilityID) REFERENCES PremiumFacilities(FacilityID)
);

INSERT INTO FacilitiesAssignment (AssignmentID, MemberID, FacilityID, UsageDate) VALUES
(1, 701, 1, '2024-11-01'),
(2, 702, 2, '2024-11-02'),
(3, 703, 3, '2024-11-03'),
(4, 704, 4, '2024-11-04'),
(5, 705, 5, '2024-11-05'),
(6, 706, 1, '2024-11-06'),
(7, 707, 2, '2024-11-07'),
(8, 708, 3, '2024-11-08'),
(9, 709, 4, '2024-11-09'),
(10, 710, 5, '2024-11-10');

-- Table 13: Staff Members Details
DROP TABLE IF EXISTS StaffMembers;
CREATE TABLE StaffMembers (
   StaffID INT AUTO_INCREMENT PRIMARY KEY,
   Name VARCHAR(100) NOT NULL,
   Role VARCHAR(50),
   Phone VARCHAR(15),
   Email VARCHAR(100)
);
INSERT INTO StaffMembers (StaffID, Name, Role, Phone, Email) VALUES
(901, 'Alice Johnson', 'Receptionist', '5551234567', 'alice@fitness.com'),
(902, 'Bob Smith', 'Janitor', '5552345678', 'bob@fitness.com'),
(903, 'Cathy Brown', 'Trainer', '5553456789', 'cathy@fitness.com'),
(904, 'David Lee', 'Manager', '5554567890', 'david@fitness.com'),
(905, 'Eva White', 'Dietician', '5555678901', 'eva@fitness.com');

-- Table 14: Staff Attendance
DROP TABLE IF EXISTS StaffAttendance;
CREATE TABLE StaffAttendance (
   AttendanceID INT AUTO_INCREMENT PRIMARY KEY,
   StaffID INT NOT NULL,
   AttendanceDate DATE NOT NULL,
   Status VARCHAR(20),
   FOREIGN KEY (StaffID) REFERENCES StaffMembers(StaffID)
);

INSERT INTO StaffAttendance (AttendanceID, StaffID, AttendanceDate, Status) VALUES
(1, 901, '2024-11-01', 'Present'),
(2, 902, '2024-11-02', 'Absent'),
(3, 903, '2024-11-03', 'Present'),
(4, 904, '2024-11-04', 'Present'),
(5, 905, '2024-11-05', 'Absent');

-- Table 15: Maintenance Schedule
DROP TABLE IF EXISTS MaintenanceSchedule;
CREATE TABLE MaintenanceSchedule (
   MaintenanceID INT AUTO_INCREMENT PRIMARY KEY,
   EquipmentID INT NOT NULL,
   ScheduleDate DATE NOT NULL,
   CompletionDate DATE,
   FOREIGN KEY (EquipmentID) REFERENCES Equipments(EquipmentID)
);

INSERT INTO MaintenanceSchedule (MaintenanceID, EquipmentID, ScheduleDate, CompletionDate) VALUES
(1, 1, '2024-11-15', '2024-11-20'),
(2, 2, '2024-11-16', '2024-11-21'),
(3, 3, '2024-11-17', '2024-11-22'),
(4, 4, '2024-11-18', '2024-11-23'),
(5, 5, '2024-11-19', '2024-11-24'),
(6, 6, '2024-11-20', '2024-11-25'),
(7, 7, '2024-11-21', '2024-11-26'),
(8, 8, '2024-11-22', '2024-11-27'),
(9, 9, '2024-11-23', '2024-11-28'),
(10, 10, '2024-11-24', '2024-11-29');

-- Table 16: Feedback
DROP TABLE IF EXISTS Feedback;
CREATE TABLE Feedback (
   FeedbackID INT AUTO_INCREMENT PRIMARY KEY,
   MemberID INT NOT NULL,
   FeedbackText TEXT,
   FeedbackDate DATE NOT NULL,
   FOREIGN KEY (MemberID) REFERENCES PersonalDetails(MemberId)
);

INSERT INTO Feedback (FeedbackID, MemberID, FeedbackText, FeedbackDate) VALUES
(1, 701, 'Great facility!', '2024-11-01'),
(2, 702, 'Friendly staff.', '2024-11-02'),
(3, 703, 'Need more equipment.', '2024-11-03'),
(4, 704, 'Excellent trainers!', '2024-11-04'),
(5, 705, 'Love the yoga class.', '2024-11-05'),
(6, 706, 'Affordable memberships.', '2024-11-06'),
(7, 707, 'Convenient timings.', '2024-11-07'),
(8, 708, 'Parking could improve.', '2024-11-08'),
(9, 709, 'Hygienic premises.', '2024-11-09'),
(10, 710, 'Highly recommended!', '2024-11-10');

-- Table 17: Dietician Details
DROP TABLE IF EXISTS DieticianDetails;
CREATE TABLE DieticianDetails (
   DieticianID INT AUTO_INCREMENT PRIMARY KEY,
   Name VARCHAR(100) NOT NULL,
   Phone VARCHAR(15),
   Specialty VARCHAR(50)
);

INSERT INTO DieticianDetails (DieticianID, Name, Phone, Specialty) VALUES
(201, 'Dr. Smith', '1234567890', 'Weight Loss'),
(202, 'Dr. Lee', '2345678901', 'Diabetes Management'),
(203, 'Dr. Taylor', '3456789012', 'Nutrition for Athletes'),
(204, 'Dr. Brown', '4567890123', 'Heart Health'),
(205, 'Dr. White', '5678901234', 'Vegan Diets');

-- Table 18: Member Check-in and Check-out
DROP TABLE IF EXISTS MemberCheckInOut;
CREATE TABLE MemberCheckInOut (
   EntryID INT AUTO_INCREMENT PRIMARY KEY ,
   MemberId INT NOT NULL ,
   CheckInTime DATETIME NOT NULL ,
   CheckOutTime DATETIME ,
   FOREIGN KEY(MemberId ) REFERENCES PersonalDetails(MemberId )
 );
 
 INSERT INTO MemberCheckInOut (EntryID, MemberID, CheckInTime, CheckOutTime) VALUES
(1, 701, '2024-11-01 08:00:00', '2024-11-01 10:00:00'),
(2, 702, '2024-11-02 09:00:00', '2024-11-02 11:00:00'),
(3, 703, '2024-11-03 10:00:00', '2024-11-03 12:00:00'),
(4, 704, '2024-11-04 11:00:00', '2024-11-04 13:00:00'),
(5, 705, '2024-11-05 12:00:00', '2024-11-05 14:00:00'),
(6, 706, '2024-11-06 13:00:00', '2024-11-06 15:00:00'),
(7, 707, '2024-11-07 14:00:00', '2024-11-07 16:00:00'),
(8, 708, '2024-11-08 15:00:00', '2024-11-08 17:00:00'),
(9, 709, '2024-11-09 16:00:00', '2024-11-09 18:00:00'),
(10, 710, '2024-11-10 17:00:00', '2024-11-10 19:00:00');

 -- Table 19: Workout Enrollment 
 DROP TABLE IF EXISTS WorkoutEnrollment; 
 CREATE TABLE WorkoutEnrollment (
 EnrollmentId INT AUTO_INCREMENT PRIMARY KEY ,
 MemberId INT NOT NULL ,
 WorkoutId INT NOT NULL ,
 EnrollmentDate DATE NOT NULL ,
 FOREIGN KEY(MemberId ) REFERENCES PersonalDetails(MemberId ),
 FOREIGN KEY(WorkoutId ) REFERENCES Workouts(WorkoutId )
 );
 
 INSERT INTO WorkoutEnrollment (EnrollmentID, MemberID, WorkoutID, EnrollmentDate) VALUES
(1, 701, 1, '2024-11-01'),
(2, 702, 2, '2024-11-02'),
(3, 703, 3, '2024-11-03'),
(4, 704, 4, '2024-11-04'),
(5, 705, 5, '2024-11-05'),
(6, 706, 6, '2024-11-06'),
(7, 707, 7, '2024-11-07'),
(8, 708, 8, '2024-11-08'),
(9, 709, 9, '2024-11-09'),
(10, 710, 10, '2024-11-10');

 -- New Table: Membership Assignments 
 DROP TABLE IF EXISTS MembershipAssignments; 
 CREATE TABLE MembershipAssignments ( 
     AssignmentId INT AUTO_INCREMENT PRIMARY KEY, 
     MemberId INT NOT NULL, 
     PlanId INT NOT NULL, 
     StartDate DATE, 
     EndDate DATE, 
     FOREIGN KEY(MemberId ) REFERENCES PersonalDetails(MemberId), 
     FOREIGN KEY(planId ) REFERENCES MembershipPlans(planId) 
 );
 
 INSERT INTO MembershipAssignments (AssignmentID, MemberID, PlanID, StartDate, EndDate) VALUES
(1, 701, 1, '2024-11-01', '2025-11-01'),
(2, 702, 2, '2024-11-02', '2025-02-02'),
(3, 703, 3, '2024-11-03', '2025-05-03'),
(4, 704, 4, '2024-11-04', '2025-11-04'),
(5, 705, 5, '2024-11-05', '2025-11-05'),
(6, 706, 6, '2024-11-06', '2025-05-06'),
(7, 707, 7, '2024-11-07', '2025-11-07'),
(8, 708, 1, '2024-11-08', '2025-11-08'),
(9, 709, 2, '2024-11-09', '2025-02-09'),
(10, 710, 3, '2024-11-10', '2025-05-10');
 
 CREATE TABLE DieticianAssignment (
    AssignmentID INT PRIMARY KEY,
    MemberID INT,
    DieticianID INT,
    AssignmentDate DATE,
    FOREIGN KEY (MemberID) REFERENCES PersonalDetails(MemberID),
    FOREIGN KEY (DieticianID) REFERENCES DieticianDetails(DieticianID)
);
INSERT INTO DieticianAssignment (AssignmentID, MemberID, DieticianID, AssignmentDate) VALUES
(1, 701, 201, '2024-11-01'),
(2, 702, 202, '2024-11-02'),
(3, 703, 203, '2024-11-03'),
(4, 704, 201, '2024-11-04'),
(5, 705, 202, '2024-11-05'),
(6, 706, 203, '2024-11-06'),
(7, 707, 201, '2024-11-07'),
(8, 708, 202, '2024-11-08'),
(9, 709, 203, '2024-11-09'),
(10, 710, 201, '2024-11-10');

-- Query to Get Members with Active Memberships and Their Trainers
SELECT 
    PD.Name AS MemberName, 
    MP.PlanName, 
    TD.Name AS TrainerName, 
    TA.AssignedDate
FROM 
    MembershipAssignments MA
JOIN 
    PersonalDetails PD ON MA.MemberID = PD.MemberID
JOIN 
    MembershipPlans MP ON MA.PlanID = MP.PlanID
JOIN 
    TrainerAssignment TA ON MA.MemberID = TA.MemberID
JOIN 
    TrainerDetails TD ON TA.TrainerID = TD.TrainerID
WHERE 
    MA.StartDate <= CURDATE() AND MA.EndDate >= CURDATE();
    
    
 -- Query to Find Members Using Premium Facilities Most Often
    
    SELECT 
    PD.Name AS MemberName, 
    PF.FacilityName, 
    COUNT(FA.UsageDate) AS UsageCount
FROM 
    FacilitiesAssignment FA
JOIN 
    PersonalDetails PD ON FA.MemberID = PD.MemberID
JOIN 
    PremiumFacilities PF ON FA.FacilityID = PF.FacilityID
GROUP BY 
    PD.Name, PF.FacilityName
ORDER BY 
    UsageCount DESC
LIMIT 10;
    
    
-- Query to List Trainers with the Most Classes Assigned
SELECT 
    TD.Name AS TrainerName, 
    COUNT(C.ClassID) AS ClassCount
FROM 
    Classes C
JOIN 
    TrainerDetails TD ON C.TrainerID = TD.TrainerID
GROUP BY 
    TD.Name
ORDER BY 
    ClassCount DESC;
    
--  Query to Get BMI Statistics by Trainer’s Members

SELECT 
    TD.Name AS TrainerName, 
    AVG(HD.BMI) AS AvgBMI, 
    MAX(HD.BMI) AS MaxBMI, 
    MIN(HD.BMI) AS MinBMI
FROM 
    TrainerAssignment TA
JOIN 
    TrainerDetails TD ON TA.TrainerID = TD.TrainerID
JOIN 
    HealthDetails HD ON TA.MemberID = HD.MemberID
GROUP BY 
    TD.Name;
    
    
-- Query to Find Members Assigned a Dietician and Trainer
SELECT 
    PD.Name AS MemberName, 
    DD.Name AS DieticianName, 
    TD.Name AS TrainerName
FROM 
    DieticianAssignment DA
JOIN 
    DieticianDetails DD ON DA.DieticianID = DD.DieticianID
JOIN 
    TrainerAssignment TA ON DA.MemberID = TA.MemberID
JOIN 
    TrainerDetails TD ON TA.TrainerID = TD.TrainerID
JOIN 
    PersonalDetails PD ON DA.MemberID = PD.MemberID;
    
   
-- Query to Identify Top-Performing Dieticians Based on Member Assignments
 
   SELECT 
    DD.Name AS DieticianName, 
    DD.Specialty, 
    COUNT(DA.MemberID) AS MemberCount
FROM 
    DieticianAssignment DA
JOIN 
    DieticianDetails DD ON DA.DieticianID = DD.DieticianID
GROUP BY 
    DD.Name, DD.Specialty
ORDER BY 
    MemberCount DESC
LIMIT 5;

-- Query to Determine the Most Popular Workout Types

SELECT 
    W.WorkoutName, 
    COUNT(WE.MemberID) AS EnrollmentCount
FROM 
    Workouts W
JOIN 
    WorkoutEnrollment WE ON W.WorkoutID = WE.WorkoutID
GROUP BY 
    W.WorkoutName
ORDER BY 
    EnrollmentCount DESC
LIMIT 5;


-- Query to Track Equipment Usage and Maintenance Frequency
SELECT 
    E.EquipmentName, 
    COUNT(FA.UsageDate) AS UsageCount, 
    COUNT(MS.MaintenanceID) AS MaintenanceCount
FROM 
    Equipments E
LEFT JOIN 
    FacilitiesAssignment FA ON E.EquipmentID = FA.FacilityID
LEFT JOIN 
    MaintenanceSchedule MS ON E.EquipmentID = MS.EquipmentID
GROUP BY 
    E.EquipmentName
ORDER BY 
    UsageCount DESC;



-- Query to Calculate Trainer Utilization Based on Workouts and Classes
 
SELECT 
    TD.Name AS TrainerName, 
    COUNT(DISTINCT W.WorkoutID) AS TotalWorkouts, 
    COUNT(DISTINCT C.ClassID) AS TotalClasses
FROM 
    TrainerDetails TD
LEFT JOIN 
    Workouts W ON TD.TrainerID = W.TrainerID
LEFT JOIN 
    Classes C ON TD.TrainerID = C.TrainerID
GROUP BY 
    TD.Name
ORDER BY 
    TotalWorkouts + TotalClasses DESC;
    
-- Query to Analyze Average Class Attendance Over Time
SELECT 
    C.ClassName, 
    MONTH(CE.EnrollmentDate) AS Month, 
    YEAR(CE.EnrollmentDate) AS Year, 
    COUNT(CE.EnrollmentID) AS AttendanceCount
FROM 
    ClassEnrollment CE
JOIN 
    Classes C ON CE.ClassID = C.ClassID
GROUP BY 
    C.ClassName, YEAR(CE.EnrollmentDate), MONTH(CE.EnrollmentDate)
ORDER BY 
    C.ClassName, Year, Month;


-- Functions Calculate BMI
DELIMITER $
CREATE FUNCTION CalculateBMI (
    HeightCM DECIMAL(5, 2), 
    WeightKG DECIMAL(5, 2)
)
RETURNS DECIMAL(5, 2)
DETERMINISTIC
BEGIN
    RETURN ROUND(WeightKG / (HeightCM / 100) * (HeightCM / 100), 2);
END $

SELECT 
    PD.Name AS MemberName, 
    HD.HeightCM, 
    HD.WeightKG, 
    CalculateBMI(HD.HeightCM, HD.WeightKG) AS BMI
FROM 
    HealthDetails HD
JOIN 
    PersonalDetails PD ON HD.MemberID = PD.MemberID;


-- Calculate Membership Expiration Status


DELIMITER $
CREATE FUNCTION IsMembershipActive (
    EndDate DATE
)
RETURNS VARCHAR(10)
DETERMINISTIC
BEGIN
    IF EndDate >= CURDATE() THEN
        RETURN 'Active';
    ELSE
        RETURN 'Expired';
    END IF;
END $

DROP FUNCTION IsMembershipActive;

SELECT 
    PD.Name AS MemberName, 
    MA.EndDate, 
    IsMembershipActive(MA.EndDate) AS MembershipStatus
FROM 
    MembershipAssignments MA
JOIN 
    PersonalDetails PD ON MA.MemberID = PD.MemberID;


-- Calculate Total Revenue from a Member
 
DELIMITER $
CREATE FUNCTION CalculateMemberRevenue (
    MemberID INT
)
RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN
    DECLARE TotalRevenue DECIMAL(10, 2);
    SELECT 
        SUM(Amount) 
    INTO 
        TotalRevenue
    FROM 
        Payment
    WHERE 
        MemberID = MemberID;
    RETURN IFNULL(TotalRevenue, 0.00);
END $

SELECT 
    PD.Name AS MemberName, 
    CalculateMemberRevenue(PD.MemberID) AS TotalRevenue
FROM 
    PersonalDetails PD;

-- Stored procedures


-- Add a New Member

DELIMITER $$


CREATE PROCEDURE AddNewMember(

IN p_Name VARCHAR(100),

IN p_Address VARCHAR(255),

IN p_Phone VARCHAR(15),

IN p_Email VARCHAR(100),

IN p_DOB DATE

)

BEGIN

INSERT INTO PersonalDetails (Name, Address, Phone, Email, DOB)

VALUES (p_Name, p_Address, p_Phone, p_Email, p_DOB);

END $$


DELIMITER ;

CALL AddNewMember('Jane Doe', '123 Fitness St', '555-1234', 'jane.doe@example.com', '1990-05-15');
select * from PersonalDetails;


-- Assign a Trainer to a Member

DELIMITER $$
CREATE PROCEDURE AssignTrainer(

IN p_MemberID INT,

IN p_TrainerID INT,

IN p_AssignedDate DATE

)

BEGIN

INSERT INTO TrainerAssignment (MemberID, TrainerID, AssignedDate)

VALUES (p_MemberID, p_TrainerID, p_AssignedDate);

END $$


DELIMITER ;

CALL AssignTrainer(701, 801, '2024-11-21');
select * from TrainerAssignment;

-- Record Member Payment
DELIMITER $$
 
CREATE PROCEDURE RecordPayment(
    IN p_MemberID INT,
    IN p_Amount DECIMAL(10,2),
    IN p_PaymentDate DATE,
    IN p_PaymentMethod VARCHAR(20)
)
BEGIN
    INSERT INTO Payment (MemberID, Amount, PaymentDate, PaymentMethod)
    VALUES (p_MemberID, p_Amount, p_PaymentDate, p_PaymentMethod);
END $$
 
DELIMITER ;
CALL RecordPayment(705, 100.50, '2024-11-21', 'Credit Card');
SELECT * FROM Payment;


# TRIGGER 1:

-- Step 1: Create a MembershipLog Table
DROP TABLE IF EXISTS MembershipLog;
CREATE TABLE MembershipLog (
    LogID INT AUTO_INCREMENT PRIMARY KEY,
    MemberID INT,
    PlanID INT,
    StartDate DATE,
    EndDate DATE,
    LogDate DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Step 2: Create the Trigger
DROP TRIGGER IF EXISTS AfterMembershipInsert;
DELIMITER $$

CREATE TRIGGER AfterMembershipInsert
AFTER INSERT ON MembershipAssignments
FOR EACH ROW
BEGIN
    INSERT INTO MembershipLog (MemberID, PlanID, StartDate, EndDate)
    VALUES (NEW.MemberID, NEW.PlanID, NEW.StartDate, NEW.EndDate);
END $$

DELIMITER ;

# TEST CODE FOR TRIGGER:

INSERT INTO PersonalDetails (MemberID, Name, Address, Phone, Email, DOB)
VALUES (103, 'John Doe', '123 Main St', '1234567890', 'john.doe@example.com', '1990-01-01');

INSERT INTO MembershipAssignments (MemberID, PlanID, StartDate, EndDate)
VALUES (103, 5, '2024-01-01', '2024-12-31');

SELECT * FROM MembershipLog;

show triggers;