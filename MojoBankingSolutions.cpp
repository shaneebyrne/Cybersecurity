// MojoBankingSolutions.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include <iostream>
#include<conio.h>
#include<iomanip.h>
#include <"Person.cpp">
#include<"Person.h">
#include<"Account.cpp">
#include<"Account.h">
#include<string>

using namespace std;


int main()
{
	Person aPerson("Bob", "G.", "Dole", "760-867-5309", "xxx-xx-xxxx", "4412 Main Ave., Columbus, Oh, 91764-1639", "Bob.G.Dole@GMail.Com", 78945963, 49);
	Account bAccount(aPerson, 20000.61, aPerson.getAccountNum());
	int choice = 1;
	while (choice != 0)
	{
		cout << "

			Enter 0 to exit
			1. Initialize a new acc.
			2. Deposit
			3.Withdraw
			4.See A / c Status";
			cin >> choice;
		switch (choice)
		{
		case 0:obj.disp_det();
			cout << "

				EXITING PROGRAM.";
				break;
		case 1: obj.init();
			break;
		case 2: obj.deposit();
			break;
		case 3: obj.withdraw();
			break;
		case 4: obj.disp_det();
			break;
		default: cout << "

			Illegal Option"<<endl;
		}
	}
	getch();
}
