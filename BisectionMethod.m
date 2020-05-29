function  result = BisectionMethod(xi,xf,f, es)
    iter = 0; %iteration variable
    xl = xi; % lower bound
    xu = xf; % upper bound
    xc = (xi + xf)/2; %middle bound
    xcold = xc; % xcold for holding previous middle bound
    ea = 100; %approximate percent relative error calculation
    fprintf("iter       xl      xu      xc      ea\n");
    fprintf("%d     %.9f    %.9f    %.9f    %.9f    \n", iter, xl, xu, xc, ea);
    iter = 1;
   
    while(ea>es)
    xcold = xc;
    
    
   
    
    if f(xc) * f(xu) > 0  
        xu = xc; %if c*b > 0 then new range is [a,c]
    end
    
    if f(xc) * f(xu) < 0
        xl = xc; %if c*b <0 then new range is [c,b]
    end

    xc = (xl + xu)/ 2;
    ea = abs((xc-xcold)/xc) * 100;
    
    fprintf("%d     %.9f    %.9f    %.9f    %.9f    \n", iter, xl, xu, xc, ea);
    
    
    iter = iter+1;
    
    end
    result = xc;
    
end
