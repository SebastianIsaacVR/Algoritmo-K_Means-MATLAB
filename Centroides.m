function [centroides] = Centroides(MatrizDatos)
  
  K=3;
  Num_columnas = size(MatrizDatos,2);
  
  for i= 1:K
    for j=1:Num_columnas
      maximo = max(ceil(MatrizDatos(:,j)));
      minimo = min(ceil(MatrizDatos(:,j)));
      centroides(i,j) = randi([minimo maximo],1,1);
    endfor
  endfor
end