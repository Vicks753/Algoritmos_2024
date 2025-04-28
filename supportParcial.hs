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

¿Cómo se muestra cada valor? Clase Show
¿Qué valores son iguales y distintos entre sí? Clase Eq
Entre un par de valores, ¿cuál es el mayor, y el menor? Ord
¿Cuál el máximo? ¿Cuál el mínimo? Bounded
¿Para poder escribir [Lunes … Viernes]? Clase Enum
-}
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
Polimorfismo ad hoc, definición: Una función que puede tener distintos comportamientos dependiendo del tipo concreto con que se use.
-}
minimoElemento :: (Ord a, Bounded a) => [a] -> a
minimoElemento [] = maxBound
minimoElemento [x] = x
minimoElemento (x:xs) = min x (minimoElemento xs)

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
El pattern matching es un mecanismo para definir funciones, donde damos reglas para las alternativas de un tipo de dato, mediante sus constructores.
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

data ListaAsoc a b = Vacia | Nodo a b (ListaAsoc a b)
type Diccionario = ListaAsoc String String
type Padron = ListaAsoc Int String
--b) Programa las siguientes funciones:
--1) la_long :: ListaAsoc a b-> Int que devuelve la cantidad de datos en una lista.

la_long :: ListaAsoc a b -> Int
la_long Vacia = 0
la_long (Nodo a b (Vacia)) = 1
la_long (Nodo a b (Nodo a' b' c)) = 1 + la_long (Nodo a' b' c) 

--2) la_concat :: ListaAsoc a b-> ListaAsoc a b-> ListaAsoc a b, quede vuelve la concatenacion de dos listas de asociaciones

la_concat :: ListaAsoc a b -> ListaAsoc a b -> ListaAsoc a b
la_concat Vacia Vacia = Vacia
la_concat (Nodo a b xs) Vacia = (Nodo a b xs)
la_concat (Nodo a b xs) (Nodo c d ys) = Nodo a b (la_concat (Nodo a b xs) (Nodo c d ys) )
--3) la_agregar :: Eq a => ListaAsoc a b-> a -> b-> ListaAsoc a b,que agrega un nodo a la lista de asociaciones si la clave no esta en la lista, o actualiza el valor si la clave ya se encontraba.

la_agregar :: Eq a => ListaAsoc a b -> a -> b -> ListaAsoc a b
la_agregar Vacia a b = (Nodo a b Vacia)
la_agregar (Nodo a b xs) a' b'  | a == a' = (Nodo a b' xs )
                                | otherwise = Nodo a b (la_agregar xs a' b' ) 

--4) la_pares :: ListaAsoc a b-> [(a, b)] que transforma una lista de asociaciones en una lista de pares clave-dato.
la_pares :: ListaAsoc a b -> [(a, b)]
la_pares Vacia = []
la_pares (Nodo a b xs) = (a, b) : la_pares xs 

--5) la_busca :: Eq a => ListaAsoc a b-> a-> Maybe b que dada una lista y una clave devuelve el dato asociado, si es que existe. En caso contrario devuelve Nothing. 
la_busca :: Eq a => ListaAsoc a b-> a -> Maybe b
la_busca Vacia a' = Nothing 
la_busca (Nodo a b xs) a'   | a == a' = Just b
                            | otherwise = la_busca xs a'

--6) la_borrar :: Eq a => a-> ListaAsoc a b-> ListaAsoc a b que dada una clave a elimina la entrada en la lista
la_borrar :: Eq a => a-> ListaAsoc a b-> ListaAsoc a b
la_borrar a' Vacia = Vacia
la_borrar a' (Nodo a b xs)  | a'== a = xs
                            | otherwise = Nodo a' b ( la_borrar a xs)

-- p 1
data EspectaculoMotor = Automovilismo (Categoria, Circuito, Horario, Duracion)
                        | Motociclismo (Categoria,Horario, Vueltas) 
    deriving (Eq,Ord)

type Categoria = String 
type Circuito = String 
type Horario = Int
type Duracion = Int
type Vueltas = Int

formula1 :: EspectaculoMotor
formula1 = Automovilismo ("Formula 1", "Singapur", 9, 120)

motoGP :: EspectaculoMotor
motoGP = Motociclismo ("MotoGP", 11, 30)

