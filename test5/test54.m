function test54
%% 4.��дһ��ͼ����ǿ���ۺϳ��򣺶�һ�����Ҷ�ͼ��'pout.tif'������ǿ����,
%       1.���ӽ�������   
%       2.��ֵ�˲�
%       3.ͼ������
%       4.���ӶԱȶ�
%       5.ֱ��ͼ���⻯

%% ��ʼ��
clc;        % ��������
clf;        % ���ͼ�δ���
clear       % ���������

% ����ͼ��
I=imread('pout.tif');
subimage(I);
title('ԭʼͼ��');

%% 1.���ӽ�������
I1=imnoise(I,'salt & pepper',0.02);
subimage(I1)
title('1.���ӽ���������');

%% 2.��ֵ�˲�
% ��9x9��ģ��ԻҶ�ͼ��I1������ֵ�˲���ͼ���Ե��0��ȱʡΪ3x3
I2=medfilt2(I1,[9 9]);
subimage(I2)
title('2.��1������ֵ�˲���');

%% 3.ͼ������
I3=imadjust(I,[0.3 0.7],[],0.3);
subimage(I3)
title('3.ͼ��������');

%% 4.���ӶԱȶ�
% ����Ԥ�����˲���
H=fspecial('unsharp',0.3);
% ��ģ���Աȶ���ǿ�˲���H��ͼ��I3�������˲�������������ת��
I4=uint8(filter2(H,I));
subimage(I4)
title('4.���ӶԱȶ�');

%% 5.ֱ��ͼ���⻯
I5=histeq(I);
subimage(I5)
title('5.ֱ��ͼ���⻯');