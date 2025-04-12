import Text.Read.Lex (Number)
-- Probando

aproboAlumno :: Int -> Bool
aproboAlumno nota = nota >= 6


edadDumbledore :: Integer
edadDumbledore = 120


pesosADolares :: Float -> Float
pesosADolares pesos = pesos / 1075.22 


-- listas

-- _ es la variable anonima
head :: [a] -> a
head (x:_) = x

tail :: [a] -> [a]
tail (_:xs) = xs

-- el operador (++) concatena dos listas
-- sum suma los elementos de la lista
-- length da la longitud
-- take devuelve los primeron n elementos
-- drop elimina los primeron n elementos
-- !! devuelve el elemento de la posicion n
-- reverse devuelve la lista invertida

-- ejemplo suma de complejos

-- defino un tipo de variable que es una tupla
type Complejo = (Float, Float)

sumarComplejos :: Complejo -> Complejo -> Complejo
sumarComplejos (real1, imaginario1) (real2, imaginario2) = (real1 + real2, imaginario1 + imaginario2)

--el tipo de dato person utiliza un constructor persona
-- que recibe un string y un int
data Persona = Persona String Int

--  Persona "Constanza" 23,

nombre :: Persona -> String
nombre (Persona _nombre _edad) = _nombre

edad :: Persona -> Int
edad (Persona _nombre _edad) = _edad 

esMayorDeEdad :: Persona -> Bool 
esMayorDeEdad Persona = edad >= 18 