carreraLarga :: EspectaculoMotor -> Bool
carreraLarga (Automovilismo (_,_,_,d)) = d >= 180

esCategoria :: EspectaculoMotor -> String -> Bool
esCategoria (Automovilismo (cat, _, _, _)) x = cat == x
esCategoria (Motociclismo (cat, _, _)) x = cat == x

findeCat :: [EspectaculoMotor] -> String -> [EspectaculoMotor]
findeCat [] _ = []
findeCat xs y = filter (`esCategoria` y ) xs

--p 2
data Ahorro = Descuento (Billetera, Categoria, Monto, Mes) | Reintegro (Billetera, Categoria, Monto)

type Billetera = String
type Categoria = String
type Monto = Int
type Mes = Int

mercadoUala :: Ahorro
mercadoUala = Descuento ("Uala", "Supermercado", 1500, 10)

premioBna :: Ahorro
premioBna = Reintegro ("BnaMas", "Premio Cumplidor", 3000)

esReintegro :: Ahorro -> String -> Bool
esReintegro (Reintegro (a, _, _)) b = a == b
esReintegro (Descuento (_,_,_,_)) _ = False

esDescuentoPrimavera :: Ahorro -> Bool
esDescuentoPrimavera (Descuento (_, _, _, m)) = m == 9 || m == 10 || m == 11

esDescuento :: Ahorro -> Bool
esDescuento (Descuento (_, _, _,_)) = True
esDescuento _ = False

esDescMes :: Ahorro -> Int -> Bool
esDescMes (Descuento (_, _, _, m)) mes = m == mes
esDescMes _ _ = False

totalDescuentosMes :: [Ahorro] -> Int -> Int
totalDescuentosMes xs mes = length (filter (flip esDescMes mes)(filter esDescuento xs ))

data ColaAhorro = NoHayAhorro | HayAhorro Ahorro ColaAhorro 

ahorrosJuan :: ColaAhorro
ahorrosJuan = HayAhorro mercadoUala (HayAhorro premioBna NoHayAhorro)

monto :: Ahorro -> Int
monto (Descuento (_, _, m, _)) = m
monto (Reintegro (_, _, m)) = m

buenosAhorros :: ColaAhorro -> ColaAhorro
buenosAhorros NoHayAhorro = NoHayAhorro
buenosAhorros (HayAhorro a c) = if monto a > 5000 then (HayAhorro a c) else buenosAhorros c

data Vagon = Minerales (Nombre, Capacidad, Cantidad) | Cisterna (Liquido, Cantidad, Temperatura)

type Nombre = String
type Capacidad = Int
type Cantidad = Int
type Liquido = String
type Temperatura = Float

vagonCobre :: Vagon
vagonCobre = (Minerales ("Cobre", 50, 35))

vagonAgua :: Vagon
vagonAgua = (Cisterna ("Agua", 25, 15.8))

excesoMinerales :: Vagon -> Int -> Bool
excesoMinerales (Minerales (_, _, c)) t = c > t
excesoMinerales (Cisterna (_, _, _)) _ = False

cisternaFrio :: Vagon -> Bool
cisternaFrio (Cisterna (_, _, t)) = t < 5
cisternaFrio (Minerales (_, _, _)) = False

carga :: Vagon -> Int
carga (Minerales (_, _, c)) = c
carga (Cisterna (_, c, _)) = c

minimaCarga :: [Vagon] -> Int
minimaCarga [] = 0
minimaCarga xs = minimum (map carga xs)
-- FALTA: Tener en cuenta para el caso base que se considera que la carga más grande de un vagón de minerales es de 100 toneladas.

data Tren = SinVagones | Encadena Vagon Tren

ejemploTren :: Tren
ejemploTren = Encadena vagonAgua (Encadena vagonCobre SinVagones)

sumarCarga :: Tren -> Int -> Tren
sumarCarga SinVagones _ = SinVagones
sumarCarga (Encadena (Minerales (n, cap, c)) ts) k
    | c + k <= cap = Encadena (Minerales (n, cap, c + k)) (sumarCarga ts k)
    | otherwise = Encadena (Minerales (n, cap, c)) (sumarCarga ts k)
sumarCarga (Encadena (Cisterna (l, c, t)) ts) k = Encadena (Cisterna (l, c, t)) (sumarCarga ts k)

