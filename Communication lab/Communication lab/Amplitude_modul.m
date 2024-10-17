Ac=input('Carrier signal Amplitude:');
Am=input('Message signal Amplitude:');
fc=input('Carrier signal Frequency:');
fm=input('Message signal Frequency:');


while fm>fc
    disp('Message signal frequency is incorrect.');
    fm=input('Message signal Frequency');
end

T=input('Time period:');
t=0:0.001:T;

Ym=Am*sin(2*pi*fm*t);
subplot(3,1,1);
plot(t,Ym);
title('Message signal');

Yc=Ac*sin(2*pi*fc*t);
subplot(3,1,2);
plot(t,Yc);
title('Carrier signal');

Z = (Ac + Ym).*Yc;
subplot(3, 1, 3);
plot(t, Z, 'r');
title('Modulated Signal');




