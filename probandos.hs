import Text.Read.Lex (Number)
import Text.Show.Functions
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


-- ejercicio propuesto de data 
-- modelar un alumno

data Alumno = Alumno {
    nombre :: String,
    fechaNacimiento :: (Int, Int, Int),
    legajo :: Int,
    materias :: [String],
    criterioEstudio :: CriterioEstudio
} deriving(Show)

data Parcial = Parcial {
   materia :: String,
   cantidadPreguntas :: Int
} deriving(Show)

type CriterioEstudio = Parcial -> Bool

-- la funcion estudioso es true sin importar que valor le pase
estudioso :: CriterioEstudio
estudioso _ = True

hijoDelRigor :: Int -> CriterioEstudio
hijoDelRigor n (Parcial _ preguntas) = preguntas > n

cabulero :: CriterioEstudio
cabulero (Parcial mat _ ) = (odd . length) mat

nico :: Alumno
nico = Alumno {
    fechaNacimiento = (10, 3, 1993),
    nombre = "Nico",
    materias = ["sysop", "proyecto"],
    criterioEstudio = estudioso,
    legajo = 124124
}


cambiarCriterioEstudio :: CriterioEstudio -> Alumno -> Alumno
cambiarCriterioEstudio criterioNuevo alumno = alumno { criterioEstudio = criterioNuevo }

estudia :: Parcial -> Alumno -> Bool
estudia parcial alumno = criterioEstudio alumno parcial

parcialPdeP :: Parcial
parcialPdeP = Parcial "PdeP" 3

-- (estudia parcialPdeP . cambiarCriterioEstudio (hijoDelRigor 2)) nico