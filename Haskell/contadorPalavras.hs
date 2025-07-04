-- Para rodar use o comando
--    $ runghc arquivo.hs
-- ou compile com o comando
--    $ ghc arquivo.hs

main = interact wc
   where wc input = ((show . length . words) input) ++ "\n"
