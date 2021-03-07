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
  self.deck = generate_deck()

  return self
end

return Crawler
