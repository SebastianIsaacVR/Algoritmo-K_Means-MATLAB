function [MatrizCentroides] = RecalcularCentroides(MatrizData)
 
 MatrizCentroides = zeros(3,4);
 K=3;
 
 for i=1:K
   
   Map = MatrizData(:,5)==i;
   MatrizClase = MatrizData((Map),:);
   MatrizClase = MatrizClase(:,1:4);
   VectorMedias = mean(MatrizClase);
   
   MatrizCentroides(i,:) = VectorMedias;

 endfor
end

