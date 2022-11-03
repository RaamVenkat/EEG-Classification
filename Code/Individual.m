y=xlsread('C:\Users\admin\Desktop\kiru t1.xlsx');
dim=size(y);
frq=256;
for i = 1:8
    x_a = dim(1);
    x= [0:1:(x_a-1)]/frq;
    x=x';
    figure;
    plot(x,y(:,i));
%%


    %%in sec
    rough=4;
    blank=10;
    voice=2;
    clr=3;
    total=rough+blank+voice+clr;
    
    x_a=rough*256;
    y_r=y(1:(x_a),i);
    x= [0:1:(x_a-1)]/frq;
    x_1=x';
    figure;
    plot(x_1,y_r);
    %%
    %%blank screen
    x_b=blank*256;
    x= [x_a:1:(x_b+x_a)]/frq;
    x_2=x';
    y_b=y(((x_a):(x_b+x_a)),i);

    figure;
    plot(x_2,y_b);

    % % voice 
    x_c=voice*256;
    x= [(x_a+x_b):1:(x_c+x_b+x_a)]/frq;
    x_3=x';
    y_c=y(((x_b+x_a):x_c+x_b+x_a),i);

    figure;
    plot(x_3,y_c);

    % % color 
    x_d=clr*256;
    x= [(x_a+x_b+x_c):1:(x_a+x_b+x_c+x_d)]/frq;
    x_4=x';
    y_d=y((x_a+x_b+x_c:x_c+x_b+x_a+x_d),i);

    figure;
    plot(x_4,y_d);
end
% sec = x_a/frq;
% disp(sec)
% pro_sec=110;
% act_sec = pro_sec*frq;
% %y(28160,:) = []
% ext_y=y(act_sec,:)
% time = 105; % sec


% y=fft(x); 
% PS=abs(y).^2;
% N=length(x); 
% fs=256;
% freq=(1:N/2)*fs/N;
% plot(freq,PS);
