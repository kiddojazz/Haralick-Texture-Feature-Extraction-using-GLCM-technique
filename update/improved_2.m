x = input2;
t = target2;

net = newff(minmax(x),[16,1],{'logsig','purelin','trainscg'});

net.trainparam.epochs = 1000;
net.trainparam.goal = 1e-25;
net.trainparam.lr = 0.01;
net = train(net, x, t);
y = net(testsample);