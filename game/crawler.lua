function swap(a, i, j)
  a[i], a[j] = a[j], a[i]
end

function shuffle(array)
  local counter = #array
  while counter > 1 do
    local index = math.random(counter)
    swap(array, index, counter)
    counter = counter - 1
  end
  return array
end

function generate_deck()
  local deck = { 
    "C",  -- joker, from pt-br coringa
    "C"
  }
  local numbers = {
    "A",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "0",  -- 10 but using 0 for computing purposes
    "J",
    "Q",
    "K"
  }
  local suits = {
    "H",
    "C",
    "S",
    "D"
  }

  for _, n in pairs(numbers) do
    for _, s in pairs(suits) do
      local card = n .. s
      table.insert(deck, card)
    end
  end

  return deck
end

function Crawler()
  local self = { }
  self.deck = shuffle(generate_deck())

  return self
end

return Crawler
