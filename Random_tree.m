nitr = 3;
nntree = 500;
errs_test = zeros(nitr,nntree);
errs_train = zeros(nitr,nntree);
for ntree = 50:50:nntree
	ntree
	for itr = 1:nitr
        itr
		forest = fitForest(Training_X_location_only,Training_Y,'randomFeatures',3,'bagSize',1/3,'ntrees',ntree);
		yhat_test{itr,ntree/50} = predictForest(forest,Test_X_location_only);
		yhat_train = predictForest(forest,Training_X_location_only);
		errs_train(itr,ntree/50) = mean(Training_Y ~= yhat_train);
	end
end
disp('finished');