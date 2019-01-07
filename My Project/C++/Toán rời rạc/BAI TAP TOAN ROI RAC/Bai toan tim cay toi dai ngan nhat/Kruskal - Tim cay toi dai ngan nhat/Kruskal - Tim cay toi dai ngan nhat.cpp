#include<iostream>
#include<fstream>
using namespace std;

#define MAX 100
#define INPUT "InKruskal.txt"
#define OUTPUT "OutKruskal.txt"
#define Swap(type, a, b){ type c = a; a = b; b = c;}

struct Edge
{
	int weight; // trong so canh
	int u, v; // 2 dinh tao nen canh
};

void Init(Edge edge[], int &n, int &nEdge);
void Kruskal(Edge edge[], int n, int nEdge);
void Sort(Edge edge[], int nEdge);
int GetFinalRoot(int root[], int vertex);
void Out(int w[][MAX], int n);

int main()
{	
	Edge edge[MAX]; // tap canh
	int n; // so dinh
	int nEdge; // so canh
	
	Init(edge, n, nEdge);
	
	Kruskal(edge, n, nEdge);
	
	return 0;
}

void Init(Edge edge[], int &n, int &nEdge)
{
	ifstream f;
	f.open(INPUT, ios::in);
	
 	f >> n; // nhap n
 	
 	nEdge = 0;
	while(!f.eof())
	{
		
		for(int i = 1; i <= n; i++)
		{
			for(int  j = 1; j <= n; j++)
			{
				int e;
				f >> e;
				if(e != 0 && i < j)
				{
					nEdge++;
					edge[nEdge].weight = e;
					edge[nEdge].u = i;
					edge[nEdge].v = j;
				} 
			}
		}
	}
	
	f.close();
}

void Kruskal(Edge edge[], int n, int nEdge)
{
	// Sap xep cac canh cua do thi theo chieu tang dan trong luong 
	
	Sort(edge, nEdge);
	
	int w[MAX][MAX]; // ma tran trong so cua cay toi dai
	int e = 0; // so canh cua canh
	
	// Khoi tao dinh goc cho cac dinh
	
	int root[MAX];
	
	for(int i = 1; i <= n; i++)
	{
		root[i] = -1;
	}
	
	// Chon lan luot cac canh sao cho ko tao thanh chu trinh
	for(int i = 1; i <= nEdge; i++)
	{
		int uFinalRoot = GetFinalRoot(root, edge[i].u);
		int vFinalRoot = GetFinalRoot(root, edge[i].v);
		
		if(uFinalRoot != vFinalRoot) // khac goc thi la o 2 cay khac nhau, khong tao thanh chu trinh
		{
			w[edge[i].u][edge[i].v] = w[edge[i].v][edge[i].u] = edge[i].weight;
			
			if(uFinalRoot > vFinalRoot)
			{
				root[vFinalRoot] = uFinalRoot;
			}
			else
			{
				root[uFinalRoot] = vFinalRoot;
			}
			
			e++;
			
			if(e == n - 1)
			{
				Out(w, n);
				return;
			}
		}
	}
	
	// Neu ra khoi vong for, e < n - 1 thi do thi ko lien thong
	cout << "Do thi da cho khong lien thong";
}

void Sort(Edge edge[], int nEdge)
{
	for(int i = 1; i < nEdge; i++)
	{
		int min = i;
		for(int j = i + 1; j <= nEdge; j++)
		{
			if(edge[j].weight < edge[min].weight)
			{
				min = j;
			}
		}
		if(min != i)
		{
			Swap(Edge, edge[min], edge[i]);
		}
	}
}

int GetFinalRoot(int root[], int vertex)
{
	while(root[vertex] != -1)
	{
		vertex = root[vertex];
	}
	
	return vertex;
}


void Out(int w[][MAX], int n)
{
	ofstream f;
	f.open(OUTPUT, ios::out);
	
	f << "Cay toi dai ngan nhat: " << endl;
	
	int weight = 0; // trong luong cay
	
	for(int i = 1; i <= n; i++)
	{
		for(int j = i; j <= n; j++)
		{
			if(w[i][j] > 0)
			{
				f << i << " " << j << endl;
				weight += w[i][j];
			}
		}
	}
	f << "Trong luong cay la: " << weight;
	
	f.close();
	cout << "Du lieu da duoc cap nhat o file OutKruskal.txt";
}
