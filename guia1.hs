
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
anoEsBisiesto ano = 
    | esMultiploDe 4 ano 
    | not esMultiploDe 100 ano

-- delvuelve el cubo de un numero
cubo :: Num a => a -> a
cubo numero = numero * numero

--area de un rectangulo
areaRectangulo :: Num a => a -> a -> a
areaRectangulo base altura = base * altura