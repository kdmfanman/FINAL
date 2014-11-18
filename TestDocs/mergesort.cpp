#include<stdio.h>
 
#define SIZE 100
 
void mergesort(int, int a[]);
int main()
{
    int a[SIZE];
    int i, n;
 
    printf("No of elements to be sorted:\n");
    scanf("%d",&n);
    printf("Enter the elements:\n");
    for(i=0;i<n;i++)
    scanf("%d",&a[i]);
    printf("Unsorted list:\n");
    for(i=0;i<n;i++)
    printf("%d",a[i]);
    printf("\n");
    mergesort(n, &a);
    printf("Sorted list:\n");
    for(i=0;i<n;i++)
    printf("%d ",a[i]);
    printf("\n");
    return 0;
}
void mergesort(int n, int a[])
{
    int n1, n2, i, j, k;
    int a1[n];
    int *a2, *a3;
    for (i=0;i<n;i++)
    a1[i] = a[i];
    if (n%2 == 0)
    n1 = n/2;
    else
    n1 = n/2 + 1;
    n2 = n - n1;
    if (n > 2)
    {
    mergesort(n1, &a1);
    mergesort(n2, &a1[n1]);
    }
    j = k = 0;
    a2 = &a1;
    a3 = &a1[n1];
    for (i=0;i<n;i++)
    {
    if (k == n2)
    {
        a[i] = *(a2+j);
        j++;
    }
    else if (j == n1)
    {
        a[i] = *(a3+k);
        k++;
    }
    else if(*(a2+j) <= *(a3+k))
    {
        a[i] = *(a2+j);
        j++;
    }
    else
    {
        a[i] = *(a3+k);
        k++;
    }
    }
}
