function bankmanagementsystem()
balance = 0;
disp('Welcome to the Bank Management System');
choice1 = input('1. Open a new account\n2. Access an existing account\n3. Currency Exchange\n4.Exit\nEnter your choice: ');
switch choice1
case 1
createAccount();
balance = input('Enter minimum balance that you wish to add to your account: ');
case 2
while true
disp('Options:');
disp('1. Deposit');
disp('2. Get Loan');
disp('3. Withdraw');
disp('4. Check Account Balance');
disp('5. Exit');
choice2 = input('Enter your choice: ');
switch choice2
case 1
choiceS = input('The following schemes are available in our bank\n------------------------------\nTime Period | Rate of interest\n------------------------------\n3 months | 5%\n6 months | 5.5%\n1 years | 7%\n2 years | 8%\nEnter your choice: ');
if choiceS == 1
balance = calculateFixedDeposit(balance, 3, 5);
elseif choiceS == 2
balance = calculateFixedDeposit(balance, 6, 5.5);
elseif choiceS == 3
balance = calculateFixedDeposit(balance, 12, 7);
elseif choiceS == 4
balance = calculateFixedDeposit(balance, 24, 8);
end
disp(['Account Balance: ' num2str(balance)]); 
case 2
loan();
case 3
disp(['Account Balance: ' num2str(balance)]); 
withdraw=input("How much you want to withdraw? ");
balance=balance-withdraw;
fprintf("The current balance is : %f",balance);
case 4
disp(['Account Balance: ' num2str(balance)]); 
case 5
break;
otherwise
disp('Invalid choice. Please try again.');
end
end 
case 3
currencyExchange();
end
disp('Exiting the Bank Management System. Goodbye!');
end
function createAccount()
aadhar = input('Aadhar number: ');
name = input('Name: ', 's');
mailid = input('Mail ID: ', 's');
pan = input('PAN Card Number: ');
contact = input('Enter Contact Number: ');
disp('Account Details');
disp(['Name: ' name]);
disp(['Aadhar Number: ' num2str(aadhar)]);
disp(['Mail ID: ' mailid]);
disp(['PAN Card Number: ' num2str(pan)]);
disp(['Contact Number: ' num2str(contact)]);
end
function balance = calculateFixedDeposit(principle, months, rate)
principle=input("Enter principle amount: ");
disp(['Amount (Principle): ' num2str(principle)]);
interest = (principle * (rate / 100) / 12) * months;
disp(['Interest after ' num2str(months) ' months: ' num2str(interest)]);
balance = principle + interest;
end
function currencyExchange()
disp('Options:');
disp('1. Dirham');
disp('2. Pound');
disp('3. Dollar');
disp('4. Euro');
disp('5. Rupees');
a = input('Enter the currency you have: ');
b = input('Enter the currency to which it has to be exchanged: ');
c = input('Enter the amount: ');
d = 0;
if a == 1 && b == 2
d = c * 0.22;
elseif a == 1 && b == 3
d = c * 0.27;
elseif a == 1 && b == 4
d = c * 0.26;
elseif a == 1 && b == 5
d = c * 22.67;
elseif a == 2 && b == 1
d = c * 4.46;
elseif a == 2 && b == 3
d = c * 1.22;
elseif a == 2 && b == 4
d = c * 1.15;
elseif a == 2 && b == 5
d = c * 101.18;
elseif a == 3 && b == 1
d = c * 3.67;
elseif a == 3 && b == 2
d = c * 0.82;
elseif a == 3 && b == 4
d = c * 0.95;
elseif a == 3 && b == 5
d = c * 83.26;
elseif a == 4 && b == 1
d = c * 3.86;
elseif a == 4 && b == 2
d = c * 0.87;
elseif a == 4 && b == 3
d = c * 1.05;
elseif a == 4 && b == 5
d = c * 87.63;
elseif a == 5 && b == 1
d = c * 0.044;
elseif a == 5 && b == 2
d = c * 0.0099;
elseif a == 5 && b == 3
d = c * 0.012;
elseif a == 5 && b == 4
d = c * 0.011;
end
disp(['The exchanged amount is: ' num2str(d)]);
end
function loan()
disp('OPTIONS');
disp('These are the banks available');
disp('1. IDBI Bank');
disp('2. ICICI Bank');
disp('3. SBI Bank');
disp('4. KOTAK Bank');
disp('5. INDIAN Bank');
disp('These are the loan available');
disp('1. Jewel loan');
disp('2. Housing loan');
disp('3. House mortgage loan');
disp('4. Small scale industrial loan');
disp('5. Micro credit loan');
z = input('Enter the type of loan (1-5): ');
y = input('Enter the principal amount: ');
jewel_i = [8, 8.5, 7.5, 9, 10];
jewel_t = [1, 1.5, 2, 0.8, 1.2];
house_i = [10, 9, 8, 9.5, 10.5];
house_t = [15, 14, 13, 16, 17];
housemortage_i = [11, 12, 13, 12.5, 13.5];
housemortage_t = [10, 11, 11.5, 12, 13];
industrial_i = [11, 12, 1.5, 13, 10.5];
industrial_t = [3, 4, 5, 5.5, 4.5];
credit_i = [11, 10, 11.5, 12, 13];
credit_t = [1, 1.5, 0.6, 1.5, 2];
if z == 1
disp('JEWEL LOAN');
disp('----------------------------------');
disp('BANK | MONTHLY INTEREST');
disp('----------------------------------');
disp('IDBI | ' + string(((y * (jewel_i(1) / 100) / (jewel_t(1) * 365)) * 30)));
disp('ICICI | ' + string(((y * (jewel_i(2) / 100) / (jewel_t(2) * 365)) * 30)));
disp('SBI | ' + string(((y * (jewel_i(3) / 100) / (jewel_t(3) * 365)) * 30)));
disp('KOTAK | ' + string(((y * (jewel_i(4) / 100) / (jewel_t(4) * 365)) * 30)));
disp('INDIAN | ' + string(((y * (jewel_i(5) / 100) / (jewel_t(5) * 365)) * 30)));
elseif z == 2
disp('HOUSING LOAN');
disp('----------------------------------');
disp('BANK | MONTHLY INTEREST');
disp('----------------------------------');
disp('IDBI | ' + string((house_i(1) * y) / (house_t(1) * 12)));
disp('ICICI | ' + string((house_i(2) * y) / (house_t(2) * 12)));
disp('SBI | ' + string((house_i(3) * y) / (house_t(3) * 12)));
disp('KOTAK | ' + string((house_i(4) * y) / (house_t(4) * 12)));
disp('INDIAN | ' + string((house_i(5) * y) / (house_t(5) * 12)));
elseif z == 3
disp('HOUSE MORTGAGE LOAN');
disp('----------------------------------');
disp('BANK | MONTHLY INTEREST');
disp('----------------------------------');
disp('IDBI | ' + string((housemortage_i(1) * y) / (housemortage_t(1) * 12)));
disp('ICICI | ' + string((housemortage_i(2) * y) / (housemortage_t(2) * 12)));
disp('SBI | ' + string((housemortage_i(3) * y) / (housemortage_t(3) * 12)));
disp('KOTAK | ' + string((housemortage_i(4) * y) / (housemortage_t(4) * 12)));
disp('INDIAN | ' + string((housemortage_i(5) * y) / (housemortage_t(5) * 12)));
elseif z == 4
disp('INDUSTRIAL LOAN');
disp('----------------------------------');
disp('BANK | MONTHLY INTEREST');
disp('----------------------------------');
disp('IDBI | ' + string((industrial_i(1) * y) / (industrial_t(1) * 12)));
disp('ICICI | ' + string((industrial_i(2) * y) / (industrial_t(2) * 12)));
disp('SBI | ' + string((industrial_i(3) * y) / (industrial_t(3) * 12)));
disp('KOTAK | ' + string((industrial_i(4) * y) / (industrial_t(4) * 12)));
disp('INDIAN | ' + string((industrial_i(5) * y) / (industrial_t(5) * 12)));
elseif z == 5
disp('CREDIT LOAN');
disp('----------------------------------');
disp('BANK | MONTHLY INTEREST');
disp('----------------------------------');
disp('IDBI | ' + string((credit_i(1) * y) / (credit_t(1) * 12)));
disp('ICICI | ' + string((credit_i(2) * y) / (credit_t(2) * 12)));
disp('SBI | ' + string((credit_i(3) * y) / (credit_t(3) * 12)));
disp('KOTAK | ' + string((credit_i(4) * y) / (credit_t(4) * 12)));
disp('INDIAN | ' + string((credit_i(5) * y) / (credit_t(5) * 12)));
else
disp('INVALID OPTION');
end
end

