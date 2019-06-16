function OUT = MLPinit(taxa_aprend,camada,dataset)
    dataset.sample_n = [];
    [~,colunas] = size(dataset);
    OUT.peso = -1 + (1+1).*rand(colunas-1,1);
    OUT.limiar = 3;
    OUT.taxa = taxa_aprend;
    OUT.camada = camada;
    OUT.train = dataset(1:300,1:end);
    OUT.test = dataset(301:end,1:end);   
end