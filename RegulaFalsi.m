function  result = RegulaFalsi(xi,xf,f,index, es,rt)
	%% RegulaFalsi function for Regula Falsi Method
	%% Takes lower bound, upper bound, function, stopping iteration number and stopping approximate relative error percent as parameter
	%% Tries to find the root of the equation with iterating the x value
    iter = 1; %iteration variable
    xl = xi; %lower bound
    xu = xf; %upper bound
    
    xc = xu - ((f(xu)*(xl-xu))/(f(xl)-f(xu))); %c variable
    xcold = xc; %xcold to hold the previous c value
    ea = 100;
    et = abs((rt-xc)/rt)*100; %true relative error
    fprintf("iter       xl      xu      xc      ea      et\n");
    fprintf("0     %.9f    %.9f    %.9f    %.9f     %.9f\n",  xl, xu, xc, ea, et);
    
    while(ea>es || iter< index)
    xcold = xc;
    
    if f(xc) * f(xu) > 0
        xu = xc;
    end
    
    if f(xc) * f(xu) < 0
        xl = xc;
    end
    xc = xu - ((f(xu)*(xl-xu))/(f(xl)-f(xu)));

    ea = abs((xc-xcold)/xc) * 100;
    et = abs((rt-xc)/rt)*100;
    fprintf("%d     %.9f    %.9f    %.9f    %.9f    %.9f\n", iter, xl, xu, xc, ea, et);
    
    
    iter = iter+1;
    
    end
    result = xc;
    
end