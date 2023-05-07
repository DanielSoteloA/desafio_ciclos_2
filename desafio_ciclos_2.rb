=begin
  Desafío - Flujo, ciclos y Métodos (II)
  Autor: Daniel Sotelo
  archivo: desafio_ciclos_2.rb
  Para [Version][S.O.]:
    ruby 3.2.2 (2023-03-30 revision e51014f9c0) [x64-mingw-ucrt]
    ruby 3.1.2p20 (2022-04-12 revision 4491bb740a) [x86_64-linux]
=end

#Menu
def menu
   #limpia Pantalla si es windows cls sino clear
  if Gem.win_platform?
    #para SO Windows
    system 'cls'
  else
    #para Otros
    system 'clear'
  end

  #valor inicial y final para la iteración ciclos while
  #par e impar
  m = 0
  n = 20
  #multiplos de 9
  o = 9
  
  print "********************************************\n"
  print "*  Desafío - Flujo, ciclos y métodos (II)  *\n"
  print "*                                          *\n"
  print "*   N° pares entre 0 y 20 .........[1]     *\n"
  print "*   N° impares entre 0 y 20 .......[2]     *\n"
  print "*   Multiplos de 9 ................[3]     *\n"
  print "*   Triangulo con (*) .............[4]     *\n"
  print "*                                          *\n"
  print "********************************************\n"
  print "ingresa opción => "

  #opcion ingresada por el usuario
  op = gets.chomp.to_i
  
  if (op==1)
    num_par(m,n)
  elsif (op==2)
    num_impar(m,n)
  elsif (op==3)
    mul_nueve(m,o)
  elsif (op==4)
    triangulo
  else
    puts "¡¡¡Hasta Luego!!!"
  end
end

#Metodo calculo numeros pares entre un valor inicial y final
def num_par(x,y)
  ini=x
  par = []
  while x <= y do
    if x % 2 == 0
      par.push(x)
    end
    x+=1
  end
  print "numeros pares entre #{ini} y #{y} -> #{par}\n"
end

#Metodo calculo numeros impares entre un valor inicial y final
def num_impar(x,y)
  ini=x
  impar = []
  while x <= y do
    if x % 2 != 0
      impar.push(x)
    end
    x+=1
  end
  print "numeros impares entre #{ini} y #{y} -> #{impar}\n"
end

#Metodo calculo multiplos de 9 entre un valor inicial y final
def mul_nueve(x,z)
  ini = x
  while x <= z do
    print "9 x #{x} = #{x*9}\n"
    x+=1
  end
end

#Metodo para construcción triangulo con (*)
def triangulo
  #n° filas triangulo
  filas = 5
  #n° columnas, segun las filas ingresadas
  columnas = (2*filas)-1
  
  for i in(1..filas)
    #cuantos asteriscos hay en el centro de la fila i
    centro = (2*i-1)
    #cuantos espacios a izquierda y derecha hay en la fila i
    borde = (columnas-centro)/2
    #se dibuja espacios + asteriscos + espacios
    puts " " * borde + "*" * centro + " " * borde
  end 
end
  
menu