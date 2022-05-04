%Matriz de Variables SIN (Id column, Class Column):
  IRIS = Casos(:,2:5);
%Obtener 'Centroides':
  MatrizCentroides = Centroides(IRIS);
%Calcular distancias "De cada punto a cada centroide":
  MatrizDistancias = CalcularDistancias(IRIS,MatrizCentroides);
%Asignación de centroides a cada registro:
  [CentroidesAsignados,IRIS2] = AsignacionCentroides2(MatrizDistancias,IRIS);

%--------------------------------:
  Continuar = 1;
  Contador = 0;
  while Continuar == 1
  
    %Recalcular Centroides:
      MatrizCentroides = RecalcularCentroides(IRIS2);
      
    %Obtener Nuevas Distancias:
      MatrizDistancias = CalcularDistancias(IRIS,MatrizCentroides);
      
    %Asignación de centroides a cada registro:
      CentroidesAsignados2 = CentroidesAsignados;
      [CentroidesAsignados,IRIS2] = AsignacionCentroides2(MatrizDistancias,IRIS);
      
    %Comparar los a Asignación anterior de centroides con la nueva
      Comparacion = sum(CentroidesAsignados == CentroidesAsignados2);
      
    %Modificar variable "Continuar" 
      Cant_iris_filas = size(IRIS,1);  
      if (Comparacion == Cant_iris_filas)
        Continuar = 0;
      endif
      
    %Conocer número de ciclos realizados
      Contador = Contador +1;
      
  endwhile
  

  

  
  
  


















 
  
 
 
 
 
 
 
 
 
 
 
  

  