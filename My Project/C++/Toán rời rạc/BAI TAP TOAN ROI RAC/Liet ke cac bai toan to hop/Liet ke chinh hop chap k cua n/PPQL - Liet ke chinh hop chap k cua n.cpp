#include<iostream>
using namespace std;

void Display(int x[], int k);
void Try(int x[], int flag[], int k, int n, int i);
void Init(int flag[], int n);

int main()
{
	int n, k;
	cout << "Enter n = ";
	cin >> n;
	
	cout << "Enter k = ";
	cin >> k;
	
	int x[k+1], flag[n+1];
	Init(flag, n);
	
	Try(x, flag, k, n, 1);
	
    return 0;
}


void Display(int x[], int k)
{
	for(int i = 1; i <= k; i++)
	{
		cout << x[i] << " ";
	}
	cout << endl;
}


void Init(int flag[], int n)
{
	for(int i = 1; i <= n; i++)
	{
		flag[i] = 1;
	}
}

void Try(int x[], int flag[], int k, int n, int i)
{
	for(int j = 1; j <= n; j++)
	{
		if(flag[j] == 1)
		{
			x[i] = j;
			flag[j] = 0;
			
			if(i == k)
			{
				Display(x, k);
			}
			else
			{
				Try(x, flag, k, n, i+1);
			}
			
			flag[j] = 1;
		}		
	}
}


