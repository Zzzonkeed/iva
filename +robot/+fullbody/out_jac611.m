function [jac6] = out_jac611(q)

  jac6(1,1)=0;
  jac6(1,2)=0;
  jac6(1,3)=0;
  jac6(1,4)=0;
  jac6(1,5)=0;
  jac6(1,6)=0;
  jac6(1,7)=0;
  jac6(1,8)=0;
  jac6(1,9)=0;
  jac6(1,10)=0;
  jac6(1,11)=0;
  jac6(2,1)=0;
  jac6(2,2)=0;
  jac6(2,3)=0;
  jac6(2,4)=0;
  jac6(2,5)=0;
  jac6(2,6)=0;
  jac6(2,7)=0;
  jac6(2,8)=0;
  jac6(2,9)=0;
  jac6(2,10)=0;
  jac6(2,11)=1;
  jac6(3,1)=0;
  jac6(3,2)=0;
  jac6(3,3)=0;
  jac6(3,4)=0;
  jac6(3,5)=0;
  jac6(3,6)=0;
  jac6(3,7)=0;
  jac6(3,8)=0;
  jac6(3,9)=0;
  jac6(3,10)=0;
  jac6(3,11)=0;
  jac6(4,1)=1;
  jac6(4,2)=0;
  jac6(4,3)=0;
  jac6(4,4)=0;
  jac6(4,5)=0;
  jac6(4,6)=0;
  jac6(4,7)=0;
  jac6(4,8)=0;
  jac6(4,9)=0;
  jac6(4,10)=0;
  jac6(4,11)=-cos(q(11));
  jac6(5,1)=0;
  jac6(5,2)=0;
  jac6(5,3)=0;
  jac6(5,4)=0;
  jac6(5,5)=0;
  jac6(5,6)=0;
  jac6(5,7)=0;
  jac6(5,8)=0;
  jac6(5,9)=0;
  jac6(5,10)=0;
  jac6(5,11)=0;
  jac6(6,1)=0;
  jac6(6,2)=1;
  jac6(6,3)=0;
  jac6(6,4)=0;
  jac6(6,5)=0;
  jac6(6,6)=0;
  jac6(6,7)=0;
  jac6(6,8)=0;
  jac6(6,9)=0;
  jac6(6,10)=0;
  jac6(6,11)=sin(q(11));

 