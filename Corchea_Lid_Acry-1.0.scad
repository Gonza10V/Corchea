
module connector(length=10, width=200, space=6, deep=10){
translate([20,0,0])    
cube([length,width,thick]);

translate([length+10,0,0])
    cube([deep,3,4+space]);
translate([length+10,width-thick,0])
    cube([deep,3,4+2]);
}

space=6;
mcx = 100;
mcy = 63;
mcz = 70+space;
thick = 3;
imcx = mcx-2*thick;
imcy = mcy-2*thick;
imcz = mcz-2*thick;
fr=17.5;
ifr=13.5;
hf=2;

difference(){
translate([30,0,0])
color("blue")
cube([86,mcy*2,space+6]);
    translate([33,3,-3])
cube([80,58.5,space+6]);
    translate([33,3+58.5+3,-3])
cube([80,58.5,space+6]);
//apertura derecha
    translate([29,10,4])
cube([5,30,5]);
//apertura izq
translate([29,(2*mcy)-40,4])
cube([5,30,5]);
    
     translate([33+83-fr-20,(2*mcy)-fr-3-10,13]) cylinder(r=ifr,h=10, $fn=100, center= true);
    translate([33+83-fr-20,(2*mcy)-fr-3-10,12.5])  cylinder(r=fr,h=4, $fn=100, center= true);
}

translate ([0,0,1]) 
connector(width=2*mcy, lenght=(80+30+3));
mirror([0,0,1])  
translate([0,0,-(6+space)])
connector(width=2*mcy);

//translate ([0,62-25,0])
//cube([33+83,50,7]);
//cube([33+83,12,100]);