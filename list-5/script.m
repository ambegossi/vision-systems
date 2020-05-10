% Exercício 1 -----------------------------------------------------
% a)
img = imread('I1_r1.bmp')
img = double(img)

% Takes only a small noisy part of the image
subimg = img(1:50,1:50);

h = myhistogram(subimg, 'pdf-i1r1.png');

% b)
img = imread('I1_r2.bmp')
img = double(img)

% Takes only a small noisy part of the image
subimg = img(1:20,1:20);

h = myhistogram(subimg, 'pdf-i1r2.png');

% c)
img = imread('I2_r1.bmp')
img = double(img)

% Takes only a small noisy part of the image
subimg = img(1:20,1:20);

h = myhistogram(subimg, 'pdf-i2r1.png');

% d)
img = imread('I2_r2.bmp')
img = double(img)

% Takes only a small noisy part of the image
subimg = img(1:50,1:50);

h = myhistogram(subimg, 'pdf-i2r2.png');

% Exercício 2 -----------------------------------------------------
img = imread('I2_r1.bmp')
img = double(img)

mask = 5;
    
res = av_filter(img, mask);

imwrite(uint8(res),'ex2.bmp');

% O ruído diminuiu, porém, a imagem ficou com efeito de blur.
% Ruído reduzido em consequência do borramento. 

% Exercício 3 -----------------------------------------------------
img = imread('I2_r1.bmp');
img = double(img);

% Filtro de 5x5
mask = 5;

res = geo_filter(img, mask);

imwrite(uint8(res),'ex3.bmp');

% A suavização é comparável ao filtro de média aritmética, 
% mas o borramento ficou um pouco menor.

% Exercício 4 -----------------------------------------------------
img = imread('I2_r1.bmp');
img = double(img);

% Filtro de 5x5
mask = 5;

res = harm_filter(img, mask);

imwrite(uint8(res),'ex4.bmp');


% Tem um bom desempenho para o ruído gaussiano.
% Funciona bem para o ruído de sal, mas não para o de pimenta.
