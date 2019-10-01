
CREATE TABLE `assignment` (
  `ProjectID` int(11) NOT NULL,
  `EmployeeNumber` varchar(255) NOT NULL,
  `HoursWorked` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `department` (
  `DepartmentName` varchar(35) NOT NULL,
  `BudgetCode` varchar(255) NOT NULL,
  `OfficeNumber` varchar(255) NOT NULL,
  `DepartmentPhone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `employee` (
  `EmployeeNumber` int(11) NOT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `Department` varchar(255) DEFAULT NULL,
  `Position` varchar(255) DEFAULT NULL,
  `Supervisor` varchar(255) DEFAULT NULL,
  `OfficePhone` varchar(255) DEFAULT NULL,
  `EmailAddress` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `project` (
  `ProjectID` int(11) NOT NULL,
  `ProjectName` varchar(255) DEFAULT NULL,
  `Department` varchar(255) DEFAULT NULL,
  `MaxHours` varchar(255) DEFAULT NULL,
  `StartDate` varchar(255) DEFAULT NULL,
  `EndDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
