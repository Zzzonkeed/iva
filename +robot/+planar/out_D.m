function [D] = out_D(q)

  D(1,1)=5;
  D(1,2)=0;
  D(1,3)=- cos(q(3) + q(4) + q(5)) - cos(q(3) + q(6) + q(7)) - 2*cos(q(3) + q(4)) - 2*cos(q(3) +...
          q(6)) - 5*cos(q(3));
  D(1,4)=- cos(q(3) + q(4) + q(5)) - 2*cos(q(3) + q(4));
  D(1,5)=-cos(q(3) + q(4) + q(5));
  D(1,6)=- cos(q(3) + q(6) + q(7)) - 2*cos(q(3) + q(6));
  D(1,7)=-cos(q(3) + q(6) + q(7));
  D(2,1)=0;
  D(2,2)=5;
  D(2,3)=sin(q(3) + q(4) + q(5)) + sin(q(3) + q(6) + q(7)) + 2*sin(q(3) + q(4)) + 2*sin(q(3) +...
          q(6)) + 5*sin(q(3));
  D(2,4)=sin(q(3) + q(4) + q(5)) + 2*sin(q(3) + q(4));
  D(2,5)=sin(q(3) + q(4) + q(5));
  D(2,6)=sin(q(3) + q(6) + q(7)) + 2*sin(q(3) + q(6));
  D(2,7)=sin(q(3) + q(6) + q(7));
  D(3,1)=- cos(q(3) + q(4) + q(5)) - cos(q(3) + q(6) + q(7)) - 2*cos(q(3) + q(4)) - 2*cos(q(3) +...
          q(6)) - 5*cos(q(3));
  D(3,2)=sin(q(3) + q(4) + q(5)) + sin(q(3) + q(6) + q(7)) + 2*sin(q(3) + q(4)) + 2*sin(q(3) +...
          q(6)) + 5*sin(q(3));
  D(3,3)=2*cos(q(4) + q(5)) + 2*cos(q(6) + q(7)) + 4*cos(q(4)) + 2*cos(q(5)) + 4*cos(q(6)) + 2*...
         cos(q(7)) + 16;
  D(3,4)=cos(q(4) + q(5)) + 2*cos(q(4)) + 2*cos(q(5)) + 5;
  D(3,5)=cos(q(4) + q(5)) + cos(q(5)) + 2;
  D(3,6)=cos(q(6) + q(7)) + 2*cos(q(6)) + 2*cos(q(7)) + 5;
  D(3,7)=cos(q(6) + q(7)) + cos(q(7)) + 2;
  D(4,1)=- cos(q(3) + q(4) + q(5)) - 2*cos(q(3) + q(4));
  D(4,2)=sin(q(3) + q(4) + q(5)) + 2*sin(q(3) + q(4));
  D(4,3)=cos(q(4) + q(5)) + 2*cos(q(4)) + 2*cos(q(5)) + 5;
  D(4,4)=2*cos(q(5)) + 5;
  D(4,5)=cos(q(5)) + 2;
  D(4,6)=0;
  D(4,7)=0;
  D(5,1)=-cos(q(3) + q(4) + q(5));
  D(5,2)=sin(q(3) + q(4) + q(5));
  D(5,3)=cos(q(4) + q(5)) + cos(q(5)) + 2;
  D(5,4)=cos(q(5)) + 2;
  D(5,5)=2;
  D(5,6)=0;
  D(5,7)=0;
  D(6,1)=- cos(q(3) + q(6) + q(7)) - 2*cos(q(3) + q(6));
  D(6,2)=sin(q(3) + q(6) + q(7)) + 2*sin(q(3) + q(6));
  D(6,3)=cos(q(6) + q(7)) + 2*cos(q(6)) + 2*cos(q(7)) + 5;
  D(6,4)=0;
  D(6,5)=0;
  D(6,6)=2*cos(q(7)) + 5;
  D(6,7)=cos(q(7)) + 2;
  D(7,1)=-cos(q(3) + q(6) + q(7));
  D(7,2)=sin(q(3) + q(6) + q(7));
  D(7,3)=cos(q(6) + q(7)) + cos(q(7)) + 2;
  D(7,4)=0;
  D(7,5)=0;
  D(7,6)=cos(q(7)) + 2;
  D(7,7)=2;

 