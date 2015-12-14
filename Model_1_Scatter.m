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

Xaxis = Xtest(Abse,1);
Yaxis = Xtest(Abse,3);

scatter(Xaxis,Yaxis,'go');
hold on;

Xaxis_P = Xtest(Pres,1);
Yaxis_P = Xtest(Pres,3);

scatter(Xaxis_P,Yaxis_P,'rx');
hold on;
