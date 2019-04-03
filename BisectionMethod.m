function  result = BisectionMethod(xi,xf,f,index, es, rt)
    iter = 1; %iteration variable
    xl = xi; % lower bound
    xu = xf; % upper bound
    xc = (xi + xf)/2; %middle bound
    xcold = xc; % xcold for holding previous middle bound
    ea = abs((xc-xcold)/xc) * 100; %approximate percent relative error calculation
    et = abs((rt-xc)/rt)*100; %true relative error calculation
    fprintf("iter       xl      xu      xc      ea      et\n");
    fprintf("%0     %.9f    %.9f    %.9f    %.9f    %.9f\n",  xl, xu, xc, ea, et);
   
    while(ea>es || iter< index)
    xcold = xc;
    
    
   
    
    if f(xc) * f(xu) > 0  
        xu = xc; %if c*b > 0 then new range is [a,c]
    end
    
    if f(xc) * f(xu) < 0
        xl = xc; %if c*b <0 then new range is [c,b]
    end

    xc = (xl + xu)/ 2;
    ea = abs((xc-xcold)/xc) * 100;
    et = abs((rt-xc)/rt)*100;
    fprintf("%d     %.9f    %.9f    %.9f    %.9f    %.9f\n", iter, xl, xu, xc, ea, et);
    
    
    iter = iter+1;
    
    end
    result = xc;
    
end