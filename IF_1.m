function z=IF_1(price,k,pev,pevi,p,l,s,pn)
    z=zeros(p,l);
    for i=1:p
        z(i,:)=pev(k-s-p-l+1+i:k-s-p+i);
    end
    a0=[];a2=[];
    for i=1:p/5
        a0=blkdiag(a0,[1 1 1 1 1]);
        a2=blkdiag(i,a2);
    end
    z=a2\((eye(p/5)-[zeros(p/5-1,1) eye(p/5-1);zeros(1,p/5)])\(a0*z))/5;
    figure(pn);
    plot(1:l,max(z),1:l,min(z),1:l,price(pevi(k-s-l+1:k-s)),1:l,z(p/5,1:l)');
end

