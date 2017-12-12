
   
   
   p02p01=pp0(g,m1n)/pp0(g,m2(g,m1n))*p2p1
   
function pp0(g,m) {
   return Math.pow((1.+(g-1.)/2.*m*m),-g/(g-1.))}