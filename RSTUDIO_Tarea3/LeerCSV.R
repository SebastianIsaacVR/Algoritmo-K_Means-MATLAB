#LEER archivoNombre.CSV
#importar paquete
  library(readr)
#leer archivo ArchivoNombre.CSV 
  
  file_path1 = "/Users/macbook/Mineria-Datos-Labs/RSTUDIO_Tarea3/IRIS-DATABASE3.csv"
  IRIS_DATA <- read.csv(file_path1)
  #file_path2 = "/Users/macbook/Mineria-Datos-Labs/RSTUDIO_Tarea3/Setosa.csv"
  #SETOSA <- read.csv(file_path2)
  #file_path3 = "/Users/macbook/Mineria-Datos-Labs/RSTUDIO_Tarea3/Versicolor.csv"
  #VERSICOLOR <- read.csv(file_path3)
  #file_path4 = "/Users/macbook/Mineria-Datos-Labs/RSTUDIO_Tarea3/Virginica.csv"
  #VIRGINICA <- read.csv(file_path4)
  
  #file_path5 = "/Users/macbook/Mineria-Datos-Labs/RSTUDIO_Tarea3/iris.csv"
  #IRIS_CLASS <- read.csv(file_path5)
  #colnames(IRIS_CLASS) <- c("sepal_length","sepal_widht","petal_length","petal_width","clase")
  
#Agregar Nombre a las columnas de cada matriz y crear a una matriz a partir de otras
  #IRIS <- cbind(IRIS_DATA$sepal_length,IRIS_DATA$sepal_width,IRIS_DATA$petal_length, IRIS_DATA$petal_width )
  #colnames(IRIS)<- c("sepal_length","sepal_widht","petal_length","petal_width")
#Agregar Nombre a las columnas de cada matriz
  #colnames(SETOSA)<- c("sepal_length","sepal_widht","petal_length","petal_width")
  #colnames(VERSICOLOR)<- c("sepal_length","sepal_widht","petal_length","petal_width")
  #colnames(VIRGINICA)<- c("sepal_length","sepal_widht","petal_length","petal_width")
  
  
  
  
  
  
  
  
  