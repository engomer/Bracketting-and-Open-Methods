function NRM (xi,func,es)
    %% NRM function for Newton Raphson Method
	%% Takes first x value, function and stopping approximate relative error percent as parameter
	%% Tries to find the root of the equation
	iter = 1; %iteration variable
    syms x; 
    x0 = xi; % first x value
    
    f = vpa(subs(func, x, x0)); % calculating f(x) value
    fd = diff(func);
    fdx = vpa(subs(fd, x ,x0)); % calculating f'(x) value
    xnext = x0 - (f/fdx); %next x value
    ea = abs(((xnext - x0)/xnext) * 100); %approximate relative error
    fprintf("iter       xi      ea\n");
    fprintf("0     %.5f    %.7f\n",  x0, ea);
    while(ea> es)
        x0 = xnext;
        f = vpa(subs(func, x, x0));
        fdx = vpa(subs(fd, x ,x0));
        xnext = x0 - (f/fdx);
        ea = abs(((xnext - x0)/xnext) * 100);
        fprintf("%d     %.5f    %.7f\n", iter,  x0, ea);
        iter = iter + 1;
    end
      fprintf("Root is : %.9f \n" ,x0);
end