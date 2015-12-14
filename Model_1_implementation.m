Xtrain  = Train_Data (:,[1 2 3 8]);
Ytrain  = Train_Data (:,9);
Xtest  = Test_Data (:,[1 2 3 8]);
Ytest  = Test_Data (:,9);

Xtest(:,1) = standardizeCols(Xtest(:,1));
Xtrain(:,1) = standardizeCols(Xtrain(:,1));

fitFn = @(X, y, param)logregFit(Xtrain, Ytrain, 'lambda', param,'L2');
predictFn = @logregPredict;
params = linspace(0, 0.1, 10)';
[model, bestParam] = fitCv(params,fitFn, predictFn, @zeroOneLossFn,Xtrain, Ytrain,10);
model_1 = logregFit(Xtrain, Ytrain, 'lambda', bestParam,'L2');
yhat = logregPredict(model_1, Xtrain);
errorRate = mean(yhat ~= Ytrain)
yhat_test = logregPredict(model_1, Xtest);
errorRate_2 = mean(yhat_test ~= Ytest)
