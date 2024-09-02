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

-------------------------- Laboratorio 2 -----------------------------------

paratodo :: [Bool] -> Bool
paratodo [] = True
paratodo (x : xs) = x == True && (paratodo xs)

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
hayMultiplo n xs = not (null xs) && existe2 xs (esMultiplo n) 

---

sumaCuadrados :: Int -> Int
sumaCuadrados n = sum (map (^2) [0..n])

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
