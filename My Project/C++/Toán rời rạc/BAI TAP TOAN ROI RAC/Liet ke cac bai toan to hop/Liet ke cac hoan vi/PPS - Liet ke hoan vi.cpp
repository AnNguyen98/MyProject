#include<iostream>
#define swap(type, a, b){ type c = a; a = b; b = c;}
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
		x[i] = i;
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
	for(int i = 1; i < n; i++)
	{
		if(x[i] < x[i+1])
		{
			return false;
		}
	}
	return true;
}

void Gen(int x[], int n)
{
	int i = n - 1;
	while(x[i] > x[i+1])
	{
		i--;
	}
	
	int k = n;
	
	while(x[k] < x[i])
	{
		k--;
	}
	
	swap(int, x[i], x[k]);
	
	int left = i + 1, right = n;
	
	while(left < right)
	{
		swap(int , x[left], x[right]);
		left++;
		right--;	
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


