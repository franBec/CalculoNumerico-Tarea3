function [x, iter] = prog4_FB(f,x0,x1,niter,tol)
    iter=sym(zeros(niter,1));    
    x = vpa((x1-((x1-x0)/(f(x1)-f(x0)))*f(x1)));
    for i=1:niter
        if(abs(f(x)) <= tol)
          display("Tolerancia fue alcanzada");
          return;
        end
        x = vpa((x1-((x1-x0)/(f(x1)-f(x0)))*f(x1)));
        iter(i) = x;
        x0 = x1;
        x1 = x;
    end
    display("Numero de iteraciones alcanzado");   
end