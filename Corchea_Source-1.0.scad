space=6;
mcx = 80;
mcy = 60;
mcz = 9+65;
thick = 3;
imcx = mcx-2*thick;
imcy = mcy-(2*thick);
imcz = mcz-2*thick;
fr=15;
ifr=13;
hf=2;

difference(){
translate([0,0,0])
    color("blue")
    cube([mcx,mcy*2,mcz]);
translate([3,3,3])
    cube([imcx,imcy-1.5,mcz+5]);
translate([3,3+mcy+1.5,3])
   cube([imcx,imcy-1.5,mcz+5]);
translate([-1,3+mcy-4.5,mcz-9])
 cube([mcx+5,3,mcz+5]);
translate([-1,10,mcz-7.5])
   cube([5,30,10]);
translate([-1,mcy*2-10-30,mcz-7.5])
   cube([5,30,10]);
    

}
rotate([90,0,0])
text("Corchea");