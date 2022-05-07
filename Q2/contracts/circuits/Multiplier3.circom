pragma circom 2.0.0;

template Multiplier2 () {  

   // Declaration of signals.  
   signal input a;  
   signal input b;  
   signal output c;  

   // Constraints.  
   c <== a * b;  
}


template Multiplier3 () {  

   // Declaration of signals.  
   signal input a;  
   signal input b;
   signal input d;
   signal output c;  
   component mult1 = Multiplier2();
   component mult2 = Multiplier2();

   // Constraints.  
   mult1.a <== a;
   mult1.b <== b;
   mult2.a <== mult1.c;
   mult2.b <== d;
   c <== mult2.c;
 
}

component main = Multiplier3();