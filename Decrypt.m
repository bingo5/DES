function [sys,x0,str,ts,simStateCompliance] = Decrypt(t,x,u,flag)  %���ܹ���
switch flag,
  case 0,
    [sys,x0,str,ts,simStateCompliance]=mdlInitializeSizes;
  case 3,
    sys = Des(u');
  case {1,2,4,9},
    sys=[];
  otherwise
    DAStudio.error('Simulink:blocks:unhandledFlag', num2str(flag));

end

% end sfuntmpl

function [sys,x0,str,ts,simStateCompliance]=mdlInitializeSizes
sizes = simsizes;

sizes.NumContStates  = 0;
sizes.NumDiscStates  = 0;
sizes.NumOutputs     = 64;   %���64λ����
sizes.NumInputs      = 129;  %����64λ���ġ�64λ��Կ��1λģʽλ
sizes.DirFeedthrough = 1;
sizes.NumSampleTimes = 1;   % at least one sample time is needed

sys = simsizes(sizes);
x0  = [];
str = [];
ts  = [0 0];
simStateCompliance = 'UnknownSimState';

% end mdlInitializeSizes
