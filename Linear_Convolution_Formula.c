#include <stdio.h>

int main()
{
    int lx,lh;
    printf("LINEAR CONVOLUTION\n");
    printf("Enter sequence x Length: ");
    scanf("%d",&lx);
    printf("Enter sequence h Length: ");
    scanf("%d",&lh);

    int y[lx+lh-1];
    int x[lx];
    int h[lh];

    printf("Enter sequence x: \n");
    for (int i=0; i<lx; i++)
    {
        scanf("%d",&x[i]);
    }

    printf("Enter sequence h: \n");
    for (int i=0; i<lh; i++)
    {
        scanf("%d",&h[i]);
    }

    // Zero Padding
    for (int i=lx; i<lx+lh-1; i++)
    {
        x[i] = 0;
    }
    for (int i=lh; i<lx+lh-1; i++)
    {
        h[i] = 0;
    }


    // Linear Convolution
    for (int i=0; i<lx+lh-1; i++)
    {
        y[i] = 0;
        for (int j=0; j<=i; j++)
        {
            y[i] = y[i] + ( x[j] * h[i-j] );
        }
    }


    // OUTPUT
    printf("Convolution of \n");
    for (int i=0; i<lx+lh-1; i++)
    {
        printf("%d ",x[i]);
    }
    printf("\n");

    for (int i=0; i<lx+lh-1; i++)
    {
        printf("%d ",h[i]);
    }
    printf("\n");

    for (int i=0; i<lx+lh-1; i++)
    {
        printf("Y[%d] = %d  \n",i,y[i]);  // OUTPUT 
    }
}
