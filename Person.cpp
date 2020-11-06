#pragma once
#include "Person.h"
#include "Account.h"
#include<iostream.h>
#include<conio.h>
#include<iomanip.h>
#include<string>

//Accessor Functions

string Person::getLastName()
{
	return lastName;
}

string Person::getFirstName()
{
	return firstName;
}

string Person::getPhoneNum()
{
	return phoneNum;
}

string Person::getEmail()
{
	return email;
}


string Person::getSsnNum()
{
	return ssnNum;
}

string Person::getAddress()
{
	return address;
}
int Person::getAccountNum()
{
	return accountNum;
}


Person::Person(string fNamen, string lNamen, string mInt, string nummer, string socNum, string location, string webMail, int accNum, int anos)
{
	firstName = fNamen;
	lastName = lNamen;
	middleInt = mInt;
	email = webMail;
	phoneNum = nummer;
	ssnNum = socNum;
	address = location;
	accountNum = accNum;
	age = anos;
}


//Mutator functions

void Person::setssNum(string socNum)
{
	ssnNum = socNum;
}

void Person::setAddress(string location)
{
	address = location;
}

void Person::setAccountNum(int accNumb)
{
	accountNum = accNumb;
}

void Person::setAge(int anos)
{
	age = anos;
}

void Person::setFirstName(string fNamen)
{
	firstName = fNamen;
}

void Person::setLastName(string lNamen)
{
	lastName = lNamen;
}

void Person::setMiddleInt(string mInt)
{
	middleInt = mInt;
}

void Person::setEmail(string webMail)
{
	email = webMail;
}
//Source File for Person Class