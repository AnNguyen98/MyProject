#include<iostream>
using namespace std;

void Init(int x[], int k);
void Display(int x[], int k);
bool IsLast(int x[], int k, int n);
void Gen(int x[], int k, int n);
void Method(int x[], int k, int n);

int main()
{
	int n, k;
	cout << "Input n = ";
	cin >> n;
	
	cout << "Input k = ";
	cin >> k;
	
	int x[k+1];
	
	Method(x, k, n);
	
    return 0;
}

void Init(int x[], int k)
{
	for(int i = 1; i <= k; i++)
	{
		x[i] = i;
	}
}

void Display(int x[], int k)
{
	for(int i = 1; i <= k; i++)
	{
		cout << x[i] << " ";
	}
	cout << endl;
}

bool IsLast(int x[], int k, int n)
{
	for(int i = 1; i <= k; i++)
	{
		if(x[i] != n - k + i)
		{
			return false;
		}
	}
	return true;
}

void Gen(int x[], int k, int n)
{
	int i = k;
	while(x[i] == n - k + i)
	{
		i--;
	}
	
	x[i]++;
	
	for(int j = i + 1; j <= k; j++)
	{
		x[j] = x[i] + j - i;
	}
}

void Method(int x[], int k, int n)
{
	Init(x, k);
	Display(x, k);
	
	bool stop = IsLast(x, k, n);
	
	while(stop == false)
	{
		Gen(x, k, n);
		Display(x, k);
		stop = IsLast(x, k, n);
	}
}


