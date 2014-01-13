-- ProbablyEngine Rotation Packager
-- Custom Arms Warrior Rotation
-- Created on Dec 4th 2013 8:58 pm
ProbablyEngine.rotation.register_custom(269, "ImoWalker", {

  -------------------
  -- Start Racials --
  -------------------
  
  -- =^*~ Alliance ~*^= --
  -- Dwarves
  { "Stoneform", "player.health <= 75" },
 
  -- Humans
  { "Every Man for Himself", "player.state.charm" },
  { "Every Man for Himself", "player.state.fear" },
  { "Every Man for Himself", "player.state.incapacitate" },
  { "Every Man for Himself", "player.state.sleep" },
  { "Every Man for Himself", "player.state.stun" },
 
  -- Draenei
  { "Gift of the Naaru", "player.health <= 70", "player" },
 
  -- Gnomes
  { "Escape Artist", "player.state.root" },

  -- Night Elves
  { "Shadowmeld", "target.threat >= 80" },
  { "Shadowmeld", "focus.threat >= 80"},
  
  -- <,&~ Horde ~&,> --
  -- Forsaken
  { "Will of the Forsaken", "player.state.fear" },
  { "Will of the Forsaken", "player.state.charm" },
  { "Will of the Forsaken", "player.state.sleep" },
  
  -- _,-=%Pandaren%=-,_ --
  { "Quaking Palm", "modifier.interrupts" },

  -----------------
  -- End Racials --
  -----------------
  
  --------------------
  -- Start Rotation --
  --------------------
  
  -- Keybinds
  { "Paralysis", "modifier.shift", "mouseover" },
  { "Healing Sphere", "modifier.alt", "ground" }, 
  { "Leg Sweep", "modifier.control" },
  { "Ring of Peace", "modifier.control" },
  { "Charging Ox Wave", "modifier.control" },
  
  -- Get Fucked Button
  { "Touch of Death", "player.buff(Death Note)" },
  
  -- Survival
  { "Expel Harm", "player.health < 90" },
  { "Fortifying Brew", "player.health <= 55" },
  { "Nimble Brew", "player.state.fear" },
  { "Nimble Brew", "player.state.stun" },
  { "Nimble Brew", "player.state.horror" },
  { "Detox", { "player.dispellable(Detox)", "toggle.detox" }, "player" },
  { "Chi Brew", { "player.spell(Healing Elixirs).exists", "player.health <= 75", "player.chi <= 2" } },
  
  -- PvP
  { "Disable", "toggle.disable", "!target.debuff(Disable)"},
  
  -- Grapple Weapon Handle
  { "Grapple Weapon", { "target.class(Warrior)", "toggle.grapple" } },
  { "Grapple Weapon", { "target.class(Paladin)", "grapple" } },
  { "Grapple Weapon", { "target.class(Hunter)", "toggle.grapple" } },
  { "Grapple Weapon", { "target.class(DeathKnight)", "toggle.grapple" } },
  { "Grapple Weapon", { "target.class(Rogue)", "toggle.grapple" } },
  { "Grapple Weapon", { "target.class(Monk)", "toggle.grapple" } },
  { "Grapple Weapon", { "target.class(Druid)", "toggle.grapple" } },

  -- Interrupts
  { "Spear Hand Strike", "target.casting" },
  { "Grapple Weapon", "modifier.interrupts" },
  { "Leg Sweep", { "modifier.interrupts", "target.range <= 5" } },
  { "Ring of Peace", { "modifier.interrupts", "target.range <= 10" } },
  
  -- Cooldowns
  { "Invoke Xuen: The White Tiger", "modifier.cooldowns" },
  
  -- Talents
  { "Chi Wave", "player.energy <= 50" },
  { "Zen Sphere", "!player.buff(Zen Sphere)", "player" },
  { "Zen Sphere", { "!focus.buff(Zen Sphere)", "focus.friend" }, "focus" },
  { "Chi Burst" },
  
  -- Multi-Target
  { "Rushing Jade Wind", "modifier.multitarget" },
  { "Spinning Crane Kick", "modifier.multitarget" },
  
  --Brews
  { "Energizing Brew", "player.energy <= 45" },
  { "Tigereye Brew", "player.buff(Tigereye Brew).count >= 10" },
  { "Chi Brew", { "player.chi <= 1", "!modifier.last" } },
  
  -- Player Killer
  {{
	{ "Rising Sun Kick", "!target.debuff(Rising Sun Kick)" },
	{ "Jab", { "player.chi < 3", "player.spell(Fists of Fury).cooldown = 0" } },
	{ "Tigereye Brew", "toggle.tebpk" },
	{ "Fists of Fury", "target.range < 10" },
	{ "Rising Sun Kick" },
	{ "Fists of Fury", {"player.energy < 30", "target.range <= 8"} },
	{ "Tiger Palm", "player.buff(Tiger Power).duration <= 2" },
	{ "Tiger Palm", "player.buff(Combo Breaker: Tiger Palm)" },
	{ "Blackout Kick", "player.buff(Combo Breaker: Blackout Kick)" },
	{ "Blackout Kick", { "player.chi >= 2", "target.debuff(Rising Sun Kick)", "player.buff(Tiger Power)"} },
	{ "Fists of Fury", {"player.energy < 30", "target.range <= 8"} },
	{ "Jab" }
  },{ "target.health <= 35" }},
  
  -- Rotation
  { "Rising Sun Kick" },
  { "Fists of Fury", { "player.energy < 30", "target.range <= 8", "target.health > 60" } },
  { "Tiger Palm", "player.buff(Tiger Power).duration <= 2" },
  { "Tiger Palm", "player.buff(Combo Breaker: Tiger Palm)" },
  { "Blackout Kick", "player.buff(Combo Breaker: Blackout Kick)" },
  { "Blackout Kick", { "player.chi >= 2", "target.debuff(Rising Sun Kick)", "player.buff(Tiger Power)"} },
  { "Fists of Fury", { "player.energy < 30", "target.range <= 8" } },
  { "Jab" },
  
  ------------------
  -- End Rotation --
  ------------------
  
  },{ 
  
  ---------------
  -- OOC Begin --
  ---------------
  
  -- Survival
  { "Expel Harm", "player.health < 100" },
  
  -- Keybinds
  { "Paralysis", "modifier.shift", "mouseover" },
  { "Healing Sphere", "modifier.alt", "ground" }, 
  { "Crackling Jade Lightning", "modifier.control", "target" },
  
  -- Buffs
  { "Legacy of the White Tiger", "!player.buff(Legacy of the White Tiger).any" },
  { "Legacy of the Emperor", "!player.buff(Legacy of the Emperor),any", "!player.buff(Mark of the Wild).any", "!player.buff(Blessing of Kings).any", "!player.buff(Legacy of the White Tiger).any", },

  -------------
  -- OOC End --
  -------------
  }, function()
  ProbablyEngine.toggle.create('grapple', 'Interface\\Icons\\ability_warrior_disarm', 'Grapple Weapon', 'Toggle Grappling a Melee Opponent')
  ProbablyEngine.toggle.create('tebpk', 'Interface\\Icons\\ability_monk_tigereyebrandy', 'TeB PK Sequencer', 'Integrate TeB Into the PK Sequence')
  end)