if 1
    status = copyfile(src,dest);
    fid = fopen(['G:\' code '.tik']);
    fseek(fid,4,-1);
    [priced, countd] = fread(fid,[1 inf],'uint',16);
    priced = priced/1000;
    fseek(fid,8,-1);
    hvold = fread(fid,[1 inf],'float',16);
    vold = [hvold 0] - [0 hvold];
    vold(:,end) = [];
    fseek(fid,12,-1);
    quantityd = fread(fid,[1 inf],'float',16);
    fseek(fid,0,-1);
    std = fread(fid,[1 inf],'uint',16);
    sthd = mod(std,2048);
    stmd = mod(sthd,64);
    sthd = (sthd-stmd)/64;
    fclose(fid);
%   join db
    countn=count+countd;
    price=[price(1:count) priced];
    hvol=[hvol(1:count) hvold];
    vol=[vol(1:count) vold];
    quantity=[quantity(1:count) quantityd];
    st=[st(1:count) std];
    stm=[stm(1:count) stmd];
    sth=[sth(1:count) sthd];
end

if 1
    [k2,pev2,pevi2,pi2,eps2] = IF_pev1(price,vol,bal2,pev2,pevi2,pi2,eps2);
    p=100;
    l2=min(k2-p,300);
    s=000;
    IF_1(price,k2,pev2,pevi2,p,l2,s,2);
end
if 1
    [k3,pev3,pevi3,pi3,eps3] = IF_pev1(price,vol,bal3,pev3,pevi3,pi3,eps3);
    p=100;
    l3=min(k3-p,150);
    s=000;
    IF_1(price,k3,pev3,pevi3,p,l3,s,3);
end
if 1
    [k4,pev4,pevi4,pi4,eps4] = IF_pev1(price,vol,bal4,pev4,pevi4,pi4,eps4);
    p=100;
    l4=min(k4-p,100);
    s=00;
    IF_1(price,k4,pev4,pevi4,p,l4,s,4);
end
if 1
    [k5,pev5,pevi5,pi5,eps5] = IF_pev1(price,vol,bal5,pev5,pevi5,pi5,eps5);
    p=100;
    l5=min(k5-p,75);
    s=000;
    IF_1(price,k5,pev5,pevi5,p,l5,s,5);
end
if 1
    [k6,pev6,pevi6,pi6,eps6] = IF_pev1(price,vol,bal6,pev6,pevi6,pi6,eps6);
    p=100;
    l6=min(k6-p,60);
    s=0;
    IF_1(price,k6,pev6,pevi6,p,l6,s,6);
end
if 1
    [k7,pev7,pevi7,pi7,eps7] = IF_pev1(price,vol,bal7,pev7,pevi7,pi7,eps7);
    p=100;
    l7=min(k7-p,50);
    s=0;
    IF_1(price,k7,pev7,pevi7,p,l7,s,7);
end
if 1
    [k8,pev8,pevi8,pi8,eps8] = IF_pev1(price,vol,bal8,pev8,pevi8,pi8,eps8);
    p=100;
    l8=min(k8-p,45);
    s=0;
    IF_1(price,k8,pev8,pevi8,p,l8,s,8);
end
if 1
    [k9,pev9,pevi9,pi9,eps9] = IF_pev1(price,vol,bal9,pev9,pevi9,pi9,eps9);
    p=100;
    l9=min(k9-p,37);
    s=0;
    IF_1(price,k9,pev9,pevi9,p,l9,s,9);
end

if 1
    [k11,pev11,pevi11,pi11,eps11] = IF_pev1(price,vol,bal11,pev11,pevi11,pi11,eps11);
    p=100;
    l11=min(k11-p,3000);
    s=000;
    IF_1(price,k11,pev11,pevi11,p,l11,s,11);
end
if 1
    [k12,pev12,pevi12,pi12,eps12] = IF_pev1(price,vol,bal12,pev12,pevi12,pi12,eps12);
    p=100;
    l12=min(k12-p,1500);
    s=000;
    IF_1(price,k12,pev12,pevi12,p,l12,s,12);
end
if 1
    [k13,pev13,pevi13,pi13,eps13] = IF_pev1(price,vol,bal13,pev13,pevi13,pi13,eps13);
    p=100;
    l13=min(k13-p,1000);
    s=000;
    IF_1(price,k13,pev13,pevi13,p,l13,s,13);
end
if 1
    [k14,pev14,pevi14,pi14,eps14] = IF_pev1(price,vol,bal14,pev14,pevi14,pi14,eps14);
    p=100;
    l14=min(k14-p,750);
    s=000;
    IF_1(price,k14,pev14,pevi14,p,l14,s,14);
end
if 1
    [k15,pev15,pevi15,pi15,eps15] = IF_pev1(price,vol,bal15,pev15,pevi15,pi15,eps15);
    p=100;
    l15=min(k15-p,600);
    s=000;
    IF_1(price,k15,pev15,pevi15,p,l15,s,15);
end
if 1
    [k16,pev16,pevi16,pi16,eps16] = IF_pev1(price,vol,bal16,pev16,pevi16,pi16,eps16);
    p=100;
    l16=min(k16-p,500);
    s=000;
    IF_1(price,k16,pev16,pevi16,p,l16,s,16);
end

