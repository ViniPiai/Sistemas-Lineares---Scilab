for i=1:10
    f1 = (2*i+4)*1.6
    f2 = f1/1.4 
    f3 = f2 + 10
    f4 = f3/2
    
    A = [-1 0 0 1;
         0 1 1 0;
         1 1 1 1;
         f1*1 f2*1 f3*1 f4*1]
         
    b = [150;200;500;7945]
    Q = A\b
    total = double(Q(1,1) + Q(2,1) + Q(3,1) + Q(4,1))
    if Q(:,1) > 0 & total ~= 500 then
        printf("A interação correspondente foi %g",i)
        printf("\n\nA quantidade de cada fonte vendida é:")
        printf("\nFonte 1: %g",Q(1,1))
        printf("\nFonte 2: %g", Q(2,1))
        printf("\nFonte 3: %g", Q(3,1))
        printf("\nFonte 4: %g", Q(4,1))
        printf("\nO total de fontes vendidas é: %g",total)
        printf("\n\nO preço de cada fonte em Reais(R$) é:")
        printf("\nFonte 1: %f",f1)
        printf("\nFonte 2: %f",f2)
        printf("\nFonte 3: %f",f3)
        printf("\nFonte 4: %f",f4)
        printf("\n\nPelo Método de Gauss-Jordan:")
        disp(rref([A, b]))
    end
end

