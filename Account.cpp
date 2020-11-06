#include "Account.h"
#include "Person.h"
using namespace std;

Account::Account(Person indiv, double cash, int accoNum)
{
	aPerson = indiv;
	balance = cash;
	accountNum = accoNum;
}

//accessors
double Account::getbalance()
{
	return balance;
}
int Account::getAccountNum()
{
	return accountNum;
}

//mutators	
void Account::deposit(double deposit) //function to add money to account
{
	balance = balance + deposit;
}


void Account::withdrawl(double withdraw) //function to pull money out of account.
{
	balance = balance - withdraw;
}

