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
