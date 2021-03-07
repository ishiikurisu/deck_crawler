local Crawler = require "crawler"

local tests = {
  test_if_deck_is_generated=function()
    local crawler = Crawler()
    if #crawler.deck ~= 54 then
      print("Deck size is wrong, expected 54, got " .. #crawler.deck)
    end
  end
}

for _, test in pairs(tests) do
  test()
end
