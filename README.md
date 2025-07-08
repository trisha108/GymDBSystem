Overview

This project is a comprehensive Gym Management Database system designed to streamline and automate various administrative, financial, and operational processes of a gym facility. It includes triggers, stored procedures, and functions to enhance data integrity, automate logging, and facilitate complex queries.

Features

1. Member Management: Store and manage personal details, health data, feedback, and membership status.

2. Trainer & Staff Management: Maintain detailed records of trainers and staff members.

3. Membership Management: Assign membership plans, track active memberships, and log membership history.

4. Class & Workout Scheduling: Manage class enrollments, workout routines, and attendance analysis.

5. Payment Processing: Record and validate member payments with automatic checks.

6. Equipment & Maintenance: Keep track of gym equipment and maintenance schedules.

7. Feedback & Consultations: Capture member feedback and dietician details.

8. Triggers & Automation: Automatic logging and validation to ensure data consistency and integrity.

9. Stored Procedures & Functions: Simplify operations like adding members, assigning trainers, calculating BMI, and revenue.

List of Tables

1. PersonalDetails

2. MembershipPlans

3. MembershipAssignments

4. Payment

5. TrainerDetails

6. TrainerAssignment

7. TrainerLog

8. Workouts

9. MembershipLog

10. HealthDetails

11. Feedback

12. DieticianDetails

13. Facilities

14. FacilitiesAssignment

15. StaffMembers

16. StaffAttendance

17. Equipment

18. MaintenanceSchedule

19. Feedback

Triggers

1. AfterMembershipInsert

- Automatically logs new membership assignments into the MembershipLog table.

- Ensures a historical record for membership tracking and analysis.

2. BeforePaymentInsert

- Validates that a payment is associated with a valid member before accepting an insert.

- Preserves data accuracy and prevents orphaned payments.

3. AfterTrainerAssignmentInsert

- Logs trainer-to-member assignments into the TrainerLog table.

- Facilitates tracking trainer assignments and member-trainer relationships.

How to Use

1. Database Setup

- Import the SQL schema provided in this project into your preferred SQL database management system.

- Run the script to create all tables, triggers, procedures, and functions.

2. Adding Members

- Use the stored procedure AddNewMember to add new members:

CALL AddNewMember('Member Name', 'Address', 'Phone', 'Email', 'DOB');

3. Assigning Trainer

- Use the procedure AssignTrainer:

CALL AssignTrainer(MemberID, TrainerID, 'AssignedDate');

4. Recording Payments

- Payments are validated via the trigger before insertion. Use a simple insert statement:

INSERT INTO Payment (MemberID, Amount, PaymentDate, PaymentMethod)
VALUES (MemberID, Amount, 'PaymentDate', 'PaymentMethod');

5. Analyzing Data

- Leverage provided queries and functions such as CalculateBMI, IsMembershipActive, and report generation queries to analyze member health, membership status, revenue, and attendance.

How the System Works

This system ensures data integrity and automation through various triggers:

1. Logging membership additions, trainer assignments, and payments.

2. Validating member existence before payment or trainer assignment.

3. Calculating member health metrics like BMI.

4. Tracking membership status and revenue.

Notes

1. Ensure your database management system supports triggers, stored procedures, and functions as per MySQL standards.

2. Customize and extend the database schema and queries based on your specific requirements.
