#include<iostream>

using namespace std;

struct Books {
	char name[20];
	char author[20];
}

int main(){
int numofBooks = 0;

cout << "Enter the number of Books: ";
cin >> numofBooks;

Books myBooks[numofBooks];

for( int i = 0; i < numofBooks; i++){
	cout << "Book Name: ";
	cin >> myBooks[i].name;
	cout << "Author Name: ";
	cin >> myBooks[i].author;
}

for( int i = 0; i < numofBooks; i++){
	cout << "Name: " << myNooks[i].name << "\nAuthor: " << myBooks[i].author;
}




return 0;
}