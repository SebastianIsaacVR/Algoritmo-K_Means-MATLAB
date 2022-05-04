function [I] = ObtenerIndexValorMinimoVector(Vector,Valor)
  
  for i=1:3
    if (Vector(1,i) == Valor)
      I = i;
      break  
    endif
    %break;
  endfor
endfunction