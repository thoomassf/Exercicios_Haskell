ordenar [] = []
ordenar (x:xs) = ordenar menores ++ [x] ++ ordenar maiores
  where
    menores = [x'|x'<-xs, x'<=x]
    maiores = [x'|x'<-xs, x'>x]
