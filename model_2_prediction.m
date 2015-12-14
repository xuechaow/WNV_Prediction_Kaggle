[row col] = size(Test_Data);
[cr,cc] = size(centers);

smaller = 1000;
thresh = 0.03;

for i = 1: row
    for j = 1:cr
        temp = norm(Test_Data(i,[5 6])-centers(j,:),2);
        if temp < smaller
            smaller = temp;
            smaller_ind= j;
        end
    end
    yhat_test(i) = (P_presence(3,j)>thresh);
end


errorRate_3 = mean(yhat_test ~= Ytest)
    