#include <stdio.h>
#include <math.h>
#define pi 3.14159
int main()
{
    int lx,N;
    printf("DFT\n");
    printf("Enter sequence x Length: ");
    scanf("%d",&lx);
    printf("Enter No. DFT points required: ");
    scanf("%d",&N);

    int y[N];
    int x[N];
    float real[N];
    float img[N];
    float realsum,imgsum,cospart,sinpart;

    printf("Enter sequence x: \n");
    for (int j=0; j<lx; j++)
    {
        scanf("%d",&x[j]);
    }

    printf("\n\n");


// Zero Padding --------------------------------------------------------------------------
    if (N-lx > 0)
    {
        for (int j=lx; j<N; j++) x[j] = 0;
    }

// DISCRETE FOURIER TRANSFORM [DFT] ------------------------------------------------------
    for (int n=0; n<=N-1; n++)
    {
        realsum = imgsum = 0;
        
        for (int k=0; k<=N-1; k++)
        {
            cospart = cos((2*pi*k*n)/N);
            sinpart = sin((2*pi*k*n)/N);

            realsum = realsum + (x[k]*cospart);
            imgsum = imgsum - (x[k]*sinpart);
        }

        real[n] = realsum;
        img[n] = imgsum;
        printf("\nX[%d] = %.2f + j(%.2f)",n,realsum,imgsum); // OUTPUT -------------------------------
    }



// DISPLAY -------------------------------------------------------------------------
    printf("\nGiven x(n) = ");
    for (int i=0; i<N; i++)
    {
        printf("%d ",x[i]);
    }

    printf("\n\n");
    return 0;
}
