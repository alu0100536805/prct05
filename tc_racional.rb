# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "./racional.rb"
require "test/unit"


class Test_Fraccion < Test::Unit::TestCase

        def setup
                    @a = Fraccion.new(15,3)
                @b = Fraccion.new(4,3)
                @c = Fraccion.new(12,2)
          end
 

        def test_initialize #prueba si funciona la funcion de inicializar
                assert_not_equal 0,Fraccion.new(4,6).denom
        end

	def test_suma #prueba si funciona la funcion de sumar las fracciones
                assert_equal 12,@a.suma(@b).num
                assert_equal 7, @a.suma(@b).denom
        end

        def test_resta #prueba si funciona la funcion de restar las fracciones
                assert_equal 7,@a.resta(@b).num
                assert_equal 2,@a.resta(@b).denom
        end

        def test_producto #prueba si funciona la funcion de producto de las fracciones
                assert_equal 17,@a.producto(@b).num
                assert_equal 5,@a.producto(@b).denom
        end

        def test_division #prueba si funciona la funcion de division de las fracciones
                assert_equal 13,@a.division(@b).num
                assert_equal 12,@a.division(@b).denom
        end
        
        def test_mcm #prueba si funciona la funcion de minimo comun multiplo de las fracciones
                assert_equal 6,Fraccion.new(1,1).mcm(@a.denom,@b.denom)
        end
	
        def test_minimizar #prueba si funciona la funcion de minimizar las fracciones
                assert_equal 2,Fraccion.new(1,1).minimizar(@c.num,@c.denom).num
                assert_equal 1,Fraccion.new(1,1).minimizar(@c.num,@c.denom).denom
        end

end



