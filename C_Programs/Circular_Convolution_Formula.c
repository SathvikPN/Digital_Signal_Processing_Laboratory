#include <stdio.h>

int main()
{
    int lx,lh;
    printf("CONVOLUTION\n");
    printf("Enter sequence x Length: ");
    scanf("%d",&lx);
    printf("Enter sequence h Length: ");
    scanf("%d",&lh);

    int y[lx+lh-1];
    int x2[lx+lh-1];
    int x[lx];
    int h[lh];
    int a[lh]; // store folded h(n)

    printf("Enter sequence x: \n");
    for (int j=0; j<lx; j++)
    {
        scanf("%d",&x[j]);
    }

    printf("Enter sequence h: \n");
    for (int i=0; i<lh; i++)
    {
        scanf("%d",&h[i]);
    }

    printf("\n\n");


    // Zero Padding
    if (lx-lh != 0)
    {
        if (lx>lh)
        {
            for (int i=lh; i<lx; i++)   h[i] = 0;
            lh=lx;
        }

        else
        {
            for (int i=lx; i<lh; i++)   x[i] = 0;
            lx=lh;
        }

    }

    // CIRCULAR CONVOLUTION
    y[0] = 0;
    a[0] = h[0];

    for (int j=1; j<lh; j++)    //Folding h(n) to h(-n)
        a[j] = h[lh-j];

    for (int i=0; i<lh; i++)
        y[0] = y[0] + (x[i]*a[i]);  //first point

    for (int k=1; k<lh; k++)
    {
        y[k] = 0;

        //circular shift
        for (int j=1; j<lh; j++)
        {
            x2[j] = a[j-1];
            x2[0] = a[lh-1];
        }

        for (int i=0; i<lh; i++)
        {
            a[i] = x2[i];
            y[k] = y[k] + (x[i]*x2[i]);
        }
    }


    // DISPLAY
    printf("x(n) = ");
    for (int i=0; i<lx; i++)
    {
        printf("%d ",x[i]);
    }
    printf("\n");

    printf("h(n) = ");
    for (int i=0; i<lh; i++)
    {
        printf("%d ",h[i]);
    }
    printf("\n\n");

    printf("CIRCULAR CONVOLUTION \ny(n) = ");
    for (int i=0; i<lh; i++)
        printf("%d ",y[i]);

    printf("\n\n");
    return 0;
}