-- p 4

data Lanzamiento = Album (Nombre, Artista, Temas, Estreno)| Sencillo (Nombre, Artista, Duracion, Estreno)

type Nombre = String
type Artista = String
type Temas = [String]
type Estreno = Int
type Duracion = Int

thriller :: Lanzamiento
thriller = Album ("Trhiller", "Michael Jackson", ["Wanna Be Something", "Baby be Mine", "The girl is mine", "Thriller", "Beat it", "Billie Jean", "Human Nature", "P.Y.T.", "The Lady in my life"], 1982)

yesterday :: Lanzamiento
yesterday = Sencillo ("Yesterday", "The Beatles", 125, 1965)

esDiscoLargo :: Lanzamiento -> Bool
esDiscoLargo  (Album (_,_,t,_)) = length t >= 5
esDiscoLargo _ = False

esSencillo :: Lanzamiento -> Bool
esSencillo (Sencillo (_,_,_, e)) = e >= 2020


albumMasLargo :: [Lanzamiento] -> Int
albumMasLargo [] = 0
albumMasLargo (Album (_,_,t,_) : xs) = max (length t) (albumMasLargo xs)

data ColaLanzamiento = Vacia | Encolada Lanzamiento ColaLanzamiento 

colaReproduccion :: ColaLanzamiento
colaReproduccion = Encolada thriller (Encolada yesterday Vacia)

albumsDelArtista :: ColaLanzamiento -> String -> ColaLanzamiento 
albumsDelArtista Vacia _ = Vacia
albumsDelArtista (Encolada (Album (n,a,t,e)) c ) b 
    | a == b = Encolada (Album (n,a,t,e)) (albumsDelArtista c b)
    | otherwise = albumsDelArtista c b

-- p 5
data Libro = Novela Nombre Genero Autor Paginas Precio| Ensayo Nombre Tema Autor Paginas | Poesia Nombre Estilo Autor Paginas| Cientifico Nombre Estudio Autor Paginas deriving (Show)

data Genero = Drama | Romance | Misterio | Aventura deriving Show
data Tema = Politica | Filosofia | Ciencia | Historia deriving Show
data Estilo = Clasica | Contemporanea | Experimental deriving Show
data Estudio = Astronomia | Fisica | Matematica | Computacion deriving Show

type Nombre = String
type Autor = String
type Precio = Int
type Paginas = Int

generosIguales :: Genero -> Genero -> Bool
generosIguales Drama Drama = True
generosIguales Romance Romance = True
generosIguales Misterio Misterio = True
generosIguales Aventura Aventura = True
generosIguales _ _ = False

cuantasNovelasGenero :: [Libro] -> Genero -> Int
cuantasNovelasGenero [] _ = 0
cuantasNovelasGenero ((Novela _ g _ _ _):xs) g1
    | generosIguales g g1 = 1 + cuantasNovelasGenero xs g1
    | otherwise = cuantasNovelasGenero xs g1
cuantasNovelasGenero (_:xs) g1 = cuantasNovelasGenero xs g1
-- cuantasNovelasGenero [Novela "El Aleph" Drama "Borges" 200 1000, Novela "El Aleph" Drama "Borges" 200 1000] Drama == 2

temasIguales :: Tema -> Tema -> Bool
temasIguales Politica Politica = True
temasIguales Filosofia Filosofia = True
temasIguales Ciencia Ciencia = True
temasIguales Historia Historia = True
temasIguales _ _ = False

estilosIguales :: Estilo -> Estilo -> Bool
estilosIguales Clasica Clasica = True
estilosIguales Contemporanea Contemporanea = True
estilosIguales Experimental Experimental = True
estilosIguales _ _ = False

estudiosIguales :: Estudio -> Estudio -> Bool
estudiosIguales Astronomia Astronomia = True
estudiosIguales Fisica Fisica = True
estudiosIguales Matematica Matematica = True
estudiosIguales Computacion Computacion = True
estudiosIguales _ _ = False

