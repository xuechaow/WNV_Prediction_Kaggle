[row col] = size(Ytest);
Pres = [];
Abse = [];

for i = 1:row
    if Ytest(i) == 0
        Abse = [Abse i];
    else
        Pres = [Pres i];
    end
end

Xaxis = Test_Data(Abse,2);
Yaxis = Test_Data(Abse,8);

scatter(Xaxis,Yaxis,'go');
hold on;

Xaxis_P = Test_Data(Pres,2);
Yaxis_P = Test_Data(Pres,8);

scatter(Xaxis_P,Yaxis_P,'rx');
hold on;

xlabel('Cluster Index');
ylabel('Probability');
title('Distribution of Cluster Presence Probability');
