#include<iostream>
using namespace std;

void Init(int x[], int n);
void Display(int x[], int n);
bool IsLast(int x[], int n);
void Gen(int x[], int n);
void Method(int x[], int n);

int main()
{
	int n;
	cout << "Input n = ";
	cin >> n;
	
	int x[n+1];
	
	Method(x, n);
	
    return 0;
}

void Init(int x[], int n)
{
	for(int i = 1; i <= n; i++)
	{
		x[i] = 0;
	}
}

void Display(int x[], int n)
{
	for(int i = 1; i <= n; i++)
	{
		cout << x[i] << " ";
	}
	cout << endl;
}

bool IsLast(int x[], int n)
{
	for(int i = 1; i <= n; i++)
	{
		if(x[i] == 0)
		{
			return false;
		}
	}
	return true;
}

void Gen(int x[], int n)
{
	int i = n;
	while(x[i] == 1)
	{
		i--;
	}
	
	x[i] = 1;
	
	for(int j = i + 1; j <= n; j++)
	{
		x[j] = 0;
	}
}

void Method(int x[], int n)
{
	Init(x, n);
	Display(x, n);
	
	bool stop = IsLast(x, n);
	
	while(stop == false)
	{
		Gen(x, n);
		Display(x, n);
		stop = IsLast(x, n);
	}
}


