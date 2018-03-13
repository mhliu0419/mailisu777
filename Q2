function mnist

load mnist_all.mat   %To input data set

T = zeros(10,784);  %Set up matrix T as 10 by 784 matrix with all 0 components

%To make each row of matrix T include corresponding mean values of train set 0 to 9

i = 1;  %Set initial value for while loop

h_wait = waitbar(0,'Please  wait...');  %Add a waitbar to estimate time

tic %start timer

while i < 11                                % the while loop will continue until i <= 10
    get_file = sprintf('%s%d','train',i-1); % we separat train"i-1" into two part, word"train"part, and number"i-1" part
    get_train = eval(get_file);             % combine the word and number part together get train(i-1)
    T(i,:) = mean(get_train);               % let the ith row of T be the average of train(i-1)
    digit = T(i,:);                         % get value of ith row of T
	digitImage = reshape(digit,28,28);  % get image of ith row of T
    subplot(2,5,i);                         % plot 2 rows and 5 columns and put the image of ith row into the right place
	image(rot90(flipud(digitImage),-1)),colormap(gray(256)), axis square tight off;    
    i = i+1;                             
    waitbar(i/10, h_wait);
end

toc  %stop timer

close(h_wait);
    
