function [VectorCentroides,Iris_] = AsignacionCentroides2(MatrizDistancias,Iris)
  Iris_ = Iris;
  for i=1:150
    registro = MatrizDistancias(i,:);
    ValorMinimo = min(registro);
    IndexValorMinimo = ObtenerIndexValorMinimoVector(registro,ValorMinimo);
    VectorCentroides(i,1)=IndexValorMinimo;
    Iris_(i,5)= IndexValorMinimo;
    
  endfor
  
endfunction