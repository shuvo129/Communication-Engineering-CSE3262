bits=[0 1 0 0 1 1 1 0];
bitduration=1;
T=length(bits)*bitduration;
fs=100;
t=0:bitduration/fs:T;

x=zeros(1,length(t));





 previous=5;

 for i=1:length(bits)

     if(bits(i)==1)

       previous=-previous;
      x((i-1)*fs+1:i*fs)=previous;



     else

       x((i-1)*fs+1:i*fs)=previous;


     end



 end

x(i*fs+1)=x(i*fs);


plot(t,x,'Linewidth',3);
xlim([0,T]);
ylim([-10 10]);


 counter=0;


previous=5;
for i=1:fs:length(x)-1
   counter=counter+1;
     if(x(i)==previous)
       result(counter)=0;
     else
       result(counter)=1;
        previous=-previous;
     end
end

  disp('result')
