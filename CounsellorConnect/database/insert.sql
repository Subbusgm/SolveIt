-- Populate Faculty Table
INSERT INTO faculty (department, qualification, email_id, phone_number, first_name, last_name, number_of_counselees, password)
VALUES
('Computer Science', 'PhD', 'john.doe@example.com', '9876543210', 'John', 'Doe', 5, 'password123'),
('Information Science', 'MTech', 'jane.smith@example.com', '9876543211', 'Jane', 'Smith', 4, 'password123'),
('Mechanical Engineering', 'PhD', 'david.johnson@example.com', '9876543212', 'David', 'Johnson', 6, 'password123'),
('Civil Engineering', 'MTech', 'emily.davis@example.com', '9876543213', 'Emily', 'Davis', 3, 'password123'),
('Electrical Engineering', 'PhD', 'michael.wilson@example.com', '9876543214', 'Michael', 'Wilson', 7, 'password123'),
('Electronics', 'MTech', 'sarah.martin@example.com', '9876543215', 'Sarah', 'Martin', 2, 'password123'),
('Chemical Engineering', 'PhD', 'robert.lee@example.com', '9876543216', 'Robert', 'Lee', 4, 'password123'),
('Biotechnology', 'MTech', 'linda.taylor@example.com', '9876543217', 'Linda', 'Taylor', 5, 'password123'),
('Aerospace', 'PhD', 'mark.white@example.com', '9876543218', 'Mark', 'White', 3, 'password123'),
('Instrumentation', 'MTech', 'nancy.harris@example.com', '9876543219', 'Nancy', 'Harris', 6, 'password123');

-- Populate Course Table
INSERT INTO course (course_code, number_of_credits, final_cie_marks, course_name)
VALUES
('CS101', 4, 92.5, 'Data Structures'),
('CS102', 3, 88.0, 'Algorithms'),
('ME101', 4, 85.0, 'Thermodynamics'),
('EE101', 3, 78.5, 'Circuit Analysis'),
('IS101', 4, 80.0, 'Database Management'),
('BT101', 3, 90.0, 'Genetics'),
('CH101', 4, 87.0, 'Organic Chemistry'),
('AE101', 3, 82.0, 'Aerodynamics'),
('EC101', 4, 75.5, 'Microcontrollers'),
('CE101', 3, 83.0, 'Structural Engineering');

-- Populate Handles Table
INSERT INTO handles (faculty_id, course_code)
VALUES
(1, 'CS101'),
(1, 'CS102'),
(2, 'IS101'),
(3, 'ME101'),
(4, 'CE101'),
(5, 'EE101'),
(6, 'EC101'),
(7, 'CH101'),
(8, 'BT101'),
(9, 'AE101');

-- Populate Student Table
INSERT INTO student (usn, branch, first_name, last_name, number_of_backlogs, phone_number, cgpa, email_id, faculty_id, password)
VALUES
('1RV20CS001', 'Computer Science', 'Alice', 'Brown', 0, '9876500001', 9.5, 'alice.brown@example.com', 1, 'password123'),
('1RV20CS002', 'Computer Science', 'Bob', 'Johnson', 1, '9876500002', 8.2, 'bob.johnson@example.com', 1, 'password123'),
('1RV20IS001', 'Information Science', 'Charlie', 'Davis', 0, '9876500003', 9.0, 'charlie.davis@example.com', 2, 'password123'),
('1RV20ME001', 'Mechanical', 'David', 'Miller', 2, '9876500004', 7.8, 'david.miller@example.com', 3, 'password123'),
('1RV20CE001', 'Civil', 'Eve', 'Wilson', 1, '9876500005', 8.5, 'eve.wilson@example.com', 4, 'password123'),
('1RV20EE001', 'Electrical', 'Frank', 'Taylor', 0, '9876500006', 9.1, 'frank.taylor@example.com', 5, 'password123'),
('1RV20EC001', 'Electronics', 'Grace', 'White', 1, '9876500007', 8.0, 'grace.white@example.com', 6, 'password123'),
('1RV20CH001', 'Chemical', 'Hank', 'Brown', 3, '9876500008', 7.5, 'hank.brown@example.com', 7, 'password123'),
('1RV20BT001', 'Biotechnology', 'Ivy', 'Green', 0, '9876500009', 9.2, 'ivy.green@example.com', 8, 'password123'),
('1RV20AE001', 'Aerospace', 'Jack', 'Black', 2, '9876500010', 8.7, 'jack.black@example.com', 9, 'password123');

