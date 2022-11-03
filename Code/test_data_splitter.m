%h= xlsread('rough_code.xlsx');
clear all;
clc;
h= xlsread('ip_train_fr.xlsx');%100%
i=xlsread('op.xlsx');
columnIndicesToDelete = [1 2 4 6 8 9 12 14 15 17 19 20 22 23 24];
h(columnIndicesToDelete,:)=[];
i(columnIndicesToDelete,:)=[];
xlswrite('input_fr_test_40.xlsx',h);%60
xlswrite('output_fr_test_40.xlsx',i);
fprintf('Execution over')