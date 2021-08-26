function [x] = prog3_FB(R, niter)
    x = R;
    for i=1:niter
      x = 0.5*(x+R/x)
    end  
end