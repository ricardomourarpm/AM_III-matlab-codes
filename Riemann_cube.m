a=0:1:5;

[X,Y,Z] = meshgrid(a,a,a);
figure(1);
for i=a
    for j=a
        for k=a
            plotcube([1 1 1],[i j k],0,[1 1 1]); % Função necessária plotcube.m
        end
    end
end
plotcube([1 1 1],[3 3 3],.5,[0 0 1]);
figure(2);
plotcube([1 1 1],[3 3 3],.2,[0 0 1]);
text(3.5,3,3,'dx');
text(3,3.5,3,'dy');
text(3,3,3.5,'dz');
clear;
