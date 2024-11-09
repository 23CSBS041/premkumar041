CREATE DATABASE JavaProject;
use JavaProject;

create table Customer (customer_id int primary key,
customer_name varchar(30), pay_bills varchar(10), 
transfer_funds int, apply_loan varchar(5));

insert into Customer (customer_id,customer_name,pay_bills,
transfer_funds,apply_loan) VALUES (1,'Vishnu','PAID',27000,'NO');
insert into Customer (customer_id,customer_name,pay_bills,
transfer_funds,apply_loan) VALUES (2,'Vijay','PAID',17000,'YES');
insert into Customer (customer_id,customer_name,pay_bills,
transfer_funds,apply_loan) VALUES (3,'Nitin','PAID',20000,'NO');

select * from Customer;
CREATE TABLE Customer (CustomerID INT PRIMARY KEY,CreateAccount VARCHAR(15),CustomerName VARCHAR(30),PayBills VARCHAR(20),
TransferFunds VARCHAR(30),ApplyLoan VARCHAR(15));

CREATE TABLE BankTeller (BankTellerID INT PRIMARY KEY,AccountInquiry VARCHAR(20),DepositFunds VARCHAR(15),
IssueCheques VARCHAR(30),AssistInProfileUpdates VARCHAR(30),BankTellerName VARCHAR(20));

CREATE TABLE BankManager (BankManagerID INT PRIMARY KEY,ApproveLoanApplications VARCHAR(30),ManageAccounts VARCHAR(20),GenerateReports VARCHAR(30),
OverrideTransactions VARCHAR(20),BankManagerName VARCHAR(15));

CREATE TABLE Admin (AdminID INT PRIMARY KEY,ManageUserAccess VARCHAR(20),SystemMaintenance VARCHAR(30),AuditLogs VARCHAR(15),
GenerateSystemReports VARCHAR(30));

INSERT INTO Customer (CustomerID, CustomerName, CreateAccount, PayBills, TransferFunds, ApplyLoan) 
VALUES 
(1, 'John Doe', '2024-11-01', 'Paid', 'Transferred', 'Applied'),
(2, 'Jane Smith', '2024-10-21', 'Not Paid', 'Transferred', 'Not Applied'),
(3, 'Robert Brown', '2024-09-15', 'Paid', 'Not Transferred', 'Applied');

ALTER TABLE Customer ADD balance INT;

INSERT INTO Customer (CustomerID, CustomerName, CreateAccount, PayBills, TransferFunds, ApplyLoan, balance) 
VALUES (1, 'John Doe', '2024-11-01', 'Paid', 'Transferred', 'Applied', 1000.50),
(2, 'Jane Smith', '2024-10-21', 'Not Paid', 'Transferred', 'Not Applied', 500.00),
(3, 'Robert Brown', '2024-09-15', 'Paid', 'Not Transferred', 'Applied', 3000.75);

INSERT INTO BankTeller (BankTellerID, BankTellerName, AccountInquiry, DepositFunds, IssueCheques, AssistInProfileUpdates) 
VALUES (1, 'Alice Johnson', 'Account Inquiry', 'Deposit Funds', 'Issue Cheques', 'Assist with Profile Updates'),
(2, 'Bob Lee', 'Account Inquiry', 'Deposit Funds', 'Issue Cheques', 'Assist with Profile Updates');

INSERT INTO BankManager (BankManagerID, BankManagerName, ApproveLoanApplications, ManageAccounts, GenerateReports, OverrideTransactions) 
VALUES (1, 'Charlie Davis', 'Approve Loans', 'Manage Accounts', 'Generate Reports', 'Overridden'),
(2, 'David King', 'Approve Loans', 'Manage Accounts', 'Generate Reports', 'Overridden');

INSERT INTO Admin (AdminID, ManageUserAccess, SystemMaintenance, AuditLogs, GenerateSystemReports) 
VALUES (1, 'Eve Roberts', 'System Maintenance', 'Audit Logs', 'Generate Reports'),
(2, 'Frank Moore', 'System Maintenance', 'Audit Logs', 'Generate Reports');

INSERT INTO Transactions (TransactionID, CustomerID, TransactionDate, Amount, TransactionType) 
VALUES (1, 1, '2024-11-01', 500.00, 'Deposit'),
(2, 2, '2024-10-21', 200.00, 'Transfer'),
(3, 3, '2024-09-15', 1000.00, 'Withdrawal');