librosIguales :: Libro -> Libro -> Bool
librosIguales (Novela n g a _ _) (Novela n1 g1 a1 _ _) = n == n1 && generosIguales g g1 && a == a1
librosIguales (Ensayo n t a _) (Ensayo n1 t1 a1 _) = n == n1 && temasIguales t t1 && a == a1
librosIguales (Poesia n e a _) (Poesia n1 e1 a1 _) = n == n1 && estilosIguales e e1 && a == a1
librosIguales (Cientifico n e _ _) (Cientifico n1 e1 _ _) = n == n1 && estudiosIguales e e1
librosIguales _ _ = False

hayDosDistintosConsecutivos :: [Libro] -> Bool
hayDosDistintosConsecutivos [] = False
hayDosDistintosConsecutivos [_] = False
hayDosDistintosConsecutivos (x:y:xs) = not (librosIguales x y) || hayDosDistintosConsecutivos (y:xs)
-- hayDosDistintosConsecutivos [Novela "El Aleph" Drama "Borges" 200 1000, Novela "El Aleph" Drama "Borges" 200 1000] == False
-- hayDosDistintosConsecutivos [Novela "El Aleph" Drama "Borges" 200 1000, Novela "El Aleph" Drama "Borges" 200 1000, Ensayo "El Aleph" Politica "Borges" 200] == True

data EstadoEstudiantes = EvolucionDeEstudiante Nombre Edad Calificaciones EstadoEstudiantes | NoHayEstudiantes

type Edad = Int
type Calificaciones = [Int]

validarCalificaciones :: [Int] -> [Int]
validarCalificaciones = filter (\x -> x >= 0 && x <= 10)
-- filtra las calificaciones que son menores a 0 o mayores a 10

promedioGeneral :: [Int] -> Float
promedioGeneral [] = 0
promedioGeneral xs = fromIntegral (sum (validarCalificaciones xs)) / fromIntegral (length (validarCalificaciones xs))

hayMayorIgualA8 :: [Int] -> Bool
hayMayorIgualA8 [] = False
hayMayorIgualA8 (x:xs) = x >= 8 || hayMayorIgualA8 xs

avanzarDeAño :: EstadoEstudiantes -> String -> Bool
avanzarDeAño NoHayEstudiantes _ = False
avanzarDeAño (EvolucionDeEstudiante n _ c xs) n1 
    | n == n1 && promedioGeneral c < 6 = False
    | n == n1 && promedioGeneral c >= 6 && promedioGeneral c < 7 && hayMayorIgualA8 c = True
    | n == n1 && promedioGeneral c >= 6 && promedioGeneral c < 7 && not (hayMayorIgualA8 c) = False
    | n == n1 && promedioGeneral c >= 7 = True
    | otherwise = avanzarDeAño xs n1
-- avanzarDeAño (EvolucionDeEstudiante "Juan" 20 [8,9,10] (EvolucionDeEstudiante "Pedro" 21 [7,8,9] NoHayEstudiantes)) "Juan" == True
-- avanzarDeAño (EvolucionDeEstudiante "Juan" 20 [8,9,10] (EvolucionDeEstudiante "Pedro" 21 [7,8,9] NoHayEstudiantes)) "Pedro" == True

promedioGeneralEstudiante :: EstadoEstudiantes -> String -> Maybe Float
promedioGeneralEstudiante NoHayEstudiantes _ = Nothing
promedioGeneralEstudiante (EvolucionDeEstudiante n _ c xs) n1 
    | n == n1 = Just (promedioGeneral c)
    | n /= n1 = promedioGeneralEstudiante xs n1
    | otherwise = Nothing

-- p 6
data PiedrasPreciosas = Diamante Color Dureza Peso Precio | Esmeralda  Dureza Peso Precio | Rubi ColorRubi Precio | Zafiro Color Precio deriving Show 

data Color = Azul | Rosa | Amarillo | Marron | Gris | Blanco deriving Show
data Dureza = MuyDura | Dura | Fragil deriving Show
data ColorRubi = Sangre | Carmesi deriving Show
type Peso = Int
type Precio = Int 

mismoColor :: Color -> Color -> Bool
mismoColor Azul Azul = True
mismoColor Rosa Rosa = True
mismoColor Amarillo Amarillo = True
mismoColor Marron Marron = True
mismoColor Gris Gris = True
mismoColor Blanco Blanco = True
mismoColor _ _ = False

