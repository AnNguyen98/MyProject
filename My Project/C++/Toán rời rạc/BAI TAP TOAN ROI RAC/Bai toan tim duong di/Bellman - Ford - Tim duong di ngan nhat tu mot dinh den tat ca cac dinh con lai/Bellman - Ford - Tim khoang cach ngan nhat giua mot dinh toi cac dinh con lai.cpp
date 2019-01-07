#include<iostream>
#include<fstream>
using namespace std;

#define MAX 100
#define VOCUNG 1000
#define INPUT "InBellmanFord.txt"
#define OUTPUT "OutBellmanFord.txt"

void Init(int w[][MAX], int &n, int &s);
void BellmanFord(int w[][MAX], int n, int s);
void Out(int P[], int L[], int n, int s);

int main()
{
	int w[MAX][MAX], n, s;
	
	Init(w, n, s);
		
	BellmanFord(w, n, s);
	
	return 0;
}

void Init(int w[][MAX], int &n, int &s)
{
	ifstream f;
	f.open(INPUT, ios::in);
	
	f >> n; // nhap n
	
	while(!f.eof())
	{
		for(int i = 1; i <= n; i++)
		{
			for(int  j = 1; j <= n; j++)
			{
				f >> w[i][j]; 
			}
		}
	}
	
	f.close();
	
	cout << "Nhap dinh can tim duong di ngan nhat toi cac dinh con lai: ";
	cin >> s;	
}

void BellmanFord(int w[][MAX], int n, int s)
{
	int P[MAX]; // dinh ke truoc trong duong di ngan nhat
	int L[MAX]; // duong di ngan nhat
	
	for(int i = 1; i <= n; i++)
	{
		P[i] = -1; // dinh ke truoc la rong khi khoi tao
	}
		
	for(int i = 1; i <= n; i++)
	{
		L[i] = VOCUNG; // khoi tao duong di ngan nhat toi tat ca cac dinh la vo cung
	}
	L[s] = 0; // s la dinh ban dau
	
	for(int i = 1; i <= n; i++)
	{
		for(int u = 1; u <= n; u++)
		{
			for(int v = 1; v <= n; v++)
			{
				if( w[u][v] != 0 && L[v] > L[u] + w[u][v])
				{
					L[v] = L[u] + w[u][v];
					P[v] = u;
				}
			}
		}
	}
	
	for(int u = 1; u <= n; u++)
	{
		for(int v = 1; v <=n; v++)
		{
			if(w[u][v] != 0 && L[v] > L[u] + w[u][v])
			{
				cout << "Do thi ton tai chu trinh am";
				return;
			}
		}
	}	
	
	Out(P, L, n, s);
}

void Out(int P[], int L[], int n, int s)
{
	ofstream f;
	f.open(OUTPUT, ios::out);

	for(int v = 1; v <= n; v++)
	{
		if(v != s)
		{
			if(L[v] == VOCUNG)
			{
				f << "\nKhong ton tai duong di tu dinh " << s << " den dinh " << v << "\n";
			}
			else
			{
				f << "\nDuong di ngan nhat tu dinh " << s << " den dinh " << v << " co trong so la: " << L[v];
				f << "\nDuong di: " << v << " <--- ";
				int k = P[v];
				while(k != s)
				{
					f << k << " <--- ";
					k = P[k];
				}	
				f << s << "\n";	
			}	
		}		
	}	
	
	f.close();
	
	cout << "Du lieu da duoc cap nhat o file OutBellmanFord.txt";
}
	

