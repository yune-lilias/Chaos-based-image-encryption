filename = 'pyramidsg.png';
tic
image = imread(filename);
[m, n, ~] = size(image); 
 H = init_sha(image);
 toc
 tic
 idx = init_chaos(size(image),H);
 toc
 tic
 figure;
 imagesc2(image)
 image_new = reshape(image(idx),size(image));
 figure;
 imagesc2(image_new)
 
 
 figure;
 recover = decode(image_new,idx);
 imagesc2(uint8(recover))
 
 disp(sum(sum(recover ~= image)))
 toc