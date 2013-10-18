# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"
# ------------------------- DEFINICION DE LA CLASE FRACCION -------------------------------------------
class Fraccion
  
        attr_accessor :numerador,:denominador #Setter y Getter de las variables numerador y denominador
  
	
	
	def minimizar(a,b) 		#definimos minimizar y lo que haces es reducir las fracciones
                mcd = gcd(a,b)
                c = Fraccion.new(1,1)
                c.numerador = a/mcd
                c.denominador = b/mcd
                return c
        end
	
	
	#definimos la funcion initialize para colocar los valores iniciales en numerador y denominador
	def initialize(numerador,denominador)
                @numerador=numerador
                if(denominador==0)		#si el denominador es 0 lo ponemos a 1
                        @denominador=1
                else
                        @denominador=denominador
                end
        end
                
        def to_s
                c=Fraccion.new(numerador, denominador)
                c=minimizar(c.numerador, c.denominador)
                "#{c.numerador} / #{c.denominador}"
        end

        def suma(x)
                c=Fraccion.new(1,1)
                m = mcm(self.denominador, x.denominador)
                c.numerador=(self.numerador*m/self.denominador)+(x.numerador*m/x.denominador)
                c.denominador=m
                c=minimizar(c.numerador, c.denominador)
                return c
        end

        def resta(x)
                c=Fraccion.new(1,1)
                m = mcm(self.denominador, x.denominador)
                c.numerador=(self.numerador*m/self.denominador)-(x.numerador*m/x.denominador)
                c.denominador=m
                c=minimizar(c.numerador, c.denominador)
                return c
        end        

        def producto(x)
                c=Fraccion.new(1,1)
                c.numerador=self.numerador*x.numerador
                c.denominador=self.denominador*x.denominador
                c=minimizar(c.numerador, c.denominador)
                return c
        end

        def division(x)
                c=Fraccion.new(1,1)
                c.numerador=self.numerador*x.denominador
                c.denominador=self.denominador*x.numerador
                c=minimizar(c.numerador, c.denominador)
                return c
        end

        def mcm(a,b)
                (a*b)/gcd(a,b)
        end


end


# -------------- PROGRAMA PRINCIPAL --------------------------------------------------------

a=Fraccion.new(15,3)
b=Fraccion.new(4,6)

puts a.to_s
puts b.to_s

puts (a.suma b).to_s #realizamos la suma de fracciones
puts (a.resta b).to_s # realizamos la resta de fracciones
puts (a.producto b).to_s# realizamos el producto de fracciones
puts (a.division b).to_s# realizamos la division de fracciones
