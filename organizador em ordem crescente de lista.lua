
function OrdemCrescente(lista)
    -- gerando uma nova tabela local onde sera igual a recebida pela função
    local t = lista 
    -- ordena em ordem crescente a nova lista
    table.sort(t, function(a,b) return a<b end)
    -- retorna a nova lista
    return t
end

local function imprimirLista (lista)
    for index, valor in ipairs(lista)
        -- imprime na tela o index e o valor do objeto da lista
        print(index, valor)
    end
end

--test
local lista = {23192, 93, 293, 2, 1, 9, 3, 0 , 2}

lista = OrdemCrescente(lista)

imprimirLista(lista)