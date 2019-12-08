n = 0:200;
n1 = transpose(n);
x = sin(3*pi*n1/100);           %force loaded input value (sorry ma'am :c )
    
for a = length(n1)              %Conditional statement acting as a piecewise function
    if (n1(a) == 0)             %Changing equation as it goes through n
        y(a) = (-1.5*x(a)) + (2*x(a+1)) - (0.5*x(a+2));
    elseif (n1(a) > 0)&&(n1(a)<=198)
        y(a) = (0.5*x(a+1)) - (0.5*x(a-1));
    else 
        y(a) = 1.5*x(a) - (2*x(a-1)) + (0.5*x(a-2));
    end
end
grid on                 %Plot commands to plot the legends,titles,labels
hold on                 %of x and y with respect to n
plot(n1,x,'k.-')
plot(n1,y,'b.-')
legend('x(n)','y(n)')
title('x and y evaluated through n number of samples')
xlabel('range of n numbers from 0 to 199')
ylabel('x and y function of n')
