local Crawler = require "crawler"

local tests = {
  test_if_deck_is_generated=function()
    local crawler = Crawler()
    if #crawler.deck ~= 54 then
      print("Deck size is wrong, expected 54, got " .. #crawler.deck)
    end
    if #crawler.discard ~= 0 then
      print("Discard size is wrong, expected 0, got " .. #crawler.discard)
    end
  end,
  test_crawler_can_draw_card=function()
    local crawler = Crawler()
    local card = crawler:draw()
    if #crawler.deck ~= 53 then
      print("Deck size after draw is wrong, expected 53, got " .. #crawler.deck)
    end
    if #crawler.discard ~= 0 then
      print("Discard size after draw is wrong, expected 0, got " .. #crawler.discard)
    end
  end,
}

for _, test in pairs(tests) do
  test()
end
