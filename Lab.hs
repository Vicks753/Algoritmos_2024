-------------------------- Laboratorio 1 -----------------------------------

esCero :: Int -> Bool
esCero x = x == 0

---

esPositivo :: Int -> Bool
esPositivo x = x > 0 

---

esVocal :: Char -> Bool
esVocal c = c`elem` "aeiou"  
-- elem es una función que devuelve True si el elemento se encuentra en la cadena --

---

valorAbsoluto :: Int -> Int
valorAbsoluto x = if x < 0 then x * (-1) else x

valorAbsoluto :: Int -> Int
valorAbsoluto x = abs x

-------------------------- Laboratorio 2 -----------------------------------

paratodo :: [Bool] -> Bool
paratodo [] = True
paratodo (x : xs) = x == True && (paratodo xs)

paraTodo :: [Bool] -> Bool
paraTodo xs = all (== True) xs

---

sumatoria :: [Int] -> Int
sumatoria [] = 0
sumatoria (x : xs) = x + sumatoria xs

---

productoria :: [Int] -> Int
productoria [] = 1
productoria (x : xs) =  x * productoria xs
-- Qué se haría en el caso vacío? --

---

factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1) 

factorial :: Int -> Int
factorial n = product [1 .. n]

---

promedio :: [Int] -> Int
promedio [] = 0
promedio (x : xs) = sumatoria (x : xs) `div` length (x : xs) 

-------------------------- Laboratorio 3 -----------------------------------

mayorQue0 :: [Int] -> Bool
mayorQue0 [] = True
mayorQue0 (x : xs) = x > 0 && mayorQue0 xs

---

vale5 :: [Int] -> Bool
vale5 [] = False
vale5 (x : xs) = x == 5 || vale5 xs

igualQue :: [Int] -> Int -> Bool
igualQue xs n = any (== n) xs

---

todosIguales :: (Eq a) => [a] -> Bool
todosIguales [] = True
todosIguales [x] = True
todosIguales (x : y : xs) 
                        | x == y = todosIguales (y:xs)
                        | otherwise = False
hermanos :: (Eq a) => [a] -> Bool
hermanos [] = True
hermanos xs = all (== head xs) (tail xs) 

-------------------------- Laboratorio 4 -----------------------------------

productoria2 :: Int -> Int
productoria2 n = product [1..n]

---

promedio2 :: [Int] -> Int
promedio2 [] = 0
promedio2 [x] = x 
promedio2 xs = sum xs `div` length xs

---

menor :: (Ord a) => [a] -> [a] -> Bool
menor x y = not (null x || null y) && maximum x < minimum y
--- not (null x || null y) verifica que ninguna de las listas sea vacía

maxiMini :: [Int] -> [Int] -> Bool
maxiMini xs ys = not (null xs) && not (null ys) && maximum xs < minimum ys

---

producto :: Integer -> Bool
--producto n = any (\i -> n `mod` i == 0 && 2 <= i && n `div` i >= 2 && i <= n `div` i) [2..sqrtN]
    where sqrtN = floor . sqrt . fromIntegral $ n
