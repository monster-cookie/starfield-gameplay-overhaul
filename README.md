# Venworks Gameplay Overhaul

This is a overhaul of the core systems with a focus on scaled leveling and exploration

## 10k Foot View
- Overall the game should shift from XP/Level generation to exploration and challenges
- Perks will be minimized and focuses on passive functionality 
  - Active skills and buffs will come from active kill challenges, bosses, lootable book
    - Some will be temporary (random duration) some will be permanent
- Starborn Temples and Powers Changes
  - Powers will no longer come from the temples but instead will need to be harvested by killing starborn. 
  - The temples will now be starborn camps you can either go to them via the eye quests or find them exploring.
    - Exploring the option of killing the eye quests they are a stupid setup but may break things
- Backgrounds mostly will stay the same but will have additional functionality
  - There will new one and will try to give unique quests and main/side quest dialog examples the diplomat custom main quest lines. 
- Traits
  - Mostly will be left alone with new additions may add advanced stuff here as you will still only get 3 traits
- Refactor the base Player and NPC perks to scale damage, stats, and DR as you level and progress 
  - May have to fight a cap on the ranks I know we can go at least to 20 (BGS has one that does) but knowing the engine we can probably go to 254
  - Hoping this can replace the cloak function on Scale The World
- Only planned combat change is each weapon class/ammo type should provide a consistent passive benefit
  - Random elemental damage from lasers
  - Armor penetration from automatic rifles
  - Critical Damage from single shot rifles
  - Damage increase from burst fire
  - AOE damage from shotguns
  - Explosion damage from heavy weapon ???? 
    - Probably should be unique benefit for each heavy weapon
- Implement a reactive effect buff system where while the buff is active and you are hit this happens.

## Sections

- [To Do List](./Documentation/Todo.md)
- [Backgrounds](./Documentation/Backgrounds.md)
- [Traits](./Documentation/Traits.md)
- [Perks](./Documentation/Perks.md)
- [Powers](./Documentation/Powers.md)
- [Temple Mini Game](./Documentation/TempleMiniGame.md)
- [Buffs](./Documentation/Buffs.md)
- [Weapons](./Documentation/Weapons.md)
- [Armor](./Documentation/Armor.md)

## Tools
- VS Code
    - Open Source editor from Microsoft
    - [Get from Microsoft](https://code.visualstudio.com/download)

# Markdown
- GitHub's [Basic formatting and syntax](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax)
- GitHub's [Advanced Formatting, Tables](https://docs.github.com/en/get-started/writing-on-github/working-with-advanced-formatting/organizing-information-with-tables)
- Github's [Advanced Formatting, Task Lists](https://docs.github.com/en/get-started/writing-on-github/working-with-advanced-formatting/about-task-lists)
