function [acc,FMeasure,F1,precision,recall] = Fmeasure(label,idx)
Row=length(label);
ss=0;sd=0;ds=0;dd=0;
for i=1:Row-1
    for j=i+1:Row
        if idx(i)==idx(j) && label(i)==label(j)
            ss=ss+1;%tp
        elseif idx(i)==idx(j) && label(i)~=label(j)
            sd=sd+1;%FP
        elseif idx(i)~=idx(j) && label(i)==label(j)
            ds=ds+1;%FN
        else
            dd=dd+1;%TN
        end
    end
end
trn=ss+sd+ds+dd;
pr=ss/(ss+sd)+ss/(ss+ds);
RS=(ss+dd)/trn;
% Jaccard=ss/(ss+sd+ds);
precision=ss/(ss+sd);
recall=ss/(ss+ds);
FMeasure=sqrt((ss^2)/((ss+sd)*(ss+ds)));
F1=2*(ss/(ss+sd))*(ss/(ss+ds))/pr;
acc=(ss+dd)/trn;
end



