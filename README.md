# Deck Crawler

Rules:

- Shuffle the deck
- Take 1 card. This is going to be your goal. Take note of it.
- Take 3 cards. These are going to be the items you start with.
- Take notes: you have 3 lives.
- Each round, take a card from the deck: this is where you are right now.
  Some cards will award you either items or lives, while other cards will
  trigger battles against enemies.
- Battles against enemies can be represented as such:
    + Each enemy has a certain amount of life.
    + To defeat an enemy, you need to give up items that sum to at least the life of the enemy.
    + If you don't give cards up, you lose one health point.
- If you lose all your health points, you die and the game is over.
- The game ends once you reach your objective.

## Cards

### Goals

You goal depends on the first card you draw:

#### Black cards

Black cards: you must defeat the number of enemies given by the card.

#### Heats

You must gather at least 20 + the number on the card in health points.

#### Diamonds

You must gather as many items as possible until their value reach
10 times the on the card.


### Items

Items are worth the number on the card. `A`, `J`, `Q` and `K` are worth 1 point.
Jokers are worth any amount of points you need.


### Places

If you reach a black card, this means you have reached an enemy.
The enemy's health is indicated by the number on the card. `A`, `J`, `Q`, `K`
and jokers have 13 health points.

If you reach a diamond card, you are allowed to get another card from the deck
to use as an item.

If you reach a hearts card, you gain one health point.
