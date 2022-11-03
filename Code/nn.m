clear all;
clc;
p1=xlsread('ip_train_fr');
t1=xlsread('op');
tic
p=p1';
t=t1';
net=newff(minmax(p),[7,3],{'logsig','tansig'},'trainlm');
net.trainparam.show=50;
net.trainparam.lr=0.0001;
net.trainparam.epochs=10000;
net.trainparam.goal=1e-5;
% maximum validation failiures
net.trainparam.max_fail=5;
%Factor to use for memory / speed trade off.
net.trainparam.mem_reduc=1;
%minimum performance gradient
net.trainparam.min_grad = 1e-10;
%initial mu
net.trainparam.mu=0.001;
% mu decreases factor 
net.trainparam.mu_dec=0.1;
% mu increase factor 
net.trainparam.mu_inc=10;
% maximun mu 
net.trainparam.mu_max=200;
[net,tr]=train(net,p,t);
toc
%ares = bin_denor_x]s(a','maxmin_out.xls');
%tres=bin_denor_x]s(t','maxmin_out.xls');
%atres=[tres ares]
save net1 net;

%Testing the network for classification
p1=xlsread('input_fr_test_60');
t1=xlsread('output_fr_test_60');
p=p1';
t=t1';
tic
a=sim(net,p);
toc
%[a(1,:)'t(1,:)' a(2,:)' t(2,:)' a(3,:)' t(3,:)']