-- Populate Guardian Table
INSERT INTO guardian (student_usn, phone_number, guardian_name, relationship, email_id)
VALUES
('1RV20CS001', '9876510001', 'Mary Brown', 'Mother', 'mary.brown@example.com'),
('1RV20CS002', '9876510002', 'James Johnson', 'Father', 'james.johnson@example.com'),
('1RV20IS001', '9876510003', 'Patricia Davis', 'Mother', 'patricia.davis@example.com'),
('1RV20ME001', '9876510004', 'Robert Miller', 'Father', 'robert.miller@example.com'),
('1RV20CE001', '9876510005', 'Jennifer Wilson', 'Mother', 'jennifer.wilson@example.com'),
('1RV20EE001', '9876510006', 'Michael Taylor', 'Father', 'michael.taylor@example.com'),
('1RV20EC001', '9876510007', 'Linda White', 'Mother', 'linda.white@example.com'),
('1RV20CH001', '9876510008', 'William Brown', 'Father', 'william.brown@example.com'),
('1RV20BT001', '9876510009', 'Barbara Green', 'Mother', 'barbara.green@example.com'),
('1RV20AE001', '9876510010', 'Elizabeth Black', 'Mother', 'elizabeth.black@example.com');

-- Populate Activity Points Table
INSERT INTO activity_points (event_category, event_name, number_of_points, doc_link)
VALUES
('Sports', 'Cricket', 10, 'link_to_cricket_doc'),
('Cultural', 'Dance', 8, 'link_to_dance_doc'),
('Technical', 'Hackathon', 15, 'link_to_hackathon_doc'),
('Social', 'Blood Donation', 5, 'link_to_blood_donation_doc'),
('Sports', 'Football', 10, 'link_to_football_doc'),
('Cultural', 'Singing', 8, 'link_to_singing_doc'),
('Technical', 'Coding Contest', 12, 'link_to_coding_doc'),
('Social', 'Tree Plantation', 6, 'link_to_tree_doc'),
('Sports', 'Basketball', 10, 'link_to_basketball_doc'),
('Technical', 'AI Workshop', 20, 'link_to_ai_doc');

-- Populate Earned By Table
INSERT INTO earned_by (event_id, student_usn)
VALUES
(1, '1RV20CS001'),
(2, '1RV20CS002'),
(3, '1RV20IS001'),
(4, '1RV20ME001'),
(5, '1RV20CE001'),
(6, '1RV20EE001'),
(7, '1RV20EC001'),
(8, '1RV20CH001'),
(9, '1RV20BT001'),
(10, '1RV20AE001');

-- Populate Attendance Table
INSERT INTO attended_by (course_code, student_usn, percentage, date, permission_doc_link, permission)
VALUES
('CS101', '1RV20CS001', 95.5, '2024-01-10', 'link_to_permission_doc1', TRUE),
('CS102', '1RV20CS002', 88.0, '2024-01-11', 'link_to_permission_doc2', FALSE),
('IS101', '1RV20IS001', 92.0, '2024-01-12', 'link_to_permission_doc3', TRUE),
('ME101', '1RV20ME001', 85.0, '2024-01-13', 'link_to_permission_doc4', FALSE),
('CE101', '1RV20CE001', 89.0, '2024-01-14', 'link_to_permission_doc5', TRUE),
('EE101', '1RV20EE001', 93.5, '2024-01-15', 'link_to_permission_doc6', TRUE),
('EC101', '1RV20EC001', 80.0, '2024-01-16', 'link_to_permission_doc7', FALSE),
('CH101', '1RV20CH001', 75.0, '2024-01-17', 'link_to_permission_doc8', TRUE),
('BT101', '1RV20BT001', 98.0, '2024-01-18', 'link_to_permission_doc9', TRUE),
('AE101', '1RV20AE001', 85.5, '2024-01-19', 'link_to_permission_doc10', TRUE);

-- Populate Meeting Table
INSERT INTO meeting (purpose, duration, date, student_usn, faculty_id)
VALUES
('Counseling', '00:30:00', '2024-01-20', '1RV20CS001', 1),
('Feedback', '00:20:00', '2024-01-21', '1RV20CS002', 1),
('Project Discussion', '01:00:00', '2024-01-22', '1RV20IS001', 2),
('Academic Advice', '00:45:00', '2024-01-23', '1RV20ME001', 3),
('Career Guidance', '00:40:00', '2024-01-24', '1RV20CE001', 4),
('Exam Preparation', '00:30:00', '2024-01-25', '1RV20EE001', 5),
('Internship Discussion', '00:50:00', '2024-01-26', '1RV20EC001', 6),
('Project Guidance', '01:10:00', '2024-01-27', '1RV20CH001', 7),
('Research Advice', '00:35:00', '2024-01-28', '1RV20BT001', 8),
('Personal Counseling', '00:25:00', '2024-01-29', '1RV20AE001', 9);
