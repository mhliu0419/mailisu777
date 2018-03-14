% This is a funtion for Q5 and generates the neural network with random weights.

function WeightMat = InitialNeuralNet(Inputw) % 'Inputw' is a vector of doubles.
numLayer = length(Inputw); 
WeightMat = cell(1, numLayer); % 'WeightMat' is a cell array of weight matrices
  for i = 1:numLayer
    WeightMat{i} = rand(Inputw(i), Inputw(i+1)) .* 2 - 1; % Assign random value to weights in Weights Matrix
  end
end