cuantosDiamantes :: [PiedrasPreciosas] -> Color -> Int
cuantosDiamantes [] _ = 0
cuantosDiamantes ((Diamante c _ _ _):xs) c1 
    | mismoColor c c1 = 1 + cuantosDiamantes xs c1
    | not (mismoColor c c1) = cuantosDiamantes xs c1
cuantosDiamantes (_:xs) c1 = cuantosDiamantes xs c1
-- cuantosDiamantes [Diamante Azul MuyDura 10 1000, Diamante Azul MuyDura 10 1000] Azul == 2
-- cuantosDiamantes [Diamante Azul MuyDura 10 1000, Diamante Azul MuyDura 10 1000] Amarillo == 0

mismaDureza :: Dureza -> Dureza -> Bool
mismaDureza MuyDura MuyDura = True
mismaDureza Dura Dura = True
mismaDureza Fragil Fragil = True
mismaDureza _ _ = False

piedrasIguales :: PiedrasPreciosas -> PiedrasPreciosas -> Bool
piedrasIguales (Diamante _ _ peso precio) (Diamante _ _ peso1 precio1) = peso == peso1 && precio == precio1
piedrasIguales (Esmeralda dureza _ precio) (Esmeralda dureza1 _ precio1) = mismaDureza dureza dureza1 && precio == precio1
piedrasIguales (Rubi _ precio) (Rubi _ precio1) = precio == precio1 
piedrasIguales (Zafiro color precio) (Zafiro color1 precio1) = mismoColor color color1 && precio == precio1
piedrasIguales _ _ = False
-- piedrasIguales (Diamante Azul MuyDura 10 1000) (Diamante Azul MuyDura 10 1000) == True
-- piedrasIguales (Diamante Azul MuyDura 10 1000) (Diamante Azul MuyDura 10 2000) == False

hayDosDistintas :: [PiedrasPreciosas] -> Bool
hayDosDistintas [] = False
hayDosDistintas [_] = False
hayDosDistintas (x:y:xs) = not (piedrasIguales x y) || hayDosDistintas (y:xs)

data EstadoMascotas = EvolucionMascota Nombre Raza Estado Estado Estado EstadoMascotas| NoHayMascota 

data Raza = Pastor | Labrador | Golden | Siveriano | Otro 
type Nombre = String
type Estado = Int

validarEstados :: [Int] -> [Int]
validarEstados = filter (\x -> x >= 0 && x <= 10)

mismaRaza :: Raza -> Raza -> Bool
mismaRaza Pastor Pastor = True
mismaRaza Labrador Labrador = True
mismaRaza Golden Golden = True
mismaRaza Siveriano Siveriano = True
mismaRaza Otro Otro = True
mismaRaza _ _ = False

hayMayorA7 :: Estado -> Estado -> Estado -> Bool
hayMayorA7 e1 e2 e3 = (e1 > 7) || (e2 > 7) || (e3 > 7)

noHayMenorA6 :: Estado -> Estado -> Estado -> Bool
noHayMenorA6 e1 e2 e3 = (e1 >= 6) && (e2 >= 6) && (e3 >= 6)


seVaALaCasa :: EstadoMascotas -> String -> Bool
seVaALaCasa  NoHayMascota _ = False
seVaALaCasa (EvolucionMascota n r e1 e2 e3 xs) nombre
    | n == nombre && (mismaRaza r Golden || mismaRaza r Siveriano) = hayMayorA7 e1 e2 e3 && noHayMenorA6 e1 e2 e3
    | n == nombre && mismaRaza r Pastor = e1 >= 7 && e2 >= 7 && e3 >= 7
    | n == nombre && (mismaRaza r Labrador || mismaRaza r Otro) = e1 >= 8 && e2 >= 8 && e3 >= 8
    | n /= nombre = seVaALaCasa xs nombre
    | otherwise = False

estadoMayor :: Estado -> Estado -> Estado -> Estado
estadoMayor e1 e2 e3 = max e1 (max e2 e3)

devolverMejorEstado :: EstadoMascotas -> String -> Maybe Int
devolverMejorEstado NoHayMascota _ = Nothing
devolverMejorEstado (EvolucionMascota n _ a b c xs) nombre
    | n == nombre = Just (estadoMayor a b c)
    | n /= nombre = devolverMejorEstado xs nombre
    | otherwise = Nothing
