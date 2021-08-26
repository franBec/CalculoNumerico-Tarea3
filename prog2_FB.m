function [x, niter, iter] = prog2_FB(f,x0,tol)
    niter = 1;
    iter = sym(zeros(niter,1));    
    df = diff(f);
    x = x0;
    error = abs(f(x));
    while error>tol
      x = vpa(x0 - f(x0)/df(x0));
      iter(niter) = x;
      x0 = x;
      niter = niter + 1;
      error = abs(f(x));  
    end
    niter = niter - 1;
    iter = transpose(iter);
    
end