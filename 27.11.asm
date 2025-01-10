
#include<bits/stdc++.h>
#include<string.h>
using namespace std;

int main()
{
    cout<<"Enter one line code :"<<endl;
    string str;
    getline(cin, str);
     //S=O+R*50
     //S=id1
       //O=id2
       //R=id3
       // Sum=OldSum+Rate*50

        string id1 = str.substr(0,3);
        string id2 = str.substr(4,6);
        string id3 = str.substr(11,4);

        cout << "id1 = " << id1 << endl;
        cout << "id2 = " << id2 << endl;
        cout << "id3 = " << id3 << endl;


    for(int i=0; i < str.size(); i++)
    {



        if(str[i]=='+' )
        {

             cout<<" MOVF id3 into R2 "<<" & store the value into R2 " <<endl;
              cout<<" MULF 50 with R2"<<" & store the value into R2  " <<endl;
               cout<<" MOVF id2 into R1"<<" & store the value into R1 " <<endl;
                cout<<" ADDF R2 with R1