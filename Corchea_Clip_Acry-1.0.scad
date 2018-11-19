module connector(length=10, width=200, space=5, deep=10){
    
cube([length,width,thick]);

translate([length-deep,0,0])
    cube([deep,4,6+space]);
translate([length-deep,width-thick,0])
    cube([deep,3,6+space]);
}

space=5;
mcx = 100;
mcy = 63;
mcz = 70+space;
thick = 3;
imcx = mcx-2*thick;
imcy = mcy-2*thick;
imcz = mcz-2*thick;
fr=15;
ifr=13;
hf=2;
translate([10,0,0])
cube([5,mcy*2,space+6]);
connector(width=2*mcy);
mirror([0,0,1])  
translate([0,0,-(6+space)])
connector(width=2*mcy);
