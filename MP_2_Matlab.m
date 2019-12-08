x1 = input ('Enter a value for x1: ');
y1 = input ('Enter a value for y1: ');
x2 = input ('Enter a value for x2: ');
y2 = input ('Enter a value for y2: ');
x3 = input ('Enter a value for x3: ');
y3 = input ('Enter a value for y3: ');

D = (((x2.^2)-(x1.^2)).*(y3-y1)+((y2.^2)-(y1.^2)).*(y3-y1)+((x1.^2)-(x3.^2)).*(y2-y1)+((y1.^2)-(y3.^2)).*(y2-y1)) / ((y3-y1).*(x1-x2)-(x1-x3).*(y2-y1));
E = (((x1.^2)-(x3.^2)).*(x1-x2)+((y1.^2)-(y3.^2)).*(x1-x2)+((x2.^2)-(x1.^2)).*(x1-x3)+((y2.^2)-(y1.^2)).*(x1-x3)) / ((x1-x2).*(y3-y1)-(y2-y1).*(x1-x3));
F = - (x1.^2) - (y1.^2) - (D).*(x1) - (E).*(y1);

h = D ./ -2;
k = E ./ -2;

v = [D,E,F];
disp('Vector [D,E,F]: ')
disp(v)

c = [h,k];
disp('Center: ')
disp(c)

r = sqrt((h .* h) + (k .* k) - (F));
disp('Radius: ')
disp(r)