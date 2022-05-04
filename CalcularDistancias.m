function [MatrizDistancias] = CalcularDistancias(MatrizDatos,MatrizCentroides)
  
  MatrizDistancias = zeros(150,3);
  Num_registros = size(MatrizDatos,1);
  K = size(MatrizCentroides,1);
  
  for i=1:Num_registros
    registro = MatrizDatos(i,:);
    for j=1:K
      
      VectorDiferencia = (registro-MatrizCentroides(j,:));
      DiferenciaCuadrada = VectorDiferencia*VectorDiferencia';
      MatrizDistancias(i,j) = DiferenciaCuadrada;
   
    endfor
  endfor
  
end