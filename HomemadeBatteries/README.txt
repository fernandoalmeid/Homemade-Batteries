HOMEMADE BATTERIES — Project Zomboid Build 42 mod
==================================================

WHAT IT ADDS
------------
1. Homemade Battery
   - Craft from: 2x Scrap Metal, 2x Electrical Wire, some Acid (any acid-filled
     container, e.g. a can/bottle of acid — half a "unit" is consumed)
   - Tools needed (kept, not used up): Screwdriver, Pliers
   - Requires: Electrical skill 1+
   - Drains fast (crude, homemade build) — UseDelta 0.02 vs vanilla Battery's 0.007

2. Improved Battery
   - Upgrade recipe that consumes a Homemade Battery + 1x Scrap Metal,
     1x Scrap Electronics, 1x Electrical Wire, a bit more Acid, same tools
   - Requires: Electrical skill 3+
   - Much closer to a real battery — UseDelta 0.009

INSTALL
-------
1. Copy the "HomemadeBatteries" folder into your Zomboid mods folder:
   Windows: C:\Users\<you>\Zomboid\mods\
   Linux:   ~/Zomboid/mods/
2. Launch the game, go to Mods, enable "Homemade Batteries", and load/create a save.
3. In-game: right-click near a workbench/table with the ingredients and tools
   in reach, or open the crafting menu (B) → Electrical category.

FILES
-----
mod.info                                          - mod metadata
media/scripts/HomemadeBatteries_items.txt         - the two battery items
media/scripts/HomemadeBatteries_recipes.txt       - the two craftRecipes
media/lua/shared/Translate/EN/Recipes_EN.json     - English recipe names

NOTES / THINGS TO DOUBLE-CHECK IN-GAME
---------------------------------------
Build 42's crafting script format (craftRecipe) is still an evolving, somewhat
under-documented system that has changed between beta patches. I've based this
on confirmed vanilla examples (Battery, Scrap Metal, Electrical Wire, and the
CarveWhistle recipe), but a couple of things are worth testing and adjusting
once you're in-game:

- The "-fluid ... [Acid]" line assumes a container holding the vanilla "Acid"
  fluid (e.g. drain cleaner, car battery acid) is in reach. If it doesn't show
  up as expected, you can simplify by swapping it out for a solid item — e.g.
  replace that line and the fluid line with `item 1 [Base.DrainCleaner],` so
  it just consumes a bottle outright instead of partially draining it.
- I did not add a poster.png — the mod will still load fine, it'll just show
  a placeholder icon in the mod list. Drop a 256x256 PNG named poster.png next
  to mod.info if you want a custom one.
- Both items reuse the vanilla Battery icon/model so no new textures are
  needed. If you want a visually distinct look, you'd need to add your own
  icon (media/textures/Item_YourIcon.png) and point Icon = to it.

Adjust UseDelta, skill levels, or ingredient amounts directly in the two
.txt files to rebalance — no need to touch anything else.
