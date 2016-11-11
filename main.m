% This block and each proceeding it pass three time series into the GAcalc
% function. The resulting GAs are averaged and the standard deviation is computed. 
%Additionally, the gait vectors are used to compute the Lyapunov Exponent, and the average and standard
% deviation are obtained for the three resulting LEs
[GA1, L1] = GAcalc('control2.ts');
[GA2, L2] = GAcalc('control10.ts');
[GA3, L3] = GAcalc('control12.ts');
[X1] = lyaprosen(L1,0,0);*
[X2] = lyaprosen(L2,0,0);
[X3] = lyaprosen(L3,0,0);
GAC=(GA1+GA2+GA3)/3;
LEC=(X1+X2+X3)/3
SDVC=std([X1 X2 X3]);
SDVC2=std([GA1 GA2 GA3]);

[GA1, L1] = GAcalc('hunt1.ts');
[GA2, L2] = GAcalc('hunt7.ts');
[GA3, L3] = GAcalc('hunt10.ts');
[X1] = lyaprosen(L1,0,0);
[X2] = lyaprosen(L2,0,0);
[X3] = lyaprosen(L3,0,0);
GAH=(GA1+GA2+GA3)/3;
LEH=(X1+X2+X3)/3
SDVH=std([X1 X2 X3]);
SDVH2=std([GA1 GA2 GA3]);

[GA1, L1] = GAcalc('park13.ts');
[GA2, L2] = GAcalc('park10.ts');
[GA3, L3] = GAcalc('park12.ts');
[X1] = lyaprosen(L1,0,0);
[X2] = lyaprosen(L2,0,0);
[X3] = lyaprosen(L3,0,0);
GAP=(GA1+GA2+GA3)/3;
LEP=(X1+X2+X3)/3
SDVP=std([X1 X2 X3]);
SDVP2=std([GA1 GA2 GA3]);

[GA1, L1] = GAcalc('als8.ts');
[GA2, L2] = GAcalc('als12.ts');
[GA3, L3] = GAcalc('als9.ts');
[X1] = lyaprosen(L1,0,0);
[X2] = lyaprosen(L2,0,0);
[X3] = lyaprosen(L3,0,0);
GAS=(GA1+GA2+GA3)/3;
LES=(X1+X2+X3)/3
SDVS=std([X1 X2 X3]);
SDVS2=std([GA1 GA2 GA3]);

End
