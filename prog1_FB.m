function [x, iter, error] = prog1_FB(f,x0,niter)
    iter=sym(zeros(niter,1));    
    df = diff(f);    
    for i=1:niter
        x = vpa(x0 - f(x0)/df(x0));
        iter(i) = x;
        error = abs(f(x));
        x0 = x;
    end    
end