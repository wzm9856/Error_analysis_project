conn = sqlite('homework.db');
data = fetch(conn,'SELECT * FROM teachers');
id=double(cell2mat(data(:,1)));
depId=double(cell2mat(data(:,2)));
paper=double(cell2mat(data(:,4)));
H=double(cell2mat(data(:,5)));
journal=double(cell2mat(data(:,6)));
confer=double(cell2mat(data(:,7)));
scie=double(cell2mat(data(:,8)));
ei=double(cell2mat(data(:,9)));
sciCite=double(cell2mat(data(:,10)));
highCite=double(cell2mat(data(:,11)));
en=double(cell2mat(data(:,12)));
cn=double(cell2mat(data(:,13)));
workAge=double(cell2mat(data(:,14)));
y2018=double(cell2mat(data(:,15)));
% load('matlab.mat');
a_cn=cn./workAge;
a_en=en./workAge;
a_confer=confer./workAge;
a_ei=ei./workAge;
a_journal=journal./workAge;
a_paper=paper./workAge;
a_sciCite=sciCite./workAge;
a_scie=scie./workAge;
% load('matlab.mat');

n=size(id,1);
x=[ones(n,1) a_journal a_confer a_scie a_ei a_en a_sciCite highCite workAge H];
y=y2018;
[S,U,Q,F,b]=calculate(x,y);
