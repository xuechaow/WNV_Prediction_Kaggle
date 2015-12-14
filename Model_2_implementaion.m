% K-means implementation of Final_Project.

[indice_train,centers] = kmeans(Train_DataCopy(:,[5 6]),20);

P_presence = zeros(2,20);

[row col] = size(Train_DataCopy);

for i = 1 : row
    P_presence(1,indice_train(i)) = P_presence(1,indice_train(i)) + Train_DataCopy(i,9);
     P_presence(2,indice_train(i)) = P_presence(2,indice_train(i)) + 1;
end

P_presence(3,:) = P_presence(1,:)./P_presence(2,:);

stem(P_presence(3,:));
xlabel('Cluster Index');
ylabel('Probability');
title('Distribution of Cluster Presence Probability');