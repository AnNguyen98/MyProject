#include<iostream>
#include<fstream>
using namespace std;

#define MAX 100
#define VOCUNG 1000
#define INPUT "InDijkstra.txt"
#define OUTPUT "OutDijkstra.txt"

void Init(int w[][MAX], int &n, int &a, int &z);
void Out(int a, int z, int P[], int L[]);
void Dijkstra(int w[][MAX], int n, int a, int z);
int Min(int L[], int n);

int main()
{
	int w[MAX][MAX], n, a, z;
	
	Init(w, n, a, z);
		
	Dijkstra(w, n, a, z);
	
	return 0;
}

void Init(int w[][MAX], int &n, int &a, int &z)
{
	ifstream f;
	f.open(INPUT, ios::in);
	
	while(!f.eof())
	{
		f >> n; // nhap n
		for(int i = 1; i <= n; i++)
		{
			for(int  j = 1; j <= n; j++)
			{
				f >> w[i][j]; 
				// nhap ma tran bieu dien trong so 
				// 0 la khong noi voi nhau
			}
		}
	}
	
	f.close();
	
	cout << "Nhap hai dinh can tim duong di ngan nhat: ";
	cin >> a >> z;	
}


void Dijkstra(int w[][MAX], int n, int a, int z)
{
	int P[MAX]; // dinh ke truoc trong duong di ngan nhat
	int T[MAX]; // tap dinh cua G
	int L[MAX]; // duong di ngan nhat
	
	for(int i = 1; i <= n; i++)
	{
		P[i] = -1; // dinh truoc la rong khi khoi tao
	}
	
	for(int i = 1; i <= n; i++)
	{
		T[i] = i; // tap cac dinh cua G
	}
	
	for(int i = 1; i <= n; i++)
	{
		L[i] = VOCUNG; // khoi tao duong di ngan nhat toi tat ca cac dinh la vo cung
	}
	
	L[a] = 0; // khoi tao duong di ngan nhat toi dinh a la 0 - xuat phat tu a
	
	while(true)
	{
		int m = VOCUNG , v;
		// tim duong di ngan nhat m trong tat ca cac dinh thuoc T
		for(int i = 1; i <= n; i++)
		{
			if(T[i] > 0 && L[i] < m)
			{
				m = L[i];
			}
		}
	
		if(m == VOCUNG)
		{
			cout << "Khong ton tai duong di";
			return;
		}
		else
		{
			v = 1;
			while(v <= n)
			{
				// Tim dinh v thuoc T sao cho L[v] = m roi loai ra khoi T( fix v) 
				if(L[v] == m && T[v] > 0)
				{
					T[v] = 0;
					break;
				}
				v++;
			}
		}
		
		if(v == z)
		{
			Out(a, z, P, L);
			return;
		}
		
		// Thuc hien gan nhan cho cac dinh ke v
		for(int i = 1; i <= n; i++)
		{
			if(T[i] > 0 && w[v][i] != 0) // dinh i thuoc T va ke v
			{	
				if(L[i] > L[v] + w[v][i])
				{
					// gan nhan cho dinh i
					L[i] = L[v] + w[v][i]; 
					P[i] = v;
				}
			}
		}
	}
}

int Min(int L[], int n)
{
	int min = L[1];
	for(int i = 2; i <= n; i++)
	{
		if(min > L[i])
		{
			min = L[i];
		}
	}
	
	return min;
}

void Out(int a, int z, int P[], int L[])
{
	ofstream f;
	f.open(OUTPUT, ios::out);
	
	f << "Duong di ngan nhat tu dinh " << a << " den dinh " << z << " co trong so la: " << L[z];
	f << "\nDuong di: " << z << " <--- ";
	int k = P[z];
	while(k != a)
	{
		f << k << " <--- ";
		k = P[k];
	}
		
	f << a;
	f.close();
	cout << "Du lieu da duoc cap nhap o file OutDijkstra.txt";
}

