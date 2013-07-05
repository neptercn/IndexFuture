function [k,pev,pevi,pi,eps] = IF_pev1(price,vol,bal,pev,pevi,pi,eps)
    l=length(price);
    np =1;
    i=pi+1;
    k=length(pev)-1;
    if pi==l,return,end
    while 1
        if np
            j=i;
            t=0;
            np=0;
        end
        t=t+vol(i);
        if t+eps>bal
            k=k+1;
            pev(k) = price(j:i)*vol(j:i)'/sum(vol(j:i));
            pevi(k) = i;
            eps = t+eps-bal;
            np = 1;
            pi=i;
        end
        i=i+1;
        if i>l,break,end
    end
    if ~np
        k=k+1;
        i=i-1;
        pev(k) = price(j:i)*vol(j:i)'/sum(vol(j:i));
        pevi(k) = i;
    end
end
