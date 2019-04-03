function secantMethod(xim,xi,f,es)
    iter = 1; %iteration variable
    x1 = xim; %xn-1
    x0 = xi; %xn
    xnext = x0 - ((f(x0)*(x1-x0))/(f(x1)-f(x0))); %next x value
    ea = abs(((xnext- x0)/xnext)*100); %approximate percent relative error
    fprintf("iter       xi-1       xi       xi+1    ea\n");
    fprintf("0          %.5f       %.5f     %.5f    %.5f\n", x1, x0, xnext, ea);        
    while(ea>es)
    x1 = x0;
    x0 = xnext;
    xnext = x0 - ((f(x0)*(x1-x0))/(f(x1)-f(x0)));
    ea = abs(((xnext- x0)/xnext)*100);
    
    fprintf("%d          %.5f       %.5f     %.5f    %.5f\n", iter, x1, x0, xnext, ea);        
    
    iter = iter + 1;
    end
    fprintf("Root is : %.5f\n", x0);

end