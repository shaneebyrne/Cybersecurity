#pragma once
#include <"Person.h">
#include<iostream.h>
#include<conio.h>
#include<iomanip.h>
#include<string>

using namespace std;

class Account
{
private:
	Person aPerson;
	double balance;
	int accountNum;

public: 

	Account(Person, double, int); //constructor
	

	//accessors
	double getbalance();
	int getAccountNum();
	
	//mutators	
	void deposit(double deposit); //function to add money to account
	

	void withdrawl(double withdraw); //function to pull money out of account.

};

