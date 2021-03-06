function [jac] = out_jac5(q)

  jac(1,1)=1;
  jac(1,2)=0;
  jac(1,3)=- cos(q(3) + q(4) + q(5)) - cos(q(3) + q(4)) - cos(q(3));
  jac(1,4)=- cos(q(3) + q(4) + q(5)) - cos(q(3) + q(4));
  jac(1,5)=2*cos(q(3))*cos(q(4)) - cos(q(3) + q(4)) - cos(q(3)) - cos(q(3) + q(4) + q(5)) -...
          sin(q(3))*sin(q(4)) - cos(q(3))*(cos(q(4)) - 1);
  jac(1,6)=0;
  jac(1,7)=0;
  jac(2,1)=0;
  jac(2,2)=0;
  jac(2,3)=0;
  jac(2,4)=0;
  jac(2,5)=0;
  jac(2,6)=0;
  jac(2,7)=0;
  jac(3,1)=0;
  jac(3,2)=1;
  jac(3,3)=sin(q(3) + q(4) + q(5)) + sin(q(3) + q(4)) + sin(q(3));
  jac(3,4)=sin(q(3) + q(4) + q(5)) + sin(q(3) + q(4));
  jac(3,5)=sin(q(3) + q(4) + q(5)) + sin(q(3) + q(4)) + sin(q(3)) - cos(q(3))*sin(q(4)) - 2*...
         cos(q(4))*sin(q(3)) + sin(q(3))*(cos(q(4)) - 1);
  jac(3,6)=0;
  jac(3,7)=0;

 