clc
clear
close all

inputFunc;

load mydata

wsinput=round(9*rand(10,64)); 
wsoutput=round(9*rand(64,10));

a=1;  
landa=0.9;
rate=0.9; 
v= wsinput.';
h = wsoutput.';


for count=1:20 
     error=0;
    
     for l=1:4      %data 0
       for s=8*l-7*l:8*l

        d=0;
        
        inputlayer=Data0(s,:)*v;
        fHidden= sigmoid(inputlayer,a);
        outputlayer=fHidden*h; 
        fOutput=sigmoid(outputlayer, a);

        for i=1:length(Data0);
            outputdelta(i)=a*fOutput(i)*(1-fOutput(i))*(d-fOutput(i)); 
        end 
        for i=1:size(fHidden,2)
            hiddendeltaw(i,1)=landa*outputdelta(1)*fHidden(i);
            hiddendeltaw(i,2)=landa*outputdelta(2)*fHidden(i);
        end
        for j=1:size(fHidden,2) 
            hiddenlayerdelta(j)=a*fHidden(j)*(1-fHidden(j))*(outputdelta(1)*wsoutput(j,1)+outputdelta(2)*wsoutput(j,2));
        end
        for i=1:size(hiddendeltaw,1)
            wsoutput(i,1)=wsoutput(i,1)+ hiddendeltaw(i,1);
            wsoutput(i,2)=wsoutput(i,2)+ hiddendeltaw(i,2);
        end
        inputdeltaw=landa*(hiddenlayerdelta'*Data0(s,:));
        wsinput=wsinput+inputdeltaw;
        error(1,l)=error(1,l)+power(d-fOutput(1),2)+power(d-fOutput(2),2);
       end
     end
       
      

          
      for l=1:4     %data 1
          for s=8*l-7*l:8*l
        d=1;
        
        inputlayer=Data1(s,:)*v;
        fHidden= sigmoid(inputlayer,a);
        outputlayer=fHidden*h; 
        fOutput=sigmoid(outputlayer, a);

        for i=1:length(Data1);
            outputdelta(i)=a*fOutput(i)*(1-fOutput(i))*(d-fOutput(i)); 
        end 
        for i=1:size(fHidden,2)
            hiddendeltaw(i,1)=landa*outputdelta(1)*fHidden(i);
            hiddendeltaw(i,2)=landa*outputdelta(2)*fHidden(i);
        end
        for j=1:size(fHidden,2) 
            hiddenlayerdelta(j)=a*fHidden(j)*(1-fHidden(j))*(outputdelta(1)*wsoutput(j,1)+outputdelta(2)*wsoutput(j,2));
        end
        for i=1:size(hiddendeltaw,1)
            wsoutput(i,1)=wsoutput(i,1)+ hiddendeltaw(i,1);
            wsoutput(i,2)=wsoutput(i,2)+ hiddendeltaw(i,2);
        end
        inputdeltaw=landa*(hiddenlayerdelta*Data1(s,:));
        wsinput=wsinput+inputdeltaw;
        error(1,l)=error(1,l)+power(d-fOutput(1),2)+power(d-fOutput(2),2);
          end
      end
      
    
      for l=1:4         %data 2
          for s=8*l-7*l:8*l
         
        d=2; 
        inputlayer=Data2(s,:)*v;
        fHidden= sigmoid(inputlayer,a);
        outputlayer=fHidden*h; 
        fOutput=sigmoid(outputlayer, a);

        for i=1:size(fOutput,2)
            outputdelta(i)=a*fOutput(i)*(1-fOutput(i))*(d-fOutput(i)); 
        end 
        for i=1:size(fHidden,2)
            hiddendeltaw(i,1)=landa*outputdelta(1)*fHidden(i);
            hiddendeltaw(i,2)=landa*outputdelta(2)*fHidden(i);
        end
        for j=1:size(fHidden,2) 
            hiddenlayerdelta(j)=a*fHidden(j)*(1-fHidden(j))*(outputdelta(1)*wsoutput(j,1)+outputdelta(2)*wsoutput(j,2));
        end
        for i=1:size(hiddendeltaw,1)
            wsoutput(i,1)=wsoutput(i,1)+ hiddendeltaw(i,1);
            wsoutput(i,2)=wsoutput(i,2)+ hiddendeltaw(i,2);
        end
        inputdeltaw=landa*(hiddenlayerdelta'*Data2(s,:));
        wsinput=wsinput+inputdeltaw;
        error=error+power(d-fOutput(1),2)+power(d-fOutput(2),2);
          end
      end
    
     
     
     
     
      for l=1:4     %data 3
        for s=8*l-7*l:8*l
         
        d=3 ; 
        inputlayer=Data3(s,:)*v;
        fHidden= sigmoid(inputlayer,a);
        outputlayer=fHidden*h; 
        fOutput=sigmoid(outputlayer, a);

       for i=1:size(fOutput,2)
            outputdelta(i)=a*fOutput(i)*(1-fOutput(i))*(d-fOutput(i)); 
        end 
        for i=1:size(fHidden,2)
            hiddendeltaw(i,1)=landa*outputdelta(1)*fHidden(i);
            hiddendeltaw(i,2)=landa*outputdelta(2)*fHidden(i);
        end
        for j=1:size(fHidden,2) 
            hiddenlayerdelta(j)=a*fHidden(j)*(1-fHidden(j))*(outputdelta(1)*wsoutput(j,1)+outputdelta(2)*wsoutput(j,2));
        end
        for i=1:size(hiddendeltaw,1)
            wsoutput(i,1)=wsoutput(i,1)+ hiddendeltaw(i,1);
            wsoutput(i,2)=wsoutput(i,2)+ hiddendeltaw(i,2);
        end
        inputdeltaw=landa*(hiddenlayerdelta'*Data3(s,:));
        wsinput=wsinput+inputdeltaw;
        error=error+power(d-fOutput(1),2)+power(d-fOutput(2),2);
        end
     end
     
     
     
     
      for l=1:4         %data4
        for s=8*l-7*l:8*l
         
        d=4; 
        inputlayer=Data4(s,:)*v;
        fHidden= sigmoid(inputlayer,a);
        outputlayer=fHidden*h; 
        fOutput=sigmoid(outputlayer, a);

        for i=1:size(fOutput,2)
            outputdelta(i)=a*fOutput(i)*(1-fOutput(i))*(d-fOutput(i)); 
        end 
        for i=1:size(fHidden,2)
            hiddendeltaw(i,1)=landa*outputdelta(1)*fHidden(i);
            hiddendeltaw(i,2)=landa*outputdelta(2)*fHidden(i);
        end
        for j=1:size(fHidden,2) 
            hiddenlayerdelta(j)=a*fHidden(j)*(1-fHidden(j))*(outputdelta(1)*wsoutput(j,1)+outputdelta(2)*wsoutput(j,2));
        end
        for i=1:size(hiddendeltaw,1)
            wsoutput(i,1)=wsoutput(i,1)+ hiddendeltaw(i,1);
            wsoutput(i,2)=wsoutput(i,2)+ hiddendeltaw(i,2);
        end
        inputdeltaw=landa*(hiddenlayerdelta'*Data4(s,:));
        wsinput=wsinput+inputdeltaw;
        error=error+power(d-fOutput(1),2)+power(d-fOutput(2),2);
        end
      end
     
     
     
     
       for l=1:4           %data 5
        for s=8*l-7*l:8*l          
          
        d=5; 
        inputlayer=Data5(s,:)*v;
        fHidden= sigmoid(inputlayer,a);
        outputlayer=fHidden*h; 
        fOutput=sigmoid(outputlayer, a);

        for i=1:size(fOutput,2)
            outputdelta(i)=a*fOutput(i)*(1-fOutput(i))*(d-fOutput(i)); 
        end 
        for i=1:size(fHidden,2)
            hiddendeltaw(i,1)=landa*outputdelta(1)*fHidden(i);
            hiddendeltaw(i,2)=landa*outputdelta(2)*fHidden(i);
        end
        for j=1:size(fHidden,2) 
            hiddenlayerdelta(j)=a*fHidden(j)*(1-fHidden(j))*(outputdelta(1)*wsoutput(j,1)+outputdelta(2)*wsoutput(j,2));
        end
        for i=1:size(hiddendeltaw,1)
            wsoutput(i,1)=wsoutput(i,1)+ hiddendeltaw(i,1);
            wsoutput(i,2)=wsoutput(i,2)+ hiddendeltaw(i,2);
        end
        inputdeltaw=landa*(hiddenlayerdelta'*Data5(s,:));
        wsinput=wsinput+inputdeltaw;
        error=error+power(d-fOutput(1),2)+power(d-fOutput(2),2);
         end
        end
     
     
     
     
       for l=1:4            %data 6
          for s=8*l-7*l:8*l
        d=6; 
        inputlayer=Data6(s,:)*v;
        fHidden= sigmoid(inputlayer,a);
        outputlayer=fHidden*h; 
        fOutput=sigmoid(outputlayer, a);

        for i=1:size(fOutput,2)
            outputdelta(i)=a*fOutput(i)*(1-fOutput(i))*(d-fOutput(i)); 
        end 
        for i=1:size(fHidden,2)
            hiddendeltaw(i,1)=landa*outputdelta(1)*fHidden(i);
            hiddendeltaw(i,2)=landa*outputdelta(2)*fHidden(i);
        end
        for j=1:size(fHidden,2) 
            hiddenlayerdelta(j)=a*fHidden(j)*(1-fHidden(j))*(outputdelta(1)*wsoutput(j,1)+outputdelta(2)*wsoutput(j,2));
        end
        for i=1:size(hiddendeltaw,1)
            wsoutput(i,1)=wsoutput(i,1)+ hiddendeltaw(i,1);
            wsoutput(i,2)=wsoutput(i,2)+ hiddendeltaw(i,2);
        end
        inputdeltaw=landa*(hiddenlayerdelta'*Data6(s,:));
        wsinput=wsinput+inputdeltaw;
        error=error+power(d-fOutput(1),2)+power(d-fOutput(2),2);
          end
       end
    
      
      
       for l=1:4  % data 7
          for s=8*l-7*l:8*l 
        d=7; 
        inputlayer=Data7(s,:)*v;
        fHidden= sigmoid(inputlayer,a);
        outputlayer=fHidden*h; 
        fOutput=sigmoid(outputlayer, a);

        for i=1:size(fOutput,2)
            outputdelta(i)=a*fOutput(i)*(1-fOutput(i))*(d-fOutput(i)); 
        end 
        for i=1:size(fHidden,2)
            hiddendeltaw(i,1)=landa*outputdelta(1)*fHidden(i);
            hiddendeltaw(i,2)=landa*outputdelta(2)*fHidden(i);
        end
        for j=1:size(fHidden,2) 
            hiddenlayerdelta(j)=a*fHidden(j)*(1-fHidden(j))*(outputdelta(1)*wsoutput(j,1)+outputdelta(2)*wsoutput(j,2));
        end
        for i=1:size(hiddendeltaw,1)
            wsoutput(i,1)=wsoutput(i,1)+ hiddendeltaw(i,1);
            wsoutput(i,2)=wsoutput(i,2)+ hiddendeltaw(i,2);
        end
        inputdeltaw=landa*(hiddenlayerdelta'*Data7(s,:));
        wsinput=wsinput+inputdeltaw;
        error=error+power(d-fOutput(1),2)+power(d-fOutput(2),2);
          end
       end
    
         
     
      for l=1:4        %data 8
        for s=8*l-7*l:8*l
        d=8; 
        inputlayer=Data8(s,:)*v;
        fHidden= sigmoid(inputlayer,a);
        outputlayer=fHidden*h; 
        fOutput=sigmoid(outputlayer, a);

        for i=1:size(fOutput,2)
            outputdelta(i)=a*fOutput(i)*(1-fOutput(i))*(d-fOutput(i)); 
        end 
        for i=1:size(fHidden,2)
            hiddendeltaw(i,1)=landa*outputdelta(1)*fHidden(i);
            hiddendeltaw(i,2)=landa*outputdelta(2)*fHidden(i);
        end
        for j=1:size(fHidden,2) 
            hiddenlayerdelta(j)=a*fHidden(j)*(1-fHidden(j))*(outputdelta(1)*wsoutput(j,1)+outputdelta(2)*wsoutput(j,2));
        end
        for i=1:size(hiddendeltaw,1)
            wsoutput(i,1)=wsoutput(i,1)+ hiddendeltaw(i,1);
            wsoutput(i,2)=wsoutput(i,2)+ hiddendeltaw(i,2);
        end
        inputdeltaw=landa*(hiddenlayerdelta'*Data8(s,:));
        wsinput=wsinput+inputdeltaw;
        error=error+power(d-fOutput(1),2)+power(d-fOutput(2),2);
         end
       end
     
    
     
    
    
      for l=1:4     % data 9
        for s=8*l-7*l:8*l
        d=9; 
        inputlayer=Data9(s,:)*v;
        fHidden= sigmoid(inputlayer,a);
        outputlayer=fHidden*h; 
        fOutput=sigmoid(outputlayer, a);
        for i=1:size(fOutput,2)
            outputdelta(i)=a*fOutput(i)*(1-fOutput(i))*(d-fOutput(i)); 
        end
        for i=1:size(fHidden,2)
            hiddendeltaw(i,1)=landa*outputdelta(1)*fHidden(i);
            hiddendeltaw(i,2)=landa*outputdelta(2)*fHidden(i);
        end
        for j=1:size(fHidden,2) 
            hiddenlayerdelta(j)=a*fHidden(j)*(1-fHidden(j))*(outputdelta(1)*wsoutput(j,1)+outputdelta(2)*wsoutput(j,2));
        end
        for i=1:size(hiddendeltaw,1)
            wsoutput(i,1)=wsoutput(i,1)+ hiddendeltaw(i,1);
            wsoutput(i,2)=wsoutput(i,2)+ hiddendeltaw(i,2);
        end
        inputdeltaw=landa*(hiddenlayerdelta'*Data9(s,:));
        wsinput=wsinput+inputdeltaw;
        error=error+power(d-fOutput(1),2)+power(d-fOutput(2),2);
        end
    
      end
    
    
    
    trainerror(count)=error;
    if landa>0.1
        landa=landa*rate;
    end
end

inputlayer=Datatest(0,:)*v; 
fHidden= sigmoid(inputlayer,a);
outputlayer=fHidden*h;
fOutput=sigmoid(outputlayer, a);

inputlayer=Datatest(1,:)*v; 
fHidden= sigmoid(inputlayer,a);
outputlayer=fHidden*h a);


inputlayer=Datatest(2,:)*v; 
fHidden= sigmoid(inputlayer,a);
outputlayer=fHidden*h;
fOutput=sigmoid(outputlayer, a);

inputlayer=Datatest(3,:)*v; 
fHidden= sigmoid(inputlayer,a);
outputlayer=fHidden*h;
fOutput=sigmoid(outputlayer, a);

inputlayer=Datatest(4,:)*v; 
fHidden= sigmoid(inputlayer,a);
outputlayer=fHidden*h;
fOutput=sigmoid(outputlayer, a);

inputlayer=Datatest(5,:)*v; 
fHidden= sigmoid(inputlayer,a);
outputlayer=fHidden*h;
fOutput=sigmoid(outputlayer, a);

inputlayer=Datatest(6,:)*v; 
fHidden= sigmoid(inputlayer,a);
outputlayer=fHidden*h;
fOutput=sigmoid(outputlayer, a);

inputlayer=Datatest(7,:)*v; 
fHidden= sigmoid(inputlayer,a);
outputlayer=fHidden*h;
fOutput=sigmoid(outputlayer, a);

inputlayer=Datatest(8,:)*v; 
fHidden= sigmoid(inputlayer,a);
outputlayer=fHidden*h;
fOutput=sigmoid(outputlayer, a);


inputlayer=Datatest(9,:)*v;
fHidden= sigmoid(inputlayer,a);
outputlayer=fHidden*h;
fOutput=sigmoid(outputlayer, a);



plot(trainerror);

