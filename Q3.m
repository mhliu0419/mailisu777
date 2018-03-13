function  OUT  = neuron( Inputo, Inputw )
NET = Inputo * Inputw
OUT=F(NET);
dif(F(NET))=OUT(1-OUT);
end

function F=F(x)
F(x)=1/(1+exp(-x));
end


