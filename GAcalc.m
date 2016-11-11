function [ GA, left ] = GAcalc( file )

%This block extracts the time series data in the form of 1-D vectors for processing
TimeS = importdata(file);
rtime= TimeS(:,1);
right = TimeS (:, 4);
left = TimeS(:,5);
unfiltered=left;
ltime=rtime;

%computation of mean and standard deivation
RSdev=std(right);
RM=mean(right);
LSdev=std(left);
LM=mean(left);

%filtering: removes all values greater or less than 3 times the standard deviation minus the mean 
for w = 1:length(right);
    try
        if right(w)>(RSdev*3)+RM || right(w)<(RSdev*3)+RM 
             
            right(w)=[];
            rtime(w)=[];
        end
    catch
        break;
    end
end

for w = 1:length(left);
    try
        if left(w)>(LSdev*3)+LM || left(w)<(LSdev*3)+LM
                 
            left(w)=[];
            ltime(w)=[];
        end
    catch
        break;
    end
end
%recomputation of mean and standard deivation
RSdev=std(right);
RM=mean(right);
LSdev=std(left);
LM=mean(left);

%This block determines which mean is larger, left or right
if LM> RM
  long=RM;
  short=LM;
else
    long=LM;
    short=RM;
end

%Calculation of gait asymmetry 
GA = 100*log(short/long)

End
