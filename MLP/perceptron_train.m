function OUT = perceptron_train(MLP)
    dataset = MLP.train;
    peso = MLP.peso;
    taxa = MLP.taxa;
    [linhas,colunas] = size(dataset);
    vetor_teste = zeros(1,colunas-1);
    
    for i = 1:linhas
        resultado_esperado = table2array(dataset(i,10));
        vetor_atual = table2array(dataset(i,1:end-1));
        vetor_comparado = vetor_atual.*peso;
        vetor_sum = sum(vetor_comparado);
        if(vetor_sum>MLP.limiar)
            resultado = 4;
            sinal = 1;
        else
            resultado = 2;
            sinal = -1;
        end
        if(resultado ~= resultado_esperado)            
            peso = peso + taxa*(resultado_esperado-sinal).*vetor_atual;
        end
    end
    MLP.peso = peso;
    OUT = MLP;
end

