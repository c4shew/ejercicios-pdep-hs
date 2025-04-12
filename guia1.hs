
-- función que devuelve True si un número es múltilpo de 3

esMultiploDeTres :: Int -> Bool
esMultiploDeTres numero = mod numero 3 == 0
-- 0 == mod numero 3 

-- devuelve true si el segundo numero es multiplo del primero
esMultiploDe :: Int -> Int -> Bool
esMultiploDe num1 num2 = mod num2 num1 == 0


-- un año es bisiesto si es divisible por
-- 400 y por 4 pero no por 100
anoEsBisiesto :: Int -> Bool
anoEsBisiesto ano = esMultiploDe 4 ano && not (esMultiploDe 100 ano)


-- delvuelve el cubo de un numero
cubo :: Num a => a -> a
cubo numero = numero * numero

--area de un rectangulo
areaRectangulo :: Num a => a -> a -> a
areaRectangulo base altura = base * altura


-- 11. ejercicio sobre pinos
-- peso del pino es 3kgxcm de 0-3m, 2kgxcm a partir de 3m 
pesoPino :: Float -> Float
pesoPino altura | altura > 300 = 300 * 3 + (altura - 300) * 2
                | altura < 300 = altura * 3

-- sirve si es peso está entre 400 y 1000 kilos
esPesoUtil :: Float -> Bool
esPesoUtil peso = 400 < peso && peso < 1000 

sirvePino :: Float -> Bool
sirvePino = esPesoUtil . pesoPino 


-- 10. Dispersión
alturaDia1 :: Integer
alturaDia1 = 322

alturaDia2 :: Integer
alturaDia2 = 283

alturaDia3 :: Integer
alturaDia3 = 294

-- persion dia1 dia2 dia3 =
-- Estas 3 alturas ¿no se pueden representar como una lista?

--función es cuadrado perfecto
-- serie de euler?

-- implementar la funcion es cuadrado perfecto
-- si el numero ingresado es cuadrado perfecto
-- la raiz cuadrada del numero debe ser un en
-- numero = otroNumero * otroNumero */