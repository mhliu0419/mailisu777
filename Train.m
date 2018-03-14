function [net,tr] = train(net,X,T,W,Ai,EW)

% net: Network
% X: inputs
% T: targets (default = zeros)
% W: weights
% Ai Initial layer delay conditions (default = zeros)
% EW: Error weights
% net: Newly trained network
% tr: Training record 

k=length(W);
i = 1;   %initial value for while loop
j = 1;   %initial value for while loop
while i< length(X)+1

    O = X{i};

    OUT = cell(1, k);


    while j< k + 1     % forward pass for each layer

        NET =  O * W{j}; 

        O = F(NET);   
        
        OUT{1,j} = O;

    end
    
   

    output = OUT{k};  % OUTPUT layer

    error = abs(output - T{i});  

    delta = output * (1 - output) * error;

    wdelta = eta *delta* OUT{k-1};

    w{k} = w{k} + wdelta;

    

  

    for j=k-1:-1:2  % for hidden layers

        delta = (delta * w{j+1}) * OUT{j} * (1 - OUT{j});

        wdelta = eta * OUT{j-1} * delta;

        w{j} = w{j} + wdelta;
        
    end
    
    
end
end