#include<iostream>
#include<vector>

using namespace std;

class uzytkownik{
	private:
		string imie;
		string nazwisko;
		string login;
		string haslo;
		string email;
		
	public:
    
    uzytkownik(string i, string n, string l, string h, string em) {
        imie = i;
        nazwisko = n;
        login = l;
        haslo = h;
        email = em;
    }
    
    void prezentacjaInformacji()
    {
    	cout<<"Imie i nazwisko: "<<imie<<"  "<<nazwisko<<endl;
    	cout<<"Login: "<<login<<endl;
    	cout<<"Haslo: "<<haslo<<endl;
    	cout<<"E-mail: "<<email<<endl;
	}

};

int main()
{
	vector<uzytkownik> bazaUzytkownikow;
	int wybor=-1;
	while(wybor!=0)
	{
		cout << "=== LOGIN SYSTEM ===" << endl;
        cout << "1. Zarejestruj sie." << endl;
        cout << "2. Zaloguj sie." << endl;
        cout << "3. Nasi uzytkownicy." <<endl;
        cout << "0. Wyjscie." << endl;
        cout << "Wybierz opcje: ";
        cin >> wybor;
        
        switch(wybor) {
            case 1:{
            	string imie, nazwisko, login, haslo, email;
                cout<<"Podaj imie:"<<endl;
				cin>>imie;
				cout<<"Podaj nazwisko:"<<endl;
				cin>>nazwisko;
				cout<<"Podaj login:"<<endl;
				cin>>login;
				cout<<"Podaj haslo:"<<endl;
				cin>>haslo;
				while(haslo.length()<8)
				{
					cout<<"Twoje haslo jest za krotkie - musi posiadac 8 lub wiecej znakow."<<endl;
					cin>>haslo;
				}
			
				cout<<"Podaj email:"<<endl;
				cin>>email;
				
				uzytkownik nowy(imie,nazwisko,login,haslo,email);
				bazaUzytkownikow.push_back(nowy);
				cout<<"Rejestracja przebiegla pomyslnie."<<endl;
				cout<<endl;
                break;
            }
            case 2:
                cout<<"Funkcja niedostepna."<<endl;
                break;
            case 3:
            	if(bazaUzytkownikow.size()==0)
            	{
            		cout<<"Nie posiadamy obecnie uzytkownikow, zachecamy do rejestracji."<<endl;
            		break;
				}
            	else
            	{
            			for (int i = 0; i < bazaUzytkownikow.size(); i++) 
					{
					cout<<endl;
					bazaUzytkownikow[i].prezentacjaInformacji();
					cout<<endl;
					}
					break;
				}
            case 0:
            	cout<<"Zamykam program."<<endl;
            	break;
	}
}
	
	return 0;
}
