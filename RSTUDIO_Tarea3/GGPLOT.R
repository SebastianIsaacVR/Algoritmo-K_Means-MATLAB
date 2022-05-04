#DatosDiagrama <- cbind(SETOSA$sepal_length,Versicolor$sepal_length,Virginica$sepal_length)
#colnames(DatosDiagrama)<- c("Setosa","Versicolor","Virginica")

# load ggplot2
  library(ggplot2)
  library(hrbrthemes)
  library(readr)
#Crear DATA FRAME 
  df_iris <- data.frame(IRIS_DATA$sepal_length,IRIS_DATA$sepal_width,IRIS_DATA$petal_length,IRIS_DATA$petal_width,IRIS_DATA$clase)
  colnames(df_iris)<- c("sepal_length","sepal_width","petal_length","petal_width","clase")
#Graficaca  de df_iris   
  # mtcars dataset is natively available in R # head(mtcars
  # A basic scatterplot with color depending on Species
  ggplot(df_iris, aes(x=petal_length, y=petal_width, color=clase)) + 
  geom_point(size=6) +
  theme_ipsum()

#Crear Data Frame de los resultados del clustering
  file = "/Users/macbook/Mineria-Datos-Labs/RSTUDIO_Tarea3/AsignacionCluster.csv"
  Clusters <- read.csv(file)
  colnames(Clusters) <-  c("sepal_length","sepal_width","petal_length","petal_width","clase_num","clase","prediccion_num","prediccion")
  df_cluster  <- data.frame(Clusters$sepal_length,Clusters$sepal_width,Clusters$petal_length,Clusters$petal_width,Clusters$clase_num,Clusters$clase,Clusters$prediccion_num,Clusters$prediccion)
  colnames(df_cluster) <-  c("sepal_length","sepal_width","petal_length","petal_width","clase_num","clase","prediccion_num","prediccion")
  
  ggplot(df_cluster, aes(x=petal_length, y=petal_width, color=prediccion)) + 
    geom_point(size=6) +
    theme_ipsum()
  
  
  
  
  
  
  
  