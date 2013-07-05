clear;
code = '040107'; 
%%{
odb = {'G:\stock\040107_20130704.tik'
    'G:\stock\040107_20130703.tik'
    'G:\stock\040107_20130702.tik'
    'G:\stock\040107_20130701.tik'
    'G:\stock\040107_20130628.tik'
    'G:\stock\040107_20130627.tik'
    'G:\stock\040107_20130626.tik'
    'G:\stock\040107_20130625.tik'
    'G:\stock\040107_20130624.tik'
    'G:\stock\040107_20130621.tik'
    'G:\stock\040106_20130620.tik'
    'G:\stock\040106_20130619.tik'
    'G:\stock\040106_20130618.tik'
    'G:\stock\040106_20130617.tik'
    'G:\stock\040106_20130614.tik'
    'G:\stock\040106_20130613.tik'
    'G:\stock\040106_20130607.tik'
    'G:\stock\040106_20130606.tik'
    'G:\stock\040106_20130605.tik'
    'G:\stock\040106_20130604.tik'
    'G:\stock\040106_20130603.tik'
    'G:\stock\040106_20130531.tik'
    'G:\stock\040106_20130530.tik'
    'G:\stock\040106_20130529.tik'
    'G:\stock\040106_20130528.tik'
    'G:\stock\040106_20130527.tik'
    'G:\stock\040106_20130524.tik'
    'G:\stock\040106_20130523.tik'
    'G:\stock\040106_20130522.tik'
    'G:\stock\040106_20130521.tik'
    'G:\stock\040106_20130520.tik'};
%%}
%{
odb={'G:\stock\040120_20130507.tik'
    'G:\stock\040120_20130506.tik'
    'G:\stock\040120_20130503.tik'
    'G:\stock\040120_20130426.tik'
    'G:\stock\040120_20130425.tik'
    'G:\stock\040120_20130424.tik'
    'G:\stock\040120_20130423.tik'
    'G:\stock\040120_20130422.tik'
    'G:\stock\040120_20130419.tik'
    'G:\stock\040120_20130418.tik'
    'G:\stock\040120_20130417.tik'
    'G:\stock\040120_20130416.tik'
    'G:\stock\040120_20130415.tik'
    'G:\stock\040120_20130411.tik'
    'G:\stock\040120_20130410.tik'
    'G:\stock\040120_20130409.tik'
    'G:\stock\040120_20130408.tik'
    };
%}
hasodb=length(odb);
src = ['C:\App\pobo3\Data\cnfut\Tick\' code '.tik'];
%src = ['F:\stock\' code '_20130425.tik'];
dest = ['G:\' code '.tik'];
price=[];count=0;hvol=[];vol=[];quantity=[];st=[];sth=[];stm=[];
bal_old=0;
%   prev db    
if hasodb
  for i=1:hasodb
    fid = fopen(odb{i,1});
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
    price=[priced price];
    count=count+countd;
    hvol=[hvold hvol];
    vol=[vold vol];
    quantity=[quantityd quantity];
    st=[std st];
    sth=[sthd sth];
    stm=[stmd stm];
  end
end
%bal0=400;pev0=0;pevi0=0;pi0=0;eps0=0;
%bal1=2000;pev1=0;pevi1=0;pi1=0;eps1=0;
bal2=10000;pev2=0;pevi2=0;pi2=0;eps2=0;
bal3=20000;pev3=0;pevi3=0;pi3=0;eps3=0;
bal4=30000;pev4=0;pevi4=0;pi4=0;eps4=0;
bal5=40000;pev5=0;pevi5=0;pi5=0;eps5=0;
bal6=50000;pev6=0;pevi6=0;pi6=0;eps6=0;

bal7=60000;pev7=0;pevi7=0;pi7=0;eps7=0;
bal8=70000;pev8=0;pevi8=0;pi8=0;eps8=0;
bal9=80000;pev9=0;pevi9=0;pi9=0;eps9=0;

bal11=1000;pev11=0;pevi11=0;pi11=0;eps11=0;
bal12=2000;pev12=0;pevi12=0;pi12=0;eps12=0;
bal13=3000;pev13=0;pevi13=0;pi13=0;eps13=0;
bal14=4000;pev14=0;pevi14=0;pi14=0;eps14=0;
bal15=5000;pev15=0;pevi15=0;pi15=0;eps15=0;
bal16=6000;pev16=0;pevi16=0;pi16=0;eps16=0;

