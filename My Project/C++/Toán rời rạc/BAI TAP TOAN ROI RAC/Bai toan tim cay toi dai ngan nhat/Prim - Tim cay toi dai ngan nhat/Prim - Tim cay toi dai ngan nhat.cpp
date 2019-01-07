#include<iostream>
#include<fstream>
using namespace std;

#define MAX 100
#define VOCUNG 1000
#define INPUT "InPrim.txt"
#define OUTPUT "OutPrim.txt"

void Init(int w[][MAX], int &n);
void Prim(int w[][MAX], int n);
void GetEdge(int X[], int V[], int w[][MAX], int n, int &u, int &v);
void Out(int wT[][MAX], int n);

int main()
{	
	int w[MAX][MAX]; // ma tran trong so
	int n; // so dinh
	
	Init(w, n);
	
	Prim(w, n);
	
	return 0;
}

void Init(int w[][MAX], int &n)
{
	ifstream f;
	f.open(INPUT,ios::in);
	
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
}

void Prim(int w[][MAX], int n)
{
	int wT[MAX][MAX]; // ma tran trong so cua cay
	
	for(int i =1; i <= n; i++)
	{
		for(int j = 1; j <= n; j++)
		{
			wT[i][j] = 0;
		}
	}
	int V[MAX]; // tap dinh cua canh
	int X[MAX]; // tap dinh cua do thi 
	
	// chon mot dinh bat ki do thi - chon dinh dau tien
	V[1] = 1;
	X[1] = 0;
	
	// Nhung dinh con lai thuoc X, khong thuoc V
	for(int i = 2; i <= n; i++)
	{
		X[i] = 1; // dinh thuoc X
		V[i] = 0; // dinh khong thuoc V
	}
	
	for(int i = 1; i < n; i++)
	{
		int u; // dinh thuoc X
		int v; // dinh thuoc V
		GetEdge(X, V, w, n, u, v);
		
		// chon dinh u
		X[u] = 0; 
		V[u] = 1;
		wT[u][v] = wT[v][u] = w[u][v];
	}
	
	Out(wT, n);
}

void GetEdge(int X[], int V[], int w[][MAX], int n, int &u, int &v)
{
	int min = VOCUNG;
	for(int i = 2; i <= n; i++) // dinh 1 khong thuoc X
	{
		for(int j = 1; j <= n; j++)
		{
			// Xet cac canh gom 1 dinh thuoc X, 1 dinh thuoc V
			if(X[i] == 1 && V[j] == 1 && w[i][j] < min && w[i][j] > 0)
			{
				min = w[i][j];
				u = i;
				v = j;
			}
		}
	}
}

void Out(int wT[][MAX], int n)
{
	ofstream f;
	f.open(OUTPUT, ios::out);
	
	f << "Cay toi dai ngan nhat: " << endl;
	
	int weight = 0; // trong luong cay
	
	for(int i = 1; i <= n; i++)
	{
		for(int j = i; j <= n; j++)
		{
			if(wT[i][j] > 0)
			{
				f << i << " " << j << endl;
				weight += wT[i][j];
			}
		}
	}
	f << "Trong luong cay la: " << weight;
	
	f.close();
	cout << "Du lieu da duoc cap nhat o file OutPrim.txt";
}
