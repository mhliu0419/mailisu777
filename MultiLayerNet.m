%This is a function for Q4 to build up a Multilayer Network

function  [OUT, NET] = MultiLayerNet( Inputo, Inputw )  % first get the input list and weight list
NET = cell(1,length(Inputw) + 1);
NET{1} = Inputo(:)';                                    %initial set net
numLayers = length(Inputw);                        % get the number of layers
for i = 1:numLayers                            
    NET{i+1} = 1./(1+exp(-(NET{i}(:)' * Inputw{i} )));  % in each layer we get the sum of NET
end
OUT = NET{end};                                      % we get the output
end