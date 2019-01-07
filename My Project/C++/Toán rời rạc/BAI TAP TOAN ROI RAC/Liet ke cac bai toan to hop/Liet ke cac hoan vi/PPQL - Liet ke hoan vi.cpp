#include<iostream>
using namespace std;

void Init(int flag[], int n);
void Display(int s[], int n);
void Try(int s[], int flag[], int n, int i);

int main()
{
	int n;
	cout << "Enter n = ";
	cin >> n;
	
	int s[n+1], flag[n+1];
	
	Init(flag, n);
	Try(s, flag, n, 1);
	
    return 0;
}

void Init(int flag[], int n)
{
	for(int i = 1; i <= n; i++)
	{
		flag[i] = 1;
	}
}

void Display(int s[], int n)
{
	for(int i = 1; i <= n; i++)
	{
		cout << s[i] << " ";
	}
	cout << endl;
}


void Try(int s[], int flag[], int n, int i)
{
	for(int j = 1; j <= n; j++)
	{
		if(flag[j] == 1)
		{
			s[i] = j;
			flag[j] = 0;
			if(i == n)
			{
				Display(s, n);
			}
			else
			{
				Try(s, flag, n, i + 1);
			}
			flag[j] = 1;
		}
	}
}


