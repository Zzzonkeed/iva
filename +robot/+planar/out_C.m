function [C] = out_C(q,dq)

  C(1,1)=0;
  C(1,2)=0;
  C(1,3)=dq(4)*(sin(q(3) + q(4) + q(5)) + 2*sin(q(3) + q(4))) + dq(6)*(sin(q(3) + q(6) + q(7)) + 2*...
         sin(q(3) + q(6))) + dq(3)*(sin(q(3) + q(4) + q(5)) + sin(q(3) + q(6) + q(7)) + 2*sin(q(3) + q(4)) + 2*...
         sin(q(3) + q(6)) + 5*sin(q(3))) + dq(5)*sin(q(3) + q(4) + q(5)) + dq(7)*sin(q(3) + q(6) + q(7));
  C(1,4)=dq(3)*(sin(q(3) + q(4) + q(5)) + 2*sin(q(3) + q(4))) + dq(4)*(sin(q(3) + q(4) + q(5)) + 2*...
         sin(q(3) + q(4))) + dq(5)*sin(q(3) + q(4) + q(5));
  C(1,5)=dq(3)*sin(q(3) + q(4) + q(5)) + dq(4)*sin(q(3) + q(4) + q(5)) + dq(5)*sin(q(3) + q(4) + q(5));
  C(1,6)=dq(3)*(sin(q(3) + q(6) + q(7)) + 2*sin(q(3) + q(6))) + dq(6)*(sin(q(3) + q(6) + q(7)) + 2*...
         sin(q(3) + q(6))) + dq(7)*sin(q(3) + q(6) + q(7));
  C(1,7)=dq(3)*sin(q(3) + q(6) + q(7)) + dq(6)*sin(q(3) + q(6) + q(7)) + dq(7)*sin(q(3) + q(6) + q(7));
  C(2,1)=0;
  C(2,2)=0;
  C(2,3)=dq(4)*(cos(q(3) + q(4) + q(5)) + 2*cos(q(3) + q(4))) + dq(6)*(cos(q(3) + q(6) + q(7)) + 2*...
         cos(q(3) + q(6))) + dq(3)*(cos(q(3) + q(4) + q(5)) + cos(q(3) + q(6) + q(7)) + 2*cos(q(3) + q(4)) + 2*...
         cos(q(3) + q(6)) + 5*cos(q(3))) + dq(5)*cos(q(3) + q(4) + q(5)) + dq(7)*cos(q(3) + q(6) + q(7));
  C(2,4)=dq(3)*(cos(q(3) + q(4) + q(5)) + 2*cos(q(3) + q(4))) + dq(4)*(cos(q(3) + q(4) + q(5)) + 2*...
         cos(q(3) + q(4))) + dq(5)*cos(q(3) + q(4) + q(5));
  C(2,5)=dq(3)*cos(q(3) + q(4) + q(5)) + dq(4)*cos(q(3) + q(4) + q(5)) + dq(5)*cos(q(3) + q(4) + q(5));
  C(2,6)=dq(3)*(cos(q(3) + q(6) + q(7)) + 2*cos(q(3) + q(6))) + dq(6)*(cos(q(3) + q(6) + q(7)) + 2*...
         cos(q(3) + q(6))) + dq(7)*cos(q(3) + q(6) + q(7));
  C(2,7)=dq(3)*cos(q(3) + q(6) + q(7)) + dq(6)*cos(q(3) + q(6) + q(7)) + dq(7)*cos(q(3) + q(6) + q(7));
  C(3,1)=0;
  C(3,2)=0;
  C(3,3)=- dq(4)*(sin(q(4) + q(5)) + 2*sin(q(4))) - dq(6)*(sin(q(6) + q(7)) + 2*sin(q(6))) - dq(5)*...
         (sin(q(4) + q(5)) + sin(q(5))) - dq(7)*(sin(q(6) + q(7)) + sin(q(7)));
  C(3,4)=- dq(3)*(sin(q(4) + q(5)) + 2*sin(q(4))) - dq(4)*(sin(q(4) + q(5)) + 2*sin(q(4))) - dq(5)*...
         (sin(q(4) + q(5)) + sin(q(5)));
  C(3,5)=- dq(3)*(sin(q(4) + q(5)) + sin(q(5))) - dq(4)*(sin(q(4) + q(5)) + sin(q(5))) - dq(5)*...
         (sin(q(4) + q(5)) + sin(q(5)));
  C(3,6)=- dq(3)*(sin(q(6) + q(7)) + 2*sin(q(6))) - dq(6)*(sin(q(6) + q(7)) + 2*sin(q(6))) - dq(7)*...
         (sin(q(6) + q(7)) + sin(q(7)));
  C(3,7)=- dq(3)*(sin(q(6) + q(7)) + sin(q(7))) - dq(6)*(sin(q(6) + q(7)) + sin(q(7))) - dq(7)*...
         (sin(q(6) + q(7)) + sin(q(7)));
  C(4,1)=0;
  C(4,2)=0;
  C(4,3)=dq(3)*(sin(q(4) + q(5)) + 2*sin(q(4))) - dq(5)*sin(q(5));
  C(4,4)=-dq(5)*sin(q(5));
  C(4,5)=- dq(3)*sin(q(5)) - dq(4)*sin(q(5)) - dq(5)*sin(q(5));
  C(4,6)=0;
  C(4,7)=0;
  C(5,1)=0;
  C(5,2)=0;
  C(5,3)=dq(4)*sin(q(5)) + dq(3)*(sin(q(4) + q(5)) + sin(q(5)));
  C(5,4)=dq(3)*sin(q(5)) + dq(4)*sin(q(5));
  C(5,5)=0;
  C(5,6)=0;
  C(5,7)=0;
  C(6,1)=0;
  C(6,2)=0;
  C(6,3)=dq(3)*(sin(q(6) + q(7)) + 2*sin(q(6))) - dq(7)*sin(q(7));
  C(6,4)=0;
  C(6,5)=0;
  C(6,6)=-dq(7)*sin(q(7));
  C(6,7)=- dq(3)*sin(q(7)) - dq(6)*sin(q(7)) - dq(7)*sin(q(7));
  C(7,1)=0;
  C(7,2)=0;
  C(7,3)=dq(6)*sin(q(7)) + dq(3)*(sin(q(6) + q(7)) + sin(q(7)));
  C(7,4)=0;
  C(7,5)=0;
  C(7,6)=dq(3)*sin(q(7)) + dq(6)*sin(q(7));
  C(7,7)=0;

 