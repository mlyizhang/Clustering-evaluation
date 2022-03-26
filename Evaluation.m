% output ARI, NMI, Fmeasure, Accuracy
function  [NMI,ARI]  = Evaluation(label,idx)
NMI = nmi( label, idx );
 [AR,RI,MI,HI]=RandIndex(label,idx);
[acc,FMeasure,F1,Jaccard] = Fmeasure(label,idx);
% [f_measure,gmean]= Fm(label,idx);

ARI=AR;
fprintf('聚类结果评价： \n');
fprintf('NMI指标：%5.4f   \n',NMI);
 fprintf('ARI指标：%5.4f   \n',AR);
fprintf('RI指标：%5.4f   \n',RI);
fprintf('Jaccard指标：%5.4f   \n',Jaccard);
fprintf('Fowlkes-Mallows scores(FMI)指标：%5.4f   \n',FMeasure);
fprintf('F1指标：%5.4f   \n',F1);
% fprintf('FM指标：%5.4f   \n',f_measure);
% fprintf('FM指标：%5.4f   \n',gmean);
fprintf('acc指标：%5.4f   \n',acc);
end