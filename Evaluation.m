% output ARI, NMI, Fmeasure, Accuracy
function  [NMI,ARI]  = Evaluation(label,idx)
NMI = nmi( label, idx );
 [AR,RI,MI,HI]=RandIndex(label,idx);
[acc,FMeasure,F1,Jaccard] = Fmeasure(label,idx);
% [f_measure,gmean]= Fm(label,idx);

ARI=AR;
fprintf('���������ۣ� \n');
fprintf('NMIָ�꣺%5.4f   \n',NMI);
 fprintf('ARIָ�꣺%5.4f   \n',AR);
fprintf('RIָ�꣺%5.4f   \n',RI);
fprintf('Jaccardָ�꣺%5.4f   \n',Jaccard);
fprintf('Fowlkes-Mallows scores(FMI)ָ�꣺%5.4f   \n',FMeasure);
fprintf('F1ָ�꣺%5.4f   \n',F1);
% fprintf('FMָ�꣺%5.4f   \n',f_measure);
% fprintf('FMָ�꣺%5.4f   \n',gmean);
fprintf('accָ�꣺%5.4f   \n',acc);
end