-- i y j pertenecen al rango [2..(n-1)] puesto que 2 <= i,j < n -> any (\i -> n mod i == 0 && 2 <= i && n `div` i >= 2
-- n mod i,j == 0
-- n `div` i >= 2 -> define a j dentro del rango

-------------------------- Laboratorio 5 -----------------------------------

todos :: [Bool] -> Bool 
todos [] = False
todos xs = all (== True) xs

-------------------------- Laboratorio 6 -----------------------------------

divisionPor2 :: Int -> [Int]
divisionPor2 n 
        | n == 0 = [0]
        | even n = n : divisionPor2 (n `div` 2)
        | otherwise = [n]

esPotencia2 :: Int -> Bool
esPotencia2 n = last (divisionPor2 n) == 1

---

masGrande :: Int -> [Int] -> Bool
masGrande n x = not (null x) && maximum x < n

---

esPar :: Int -> Bool
esPar = even

filtrarPares :: [Int] -> [Int]
filtrarPares = filter esPar  

productoPares :: [Int] -> Int
productoPares = product . filtrarPares

productoPar :: [Int] -> Int
productoPar [] = 1
productoPar (x:xs) = product (filter even xs)
--- una aplicación distinta de filter es:  filter (\x -> x `mod` 3 == 0) xs (devuelve true si es divisible por 3)
---
posicionPar :: [Int] -> [Int]
posicionPar [] = []
posicionPar xs = [xs !! i | i <- [0,2..length xs]]

sumarPares :: [Int] -> Int
sumarPares  = sum . posicionPar

-------------------------- Laboratorio 7 -----------------------------------

paraTodo :: [a] -> (a -> Bool) -> Bool
paraTodo [] _ = True
paraTodo (x : xs) f 
                    | f x = paraTodo xs f
                    | otherwise = False

todoV :: [a] -> (a -> Bool) -> Bool
todoV [] _ = True
todoV (x:xs) f = f x && todoV xs f

--- Se utiliza # xs - 1 para que no se salga del rango de la lista, el último índice válido de una lista es siempre length xs - 1, no length xs.
-- por ejemplo, para una lista de longitud 5, los índices válidos son 0, 1, 2, 3, 4.
-- Con [0, 2 .. 4] obtenemos [0, 2, 4], que son los índices pares correctos.
-- Con [0, 2 .. 5] obtendríamos [0, 2, 4], que es lo mismo, pero conceptualmente incorrecto.
---Se utiliza " . " para aplicar composición de funciones, se aplica como f(g(x))


---

existe2 :: [a] -> (a -> Bool) -> Bool
existe2 [] _ = False
existe2 (x:xs) f = f x || existe2 xs f

---

sumatoria2 :: [a] -> (a -> Int) -> Int
sumatoria2 [] _ = 0
sumatoria2 (x:xs) f = f x + sumatoria2 xs f

---

productoria3 :: [a] -> (a -> Int) -> Int
productoria3 [] _ = 1
productoria3 (x:xs) f = f x * productoria3 xs f

-------------------------- Laboratorio 9 -----------------------------------

todosPares :: [Int] -> Bool
todosPares xs = paraTodo xs even

---

esMultiplo :: Int -> Int -> Bool
esMultiplo n x = x `mod` n == 0

hayMultiplo :: Int -> [Int] -> Bool
hayMultiplo n xs = not (null xs) && any (esMultiplo n) xs

hayMultiplo :: Int -> [Int] -> Bool
hayMultiplo n xs = not (null xs) && existe2 xs (esMultiplo n) 

hayMultiplo2 :: Int -> [Int] -> Bool
hayMultiplo2 n [] = False
hayMultiplo2 n (x:xs) = esMultiplo n x || hayMultiplo2 n xs

---

sumaCuadrados :: Int -> Int
sumaCuadrados n = sum (map (^2) [0..n])

sumaCuad :: Int -> Int
sumaCuad x = sum [i^2 | i <- [1..x]]

---

esDivisor :: Int -> Int -> Bool
esDivisor n x = n `mod` x == 0

existeDivisor :: Int -> [Int] -> Bool
existeDivisor n xs = not (null xs) && existe2 xs (esDivisor n)

---

esPrimo :: Int -> Bool
esPrimo n = not (existeDivisor n [2..(n-1)])
-- Toma al 0 y esto es incorrecto

---

factorial2 :: Int -> Int
factorial2 n = productoria [1..n]
-- que hago en casos de números negativos

filtrarPrimos :: [Int] -> [Int]
filtrarPrimos = filter esPrimo 

multiplicarPrimos :: [Int] -> Int
multiplicarPrimos [] = 1
multipilcarPrimos (x:xs) = product . filtrarPrimos 

---------------

duplica :: [Int] -> [Int]
duplica [] = []
duplica (x:xs) = (x*2) : duplica xs

duplica2 :: [Int] -> [Int]
duplica2 [] = []
duplica2 (x:xs) = map (*2) (x:xs)

---

primIgualesA :: (Eq a) => a -> [a] -> [a]
primIgualesA n [] = []
primIgualesA n (x:xs) 
		| x == n = x : primIgualesA n xs
		| otherwise = []
--Falta anexo B (takeWhile)

primIguales :: (Eq a) => [a] -> [a]
primIguales [] = []
primIguales (x:y:xs) 
                  | x == y = x : primIguales (y:xs)
                  | otherwise = [x]
-- Falta anexo B
{-
devuelve el primer elemento de una lista no vacía, o Nothing si la
lista es vacía.
Usando el tipo maybe ya predefinido: 
data Maybe a = Nothing | Just a
-}
primerElemento :: [a] -> Maybe a
primerElemento [] = Nothing
primerElemento (x:xs) = Just x

data ListaAsoc a b = Vacia | Nodo a b (ListaAsoc a b) deriving Show
--type Diccionario = ListaAsoc String String
--type Padron = ListaAsoc Int String

laLong :: (ListaAsoc a b) -> Int
laLong Vacia = 0
laLong (Nodo a b Vacia) = 1
laLong (Nodo a b x) = 1 + laLong x

esnodo :: ListaAsoc a b -> Bool
esnodo Vacia = False
esnodo (Nodo a b x) = True

concatL :: ListaAsoc a b -> ListaAsoc a b -> ListaAsoc a b
concatL Vacia Vacia = Vacia
concatL Vacia (Nodo a b x) = (Nodo a b x)
concatL (Nodo a b x) Vacia = (Nodo a b x)
concatL (Nodo a b Vacia) k = (Nodo a b k)
concatL (Nodo a b x) h = Nodo a b (concatL x h)

--- Sinonimos de tipo
type Altura = Int
type NumCamiseta = Int

--- Tipos algebraicos sin parametros 
data Zona = Arco | Defensa | Mediocampo | Delantera deriving (Eq, Show)
data TipoReves = DosManos | UnaMano deriving (Eq, Show)
data Modalidad = Carretera | Pista | Monte | BMX deriving (Eq, Show)
data PiernaHabil = Izquierda | Derecha deriving (Eq, Show)

--- Sinonimo
type ManoHabil = PiernaHabil

--- Deportista es un tipo algebraico con constructores parametricos
data Deportista = Ajedrecista 
                 | Ciclista Modalidad 
                 | Velocista Altura 
                 | Tenista TipoReves ManoHabil Altura 
                 | Futbolista Zona NumCamiseta PiernaHabil Altura deriving (Eq, Show)


{-
dada una lista de deportistas xs, y una zona z, devuelve la cantidad de futbolistas incluidos en xs que juegan en la zona z. No usar igualdad, solo pattern matching.
-}
contarFutbolistas :: [Deportista] -> Zona -> Int
contarFutbolistas [] _ = 0
contarFutbolistas xs z = length (filter ( flip esZona z) (filter esFutbolista xs))
-- flip lo usamos pq contarF recibe como 1° parametro deportista y como 2° zona y yo para aplicarlo lo necesito al reves
-- aplicamos filter de esZona a la lista que devuelve filter esFutbolista

contarVelocistas :: [Deportista] -> Int
contarVelocistas [] = 0
contarVelocistas xs = length (filter esVelocista xs)

esVelocista :: Deportista -> Bool
esVelocista (Velocista a ) = True
esVelocista _ = False

esFutbolista :: Deportista -> Bool
esFutbolista (Futbolista a b c d) = True
esFutbolista _ = False

esZona :: Deportista -> Zona -> Bool
esZona (Futbolista a b c d) z = a == z
esZona _ _ = False

data Cola = Vacía | Encolada Deportista Cola deriving Show

{-
elimina de la cola a la persona que esta en la primer posicion de una cola, por haber sido atendida. Si la cola esta vacıa, devuelve Nothing
-}
atender :: Cola -> Maybe Cola
atender Vacía = Nothing
atender (Encolada a Vacía) = Nothing
atender (Encolada a (Encolada b c)) = Just (Encolada b c)

{-
agrega una persona a una cola de deportistas, en la ultima posicion.
-}

encolar :: Deportista -> Cola -> Cola
encolar d Vacía = (Encolada d Vacía)
encolar d (Encolada a b) = (Encolada d (Encolada a b)) 

{-
devuelve el/la primera futbolista dentro de la cola que juega en la zona que se corresponde con el segundo parametro. Si no hay futbolistas jugando en esa zona devuelve Nothing.
-}

busca :: Cola -> Zona -> Maybe Deportista
busca Vacía _ = Nothing
busca (Encolada (Futbolista a b c d) Vacía) z 
   | a == z = Just (Futbolista a b c d)
   | otherwise = Nothing
busca (Encolada _ Vacía) z = Nothing
busca (Encolada _ x) z = busca x z

data NotasBásicas = Do | Re | Mi | Fa | Sol | La | Si deriving (Show, Ord, Eq)

cifradoAmericano :: NotasBásicas -> String
cifradoAmericano Do = "C"
cifradoAmericano Re = "D"
cifradoAmericano Mi = "E"
cifradoAmericano Fa = "F"
cifradoAmericano Sol = "G"
cifradoAmericano La = "A"
cifradoAmericano Si = "B"

{-
usando polimorfismo ad hoc (f :: (Ord a) => [a] -> a) la funcion minimoElemento que calcula (de manera recursiva) cual es el menor valor de una lista de tipo [a]. Asegurate que solo este definida para listas no vacıas.
-}
minimoElemento :: (Ord a, Num a) => [a] -> a
minimoElemento xs = minimum xs

{-
De manera tal que el caso base de la recursion sea el de la lista vacıa. Para ello revisa la clase Bounded. 
Ayuda: Para probar esta funcion dentro de ghci con listas vacıas, indica el tipo concreto con tipos de la clase Bounded, por ejemplo: ([1,5,10]::[Int]), ([]::[Bool]), etc.
Bounded se utiliza solo en lista vacia
-}

minimoE :: (Ord a, Bounded a) => [a] -> a
minimoE [] = minBound
minimoE xs = minimum xs

--- minBound :: Int    -- Devuelve el mínimo valor de Int
--- maxBound :: Char   -- Devuelve el máximo valor de Char
--- minBound :: Bool   -- Devuelve False
--- maxBound :: Bool   -- Devuelve True

{-
Usa la funcion minimoElemento para determinar la nota mas grave de la melodıa
-}

masGrave :: [NotasBásicas] -> NotasBásicas
masGrave xs = minimum xs

sonidoNatural :: NotasBásicas -> Int
sonidoNatural Do = 0
sonidoNatural Re = 2
sonidoNatural Mi = 4
sonidoNatural Fa = 5
sonidoNatural Sol = 7
sonidoNatural La = 9
sonidoNatural Si = 11

data Alteración = Bemol | Sostenido | Natural deriving (Eq, Ord)
data NotaMusical = Nota NotasBásicas Alteración deriving (Eq, Ord)

{-
devuelve el sonido de una nota, incrementando en uno su valor si tiene la alteracion Sostenido, decrementando en uno si tiene la alteracion Bemol y dejando su valor intacto si la alteracion es Natural
-}

sonidoCromatico :: NotaMusical -> Int
sonidoCromatico (Nota n Natural) = sonidoNatural n
sonidoCromatico (Nota n Bemol) = sonidoNatural n - 1
sonidoCromatico (Nota n Sostenido) = sonidoNatural n + 1

{-
dos notas que tengan el mismo valor de sonidoCromatico se consideren iguales. 
Requiere deriving Eq
-}

iguales :: NotaMusical -> NotaMusical -> Bool
iguales (Nota n a) (Nota m b) = sonidoCromatico (Nota n a)  == sonidoCromatico (Nota m b)

{-
Se debe definir que una nota es menor o igual a otra si y solo si el valor de sonidoCromatico para la primera es menor o igual al valor de sonidoCromatico para la segunda.
Requiere deriving Ord
-}
menorIgual :: NotaMusical -> NotaMusical -> Bool
menorIgual (Nota n a) (Nota m b) = sonidoCromatico (Nota n a) <= sonidoCromatico (Nota m b) 
