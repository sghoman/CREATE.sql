INSERT INTO `assignment` (`ProjectID`, `EmployeeNumber`, `HoursWorked`) VALUES
(1000, '1', '30'),
(1000, '10', '50'),
(1000, '16', '75'),
(1000, '17', '75'),
(1000, '6', '50'),
(1100, '1', '30'),
(1100, '10', '55'),
(1100, '11', '55'),
(1100, '6', '75'),
(1200, '3', '20'),
(1200, '6', '40'),
(1200, '7', '45'),
(1200, '8', '45'),
(1300, '3', '25'),
(1300, '6', '40'),
(1300, '8', '50'),
(1300, '9', '50'),
(1400, '1', '30'),
(1400, '10', '50'),
(1400, '16', '75'),
(1400, '17', '75'),
(1400, '6', '50'),
(1500, '1', '30'),
(1500, '10', '55'),
(1500, '11', '55'),
(1500, '6', '75'),
(1600, '3', '20'),
(1600, '6', '40'),
(1600, '7', '45'),
(1600, '8', '45');

INSERT INTO `department` (`DepartmentName`, `BudgetCode`, `OfficeNumber`, `DepartmentPhone`) VALUES
('Accounting', 'BC-500-10', 'BLDG01-120', '360-285-8405'),
('Administration', 'BC-100-10', 'BLDG01-201', '360-285-8100'),
('Finance', 'BC-400-10', 'BLDG01-110', '360-285-8400'),
('Human Resources', 'BC-300-10', 'BLDG01-230', '360-285-8300'),
('InfoSystems', 'BC-700-10', 'BLDG02-210', '360-285-8600'),
('Legal', 'BC-200-10', 'BLDG01-220', '360-285-8200'),
('Production', 'BC-900-10', 'BLDG02-110', '360-285-8800'),
('Research and Development', 'BC-800-10', 'BLDG02-250', '360-285-8700'),
('Sales and Marketing', 'BC-600-10', 'BLDG01-250', '360-285-8500');



INSERT INTO `employee` (`EmployeeNumber`, `FirstName`, `LastName`, `Department`, `Position`, `Supervisor`, `OfficePhone`, `EmailAddress`) VALUES
(1, 'Mary', 'Jacobs', 'Administration', 'CEO', '.', '360-285-8110', 'MaryJacobs@WP.com'),
(2, 'Rosalie', 'Jackson', 'Administration', 'Adm Asst', '1', '360-285-8120', 'RosalieJackson@WP.com'),
(3, 'Richard', 'Bandalone', 'Legal', 'Attorney', '1', '360-285-8210', 'RichardBandalone@WP.com'),
(4, 'George', 'Smith', 'Human Resources', 'HR3', '1', '360-285-8310', 'GeorgeSmith@WP.com'),
(5, 'Alan', 'Adams', 'Human Resources', 'HR1', '4', '360-285-8320', 'AlanAdams@WP.com'),
(6, 'Ken', 'Evans', 'Finance', 'CFO', '1', '360-285-8410', 'KenEvans@WP.com'),
(7, 'Mary', 'Abernathy', 'Finance', 'FA3', '6', '360-285-8420', 'MaryAbernathy@WP.com'),
(8, 'Tom', 'Caruthers', 'Accounting', 'FA2', '6', '360-285-8430', 'TomCaruthers@WP.com'),
(9, 'Heather', 'Jones', 'Accounting', 'FA2', '6', '360-285-8440', 'HeatherJones@WP.com'),
(10, 'Ken', 'Numoto', 'Sales and Marketing', 'SM3', '1', '360-285-8510', 'KenNumoto@WP.com');


INSERT INTO `project` (`ProjectID`, `ProjectName`, `Department`, `MaxHours`, `StartDate`, `EndDate`) VALUES
(1000, '2017 Q3 Production Plan', 'Production', '100.00', '05/10/17', '06/15/17'),
(1100, '2017 Q3 Marketing Plan', 'Sales and Marketing', '135.00', '05/10/17', '06/15/17'),
(1200, '2017 Q3 Portfolio Analysis', 'Finance', '120.00', '07/05/17', '07/25/17'),
(1300, '2017 Q3 Tax Preparation', 'Accounting', '145.00', '08/10/17', '10/15/17'),
(1400, '2017 Q4 Production Plan', 'Production', '100.00', '08/10/17', '09/15/17'),
(1500, '2017 Q4 Marketing Plan', 'Sales and Marketing', '135.00', '08/10/17', '09/15/17'),
(1600, '2017 Q4 Portfolio Analysis', 'Finance', '140.00', '10/05/17', '.');
