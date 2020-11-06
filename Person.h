#pragma once
#include "Account.h"
#include<iostream.h>
#include<conio.h>
#include<iomanip.h>
#include<string>

using namespace std;

class Person
{
private:
	string firstName;
	string lastName;
	string middleInt;
	string phoneNum;
	string ssnNum;
	string address;
	string email;
	int accountNum;
	int age;
	

public:

	//Accessor functions
	string getPhoneNum();
	string getSsnNum();
	string getAddress();
	int getAccountNum();
	string getFirstName();
	string getLastName();
	string getMiddleInt();
	string getEmail();


	//Mutator functions
	void setName(string);
	void setssNum(string);
	void setAddress(string);
	void setAccountNum(int);
	void setAge(int);
	void setFirstName(string);
	void setLastName(string);
	void setMiddleInt(string);
	void setEmail(string);


 Person(string, string, string,  string, string, string, string, int, int);
};

//Header file for Person Class
