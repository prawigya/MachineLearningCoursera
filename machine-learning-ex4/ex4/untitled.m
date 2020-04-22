load('ex4data1.mat');
Y = zeros(size(y,1), 10);
for i=1:size(y,1)
    Y(i,y(i))=1;
end
