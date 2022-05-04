%Separar registros por asignación de cluster predecido
  prediccion_setosa = CentroidesAsignados2(1:50,:);
  prediccion_versicolor = CentroidesAsignados2(51:100,:);
  prediccion_virginica = CentroidesAsignados2(101:150,:);
 
%Econtrar TP,FN,FP,TN
  #Setosa
    Verdaderos_positivos_setosa = sum(prediccion_setosa(:)==2);
    Falsos_positivos_setosa = sum(prediccion_versicolor(:)==2) + sum(prediccion_virginica(:)==2);
    Falsos_negativos_setosa = sum(prediccion_setosa(:)==1) + sum(prediccion_setosa(:)==3);
    
  #Versicolor
    Verdaderos_positivos_versicolor = sum(prediccion_versicolor(:)==1);
    Falsos_positivos_versicolor = sum(prediccion_setosa(:)==1) + sum(prediccion_virginica(:)==1);
    Falsos_negativos_versicolor = sum(prediccion_versicolor(:)==2) + sum(prediccion_versicolor(:)==3);
    
  #Virginica
    Verdaderos_positivos_virginica = sum(prediccion_virginica(:)==3); 
    Falsos_positivos_virginica = sum(prediccion_setosa(:)==3) + sum(prediccion_versicolor(:)==3);
    Falsos_negativos_virginica = sum(prediccion_virginica(:)==1) + sum(prediccion_virginica(:)==2);
    
%"True Negative"
  #Setosa
    Verdaderos_negativos_setosa = ( sum(prediccion_versicolor(:)==3) + sum(prediccion_versicolor(:)==1) + sum(prediccion_virginica(:)==1) + sum(prediccion_virginica(:)==3) );           
  #Versicolor
    Verdaderos_negativos_versicolor = ( sum(prediccion_setosa(:)==2) + sum(prediccion_setosa(:)==3) + sum(prediccion_virginica(:)==2) + sum(prediccion_virginica(:)==3) ); 
  #Virginica
    Verdaderos_negativos_virginica = ( sum(prediccion_setosa(:)==1) + sum(prediccion_setosa(:)==2) + sum(prediccion_versicolor(:)==1) + sum(prediccion_versicolor(:)==2) ); 
    
%Calcular aciertos generales
  Aciertos_Generales = Verdaderos_positivos_setosa + Verdaderos_positivos_versicolor + Verdaderos_positivos_virginica;
  
%Metricas:
  registros_totales = size(IRIS2,1);
  
  #Setosa
    Precision_setosa = (Verdaderos_positivos_setosa)/(Verdaderos_positivos_setosa+Falsos_positivos_setosa);
    Recall_setosa = (Verdaderos_positivos_setosa)/(Verdaderos_positivos_setosa+Falsos_negativos_setosa);
    Accurency_setosa =(Verdaderos_positivos_setosa+Verdaderos_negativos_setosa)/registros_totales;
    
  #Versicolor
    Precision_versicolor = (Verdaderos_positivos_versicolor)/(Verdaderos_positivos_versicolor+Falsos_positivos_versicolor);
    Recall_versicolor = (Verdaderos_positivos_versicolor)/(Verdaderos_positivos_versicolor+Falsos_negativos_versicolor);
    Accurency_versicolor = (Verdaderos_positivos_versicolor+Verdaderos_negativos_versicolor)/registros_totales;
    
  #Virginica
    Precision_virginica = (Verdaderos_positivos_virginica)/(Verdaderos_positivos_virginica+Falsos_positivos_virginica);
    Recall_virginica = (Verdaderos_positivos_virginica)/(Verdaderos_positivos_virginica+Falsos_negativos_virginica);
    Accurency_virginica = (Verdaderos_positivos_virginica+Verdaderos_negativos_virginica)/registros_totales;
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  