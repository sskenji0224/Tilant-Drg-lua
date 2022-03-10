--"Advanced" BLU.lua--
---Make sure you rename it after your character name, for example  xXSephirothFanBoiXx.lua

--Basically rips out some of my personalization, utility sets, and Tizona AM3 DT sets. So there is little difference between this and my personal one.

----------------------
--BUG WARNING--
----------------------

--I basically took my gearswap lua, ripped a lot of things out. Did some minor testing to make sure things work, and then put it on the interwebz.
--So, there is a chance of a bug, especially in the most basic version. So please message me either in game, discord, the BG forums (PM works there too), reddit, etc.  If you try, you will find me.
---Oh, but not AH.com, that won't work.
----------------------

---Thanks to various sources such as LS members and BlueGartr for the help building this GearSwap.

-------------------------------------
---------                        ---------
------                               ------
---         Start of Gear         ---
------                               ------
---------                        ---------
------------------------------------- 

--//gs export, go to the export folder in your Windower addon gearswap folder, add it here, call it as seen in sets below.--

function get_sets()
    maps()

	
    
    sets.Idle = {}
    --Idle Sets--
    sets.Idle.index = { 'Standard', 'DTRefresh', 'DT' }
    Idle_ind = 1
    sets.Idle.Standard = {}

    sets.Idle.DTRefresh = {
	main="Bolelabunga",
    sub="Bunzi's Rod",
    ammo="Staunch Tathlum +1",
    head={ name="Rawhide Mask", augments={'HP+50','Accuracy+15','Evasion+20',}},
    body={ name="Amalric Doublet +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck={ name="Bathy Choker +1", augments={'Path: A',}},
    waist="Fucho-no-Obi",
    left_ear="Infused Earring",
    right_ear="Eabani Earring",
    left_ring="Stikini Ring +1",
    right_ring="Defending Ring",
    back={ name="Rosmerta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Magic Damage +5','"Mag.Atk.Bns."+10',}},
	}

	sets.Idle.DT = {
	ammo="Staunch Tathlum +1",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck={ name="Bathy Choker +1", augments={'Path: A',}},
    waist="Flume Belt +1",
    left_ear="Infused Earring",
    right_ear="Eabani Earring",
    left_ring="Stikini Ring +1",
    right_ring="Defending Ring",
    back="Solemnity Cape",
	}
	
    sets.Idle.Town = set_combine(sets.Idle.Standard, {})

    --TP Sets--
    sets.TP = {}
    sets.TP.index = {'CapHaste', 'AccuracyLite', 'AccuracyMid', 'AccuracyFull' }
    TP_ind = 1 --Default set,  is Capped Haste, 2, AccLite, etc

    --+11 DW for capping with DW3 and capped magic haste--    
    sets.TP.CapHaste = {
	ammo="Coiste Bodhar",
    head={ name="Adhemar Bonnet +1", augments={'STR+12','DEX+12','Attack+20',}},
    body={ name="Adhemar Jacket +1", augments={'STR+12','DEX+12','Attack+20',}},
    hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
    legs={ name="Samnuha Tights", augments={'STR+8','DEX+9','"Dbl.Atk."+3','"Triple Atk."+2',}},
    feet={ name="Herculean Boots", augments={'Accuracy+27','"Triple Atk."+2','DEX+6',}},
    neck="Asperity Necklace",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Cessance Earring",
    right_ear="Telos Earring",
    left_ring="Epona's Ring",
    right_ring="Petrov Ring",
    back={ name="Rosmerta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Magic Damage +5','"Mag.Atk.Bns."+10',}},
	}

    sets.TP.AccuracyLite = {
	ammo="Coiste Bodhar",
    head={ name="Adhemar Bonnet +1", augments={'STR+12','DEX+12','Attack+20',}},
    body={ name="Adhemar Jacket +1", augments={'STR+12','DEX+12','Attack+20',}},
    hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
    legs={ name="Samnuha Tights", augments={'STR+8','DEX+9','"Dbl.Atk."+3','"Triple Atk."+2',}},
    feet={ name="Herculean Boots", augments={'Accuracy+27','"Triple Atk."+2','DEX+6',}},
    neck="Asperity Necklace",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Cessance Earring",
    right_ear="Telos Earring",
    left_ring="Epona's Ring",
    right_ring="Petrov Ring",
    back={ name="Rosmerta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Magic Damage +5','"Mag.Atk.Bns."+10',}},
	}

    sets.TP.AccuracyMid = {
	ammo="Coiste Bodhar",
    head={ name="Adhemar Bonnet +1", augments={'STR+12','DEX+12','Attack+20',}},
    body={ name="Adhemar Jacket +1", augments={'STR+12','DEX+12','Attack+20',}},
    hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
    legs={ name="Samnuha Tights", augments={'STR+8','DEX+9','"Dbl.Atk."+3','"Triple Atk."+2',}},
    feet={ name="Herculean Boots", augments={'Accuracy+27','"Triple Atk."+2','DEX+6',}},
    neck="Asperity Necklace",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Cessance Earring",
    right_ear="Telos Earring",
    left_ring="Epona's Ring",
    right_ring="Petrov Ring",
    back={ name="Rosmerta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Magic Damage +5','"Mag.Atk.Bns."+10',}},
	}

    sets.TP.AccuracyFull = {
	ammo="Coiste Bodhar",
    head={ name="Adhemar Bonnet +1", augments={'STR+12','DEX+12','Attack+20',}},
    body={ name="Adhemar Jacket +1", augments={'STR+12','DEX+12','Attack+20',}},
    hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
    legs={ name="Samnuha Tights", augments={'STR+8','DEX+9','"Dbl.Atk."+3','"Triple Atk."+2',}},
    feet={ name="Herculean Boots", augments={'Accuracy+27','"Triple Atk."+2','DEX+6',}},
    neck="Asperity Necklace",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Cessance Earring",
    right_ear="Telos Earring",
    left_ring="Epona's Ring",
    right_ring="Petrov Ring",
    back={ name="Rosmerta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Magic Damage +5','"Mag.Atk.Bns."+10',}},
	}

    --Tizona AM3--
     --Changes gearsets while AM3 is on
    
    sets.TizonaAM3 = {}
    sets.TizonaAM3.index = { 'CapHaste', 'AccuracyLite', 'AccuracyMid', 'AccuracyFull' }
    TizonaAM3_ind = 1 -- In the same rule as the TP Toggle so it toggles it at the same time
    
    sets.TizonaAM3.CapHaste = set_combine(sets.TP.CapHaste, {})

    sets.TizonaAM3.AccuracyLite = set_combine(sets.TP.AccuracyLite, {})

    sets.TizonaAM3.AccuracyMid = set_combine(sets.TP.AccuracyMid, {})

    sets.TizonaAM3.AccuracyFull = set_combine(sets.TP.AccuracyFull, {})
    
	--DW Sets--
	sets.DW = {}
    sets.DW.index = {'Low', 'High'}
    DW_ind = 1

	--DW III with Haste II, +31 DW needed to cap with only Flutter on--
	--ChangeGear(set_combine(sets.BlueMagic.INT[sets.BlueMagic.INT.index[MAB_ind]],{head = "Pixie Hairpin +1", ring1 = "Archon Ring"}))
	
    sets.DW.Low = {}
	--Essentially for being slowed, weakened, etc
	sets.DW.High = {}
	
    --DT Sets--
    sets.DT = {}
    sets.DT.index = { 'DT', 'Hybrid', 'MDT', 'MEVA', 'DTAcc' }
    DT_ind = 1 

    sets.DT.DT = {}

    sets.DT.Hybrid = {}

    --Shell V on. Need 21% MDT, 19% with sheltered.
    sets.DT.MDT= {}
    
    sets.DT.MEVA = {}
    
	sets.DT.DTAcc = {}
	
	sets.TizonaDT = {}
    sets.TizonaDT.index = { 'DT', 'Hybrid', 'MDT', 'MEVA', 'DTAcc' }
    TizonaDT_ind = 1 

    sets.TizonaDT.DT = set_combine(sets.DT.DT, {})

    sets.TizonaDT.Hybrid = set_combine(sets.DT.Hybrid, {})

    sets.TizonaDT.MDT = set_combine(sets.DT.MDT, {})
    
    sets.TizonaDT.MEVA = set_combine(sets.DT.MEVA, {})
    
	sets.TizonaDT.DTAcc = set_combine(sets.DT.DTAcc, {})
	
    --Weaponskill Sets--
    sets.WS = {}

    sets.Requiescat = {
	ammo="Coiste Bodhar",
    head={ name="Herculean Helm", augments={'Attack+29','Weapon skill damage +4%','DEX+8','Accuracy+13',}},
    body="Gleti's Cuirass",
    hands="Gleti's Gauntlets",
    legs="Gleti's Breeches",
    feet="Gleti's Boots",
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    right_ear="Brutal Earring",
    left_ring="Ifrit Ring +1",
    right_ring="Epaminondas's Ring",
	}

    sets.Requiescat.index = { 'AttackUncap', 'AttackCap', 'Accuracy' }
    Requiescat_ind = 1

    sets.Requiescat.AttackUncap = {}
	
	sets.Requiescat.AttackCap = set_combine(sets.Requiescat.AttackUncap, {})
	
    sets.Requiescat.Accuracy = {}

    sets.CDC = {
	ammo="Coiste Bodhar",
    head={ name="Adhemar Bonnet +1", augments={'STR+12','DEX+12','Attack+20',}},
    body="Gleti's Cuirass",
    hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
    legs="Gleti's Breeches",
    feet="Gleti's Boots",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    right_ear="Mache Earring +1",
    left_ring="Epona's Ring",
    right_ring="Begrudging Ring",
	}

    sets.CDC.index = { 'AttackUncap', 'AttackCap', 'Accuracy' }
    CDC_ind = 1

    sets.CDC.AttackUncap = {ammo="Coiste Bodhar",
    head={ name="Adhemar Bonnet +1", augments={'STR+12','DEX+12','Attack+20',}},
    body="Gleti's Cuirass",
    hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
    legs="Gleti's Breeches",
    feet="Gleti's Boots",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    right_ear="Mache Earring +1",
    left_ring="Epona's Ring",
    right_ring="Begrudging Ring",}

    sets.CDC.AttackCap = set_combine(sets.CDC.AttackUncap, {ammo="Coiste Bodhar",
    head={ name="Adhemar Bonnet +1", augments={'STR+12','DEX+12','Attack+20',}},
    body="Gleti's Cuirass",
    hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
    legs="Gleti's Breeches",
    feet="Gleti's Boots",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    right_ear="Mache Earring +1",
    left_ring="Epona's Ring",
    right_ring="Begrudging Ring",})
    
    sets.CDC.Accuracy = {ammo="Coiste Bodhar",
    head={ name="Adhemar Bonnet +1", augments={'STR+12','DEX+12','Attack+20',}},
    body="Gleti's Cuirass",
    hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
    legs="Gleti's Breeches",
    feet="Gleti's Boots",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    right_ear="Mache Earring +1",
    left_ring="Epona's Ring",
    right_ring="Begrudging Ring",}

    sets.Expiacion = {
	ammo="Coiste Bodhar",
    head={ name="Herculean Helm", augments={'Attack+29','Weapon skill damage +4%','DEX+8','Accuracy+13',}},
    body="Gleti's Cuirass",
    hands="Gleti's Gauntlets",
    legs="Gleti's Breeches",
    feet="Gleti's Boots",
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    right_ear="Brutal Earring",
    left_ring="Ifrit Ring +1",
    right_ring="Epaminondas's Ring",
	}

    sets.Expiacion.index = { 'AttackUncap', 'AttackCap', 'Accuracy' }
    Expiacion_ind = 1

    sets.Expiacion.AttackUncap = {
	ammo="Coiste Bodhar",
    head={ name="Herculean Helm", augments={'Attack+29','Weapon skill damage +4%','DEX+8','Accuracy+13',}},
    body="Gleti's Cuirass",
    hands="Gleti's Gauntlets",
    legs="Gleti's Breeches",
    feet="Gleti's Boots",
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    right_ear="Brutal Earring",
    left_ring="Ifrit Ring +1",
    right_ring="Epaminondas's Ring",
	}

	sets.Expiacion.AttackCap = set_combine(sets.Expiacion.AttackUncap, {
	ammo="Coiste Bodhar",
    head={ name="Herculean Helm", augments={'Attack+29','Weapon skill damage +4%','DEX+8','Accuracy+13',}},
    body="Gleti's Cuirass",
    hands="Gleti's Gauntlets",
    legs="Gleti's Breeches",
    feet="Gleti's Boots",
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    right_ear="Brutal Earring",
    left_ring="Ifrit Ring +1",
    right_ring="Epaminondas's Ring",
	})
	
    sets.Expiacion.Accuracy = {
	ammo="Coiste Bodhar",
    head={ name="Herculean Helm", augments={'Attack+29','Weapon skill damage +4%','DEX+8','Accuracy+13',}},
    body="Gleti's Cuirass",
    hands="Gleti's Gauntlets",
    legs="Gleti's Breeches",
    feet="Gleti's Boots",
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    right_ear="Brutal Earring",
    left_ring="Ifrit Ring +1",
    right_ring="Epaminondas's Ring",
	}

    sets.SanguineBlade = {}
	

    -----------
    --Clubs-- These indexs probably will never need to be toggled,
    ----------- but they exist anyway
    sets.Judgment = {}

    sets.Judgment.index = { 'AttackUncap', 'AttackCap', 'Accuracy' }
    Judgment_ind = 1
	
    sets.Judgment.AttackUncap = set_combine(sets.Expiacion.Attack, {})
	
    sets.Judgment.AttackCap = set_combine(sets.Expiacion.Attack, {})

    sets.Judgment.Accuracy = set_combine(sets.Expiacion.Accuracy, {})
    
    sets.BlackHalo = {}

    sets.BlackHalo.index = { 'AttackUncap', 'AttackCap', 'Accuracy' }
    BlackHalo_ind = 1
    sets.BlackHalo.AttackUncap = {}
    
    sets.BlackHalo.AttackCap = set_combine(sets.BlackHalo.Attack, {})
	
    sets.BlackHalo.Accuracy = set_combine(sets.BlackHalo.Attack, {})
    
    sets.Realmrazer = {}

    sets.Realmrazer.index = { 'AttackUncap', 'AttackCap', 'Accuracy' }
    Realmrazer_ind = 1
    sets.Realmrazer.AttackUncap = {}
	
	sets.Realmrazer.AttackCap = set_combine(sets.Realmrazer.Attack, {})

    sets.Realmrazer.Accuracy = set_combine(sets.Realmrazer.Attack, {})

    sets.FlashNova = {}
	
    -------------------
    --Blue Magic Sets--
    -------------------
    sets.BlueMagic = {}

    sets.BlueMagic.STR = {}

    sets.BlueMagic.STRDEX = set_combine(sets.BlueMagic.STR, {})

    sets.BlueMagic.STRVIT = set_combine(sets.BlueMagic.STR, {})

    sets.BlueMagic.STRMND = set_combine(sets.BlueMagic.STR, {})

    sets.BlueMagic.AGI = set_combine(sets.BlueMagic.STR, {})
    --------------------------------------------------
    sets.BlueMagic.INT = {}
    sets.BlueMagic.INT.index = { "MAB", "MACC", "EffectOnly" }
    MAB_ind = 1

    sets.BlueMagic.INT.MAB = {
	ammo="Pemphredo Tathlum",
    body={ name="Cohort Cloak +1", augments={'Path: A',}},
    hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
    legs={ name="Amalric Slops +1", augments={'MP+80','"Mag.Atk.Bns."+25','Enmity-6',}},
    feet={ name="Amalric Nails +1", augments={'Mag. Acc.+20','"Mag.Atk.Bns."+20','"Conserve MP"+7',}},
    neck="Baetyl Pendant",
    waist="Eschan Stone",
    left_ear="Friomisi Earring",
    right_ear="Regal Earring",
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    right_ring="Shiva Ring +1",
    back={ name="Rosmerta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Magic Damage +5','"Mag.Atk.Bns."+10',}},
	}
    
    sets.BlueMagic.INT.MACC = {
	ammo="Pemphredo Tathlum",
    body={ name="Cohort Cloak +1", augments={'Path: A',}},
    hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
    legs={ name="Amalric Slops +1", augments={'MP+80','"Mag.Atk.Bns."+25','Enmity-6',}},
    feet={ name="Amalric Nails +1", augments={'Mag. Acc.+20','"Mag.Atk.Bns."+20','"Conserve MP"+7',}},
    neck="Baetyl Pendant",
    waist="Eschan Stone",
    left_ear="Friomisi Earring",
    right_ear="Regal Earring",
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    right_ring="Shiva Ring +1",
    back={ name="Rosmerta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Magic Damage +5','"Mag.Atk.Bns."+10',}},
	}
	
	    sets.BlueMagic.INT.EffectOnly = {}
    -----------------------------------------

    --CP cap 50%, CP Received cap 30%--
    sets.BlueMagic.Cures = {}
    
    sets.BlueMagic.SelfCures = {}
	
	  sets.BlueMagic.WhiteWind = {}

    --Conserve MP Gear, 55%, FC, 17%--
    sets.BlueMagic.Buffs = {}

    sets.BlueMagic.Battery = set_combine(sets.BlueMagic.Buffs, {})

    --Telchine Regen+ potency augments--
    sets.BlueMagic.Regeneration = set_combine(sets.BlueMagic.Buffs, {})
	
	--For physical spells with additional effects--
    sets.BlueMagic.Stun = {}

	--Just for landing things like sleep--
    sets.BlueMagic.MagicAccuracy = {}

    --Occultation is every 50 skill, magic barrier equals skill, anything that isn't /50 doesn't matter.
    ---For example diamondhide caps at 500
	---Mastered Skill w/ merits is 472
	
    sets.BlueMagic.Skill = {}

	--Aim for empy hands and FC+ with skill /50
	---Recast cap is +49 FC, this excludes erratic flutter, which really just means 64 total.
	----If you are using the Empyrean hands, its +23 FC to cap recast.
	
	sets.BlueMagic.Occultation = {}
	
    sets.BlueMagic.Enmity = {}

	--Reaving Wind, Feather Tickle, Osmosis, etc
	sets.BlueMagic.FastRecast = {}

    --Enhancing Sets--
    
    sets.Enhancing = set_combine(sets.BlueMagic.Buffs, {})
	
	    sets.Enhancing.Bar = set_combine(sets.BlueMagic.Buffs, {})
    
    sets.Enhancing.Phalanx = set_combine(sets.BlueMagic.Buffs, {})
    
    sets.Enhancing.Aquaveil = set_combine(sets.BlueMagic.Buffs, {})
    
    sets.Enhancing.ProShell = set_combine(sets.BlueMagic.Buffs, {})

    sets.Utility = {}
    
    sets.Utility.TH = {}
	--Comes on when slept, terrored, stunned, and petrified--
    --Capped DT and -42% MDT, assumes shell etc may be gone after being unable to act, but doesn't really care--
    sets.Utility.DerpDT = {}
    
    sets.Utility.Doom = {}
	
    --Job Ability Sets--

    sets.JA = {}

    sets.JA.ChainAffinity = {}

    sets.JA.BurstAffinity = {}

    sets.JA.Efflux = {}

    sets.JA.AzureLore = {}

    sets.JA.Provoke = set_combine(sets.BlueMagic.Enmity, {})

    sets.JA.Warcry = set_combine(sets.BlueMagic.Enmity, {})


    --Precast Sets--
    sets.precast = {
	ammo="Sapience Orb",
    head={ name="Herculean Helm", augments={'"Mag.Atk.Bns."+3','"Fast Cast"+6',}},
    body={ name="Taeon Tabard", augments={'"Fast Cast"+5',}},
    hands={ name="Leyline Gloves", augments={'Accuracy+14','Mag. Acc.+13','"Mag.Atk.Bns."+13','"Fast Cast"+2',}},
    legs={ name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
    feet={ name="Carmine Greaves +1", augments={'HP+80','MP+80','Phys. dmg. taken -4',}},
    neck="Orunmila's Torque",
    waist="Witful Belt",
    left_ear="Loquac. Earring",
    right_ear="Enchntr. Earring +1",
    left_ring="Prolix Ring",
    right_ring="Kishar Ring",
    back="Swith Cape",
	}

    sets.precast.FC = {
	ammo="Sapience Orb",
    head={ name="Herculean Helm", augments={'"Mag.Atk.Bns."+3','"Fast Cast"+6',}},
    body={ name="Taeon Tabard", augments={'"Fast Cast"+5',}},
    hands={ name="Leyline Gloves", augments={'Accuracy+14','Mag. Acc.+13','"Mag.Atk.Bns."+13','"Fast Cast"+2',}},
    legs={ name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
    feet={ name="Carmine Greaves +1", augments={'HP+80','MP+80','Phys. dmg. taken -4',}},
    neck="Orunmila's Torque",
    waist="Witful Belt",
    left_ear="Loquac. Earring",
    right_ear="Enchntr. Earring +1",
    left_ring="Prolix Ring",
    right_ring="Kishar Ring",
    back="Swith Cape",
	}

    sets.precast.FC.Standard = {
	ammo="Sapience Orb",
    head={ name="Herculean Helm", augments={'"Mag.Atk.Bns."+3','"Fast Cast"+6',}},
    body={ name="Taeon Tabard", augments={'"Fast Cast"+5',}},
    hands={ name="Leyline Gloves", augments={'Accuracy+14','Mag. Acc.+13','"Mag.Atk.Bns."+13','"Fast Cast"+2',}},
    legs={ name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
    feet={ name="Carmine Greaves +1", augments={'HP+80','MP+80','Phys. dmg. taken -4',}},
    neck="Orunmila's Torque",
    waist="Witful Belt",
    left_ear="Loquac. Earring",
    right_ear="Enchntr. Earring +1",
    left_ring="Prolix Ring",
    right_ring="Kishar Ring",
    back="Swith Cape",
	}

    --Empy body stacks with FC, 80% cap, empy hands must be on at time of casting (mid) for effect--
    sets.precast.FC.Blue = set_combine(sets.precast.FC.Standard, {
	ammo="Sapience Orb",
    head={ name="Herculean Helm", augments={'"Mag.Atk.Bns."+3','"Fast Cast"+6',}},
    body={ name="Taeon Tabard", augments={'"Fast Cast"+5',}},
    hands={ name="Leyline Gloves", augments={'Accuracy+14','Mag. Acc.+13','"Mag.Atk.Bns."+13','"Fast Cast"+2',}},
    legs={ name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
    feet={ name="Carmine Greaves +1", augments={'HP+80','MP+80','Phys. dmg. taken -4',}},
    neck="Orunmila's Torque",
    waist="Witful Belt",
    left_ear="Loquac. Earring",
    right_ear="Enchntr. Earring +1",
    left_ring="Prolix Ring",
    right_ring="Kishar Ring",
    back="Swith Cape",
	})
end

---End of Gear---------------------------------------------------------------------------------------------------------------------------------------------------------

-------------------------------------
---------                   ---------
------                         ------
---         Start of Maps         ---
------                         ------
---------                   ---------
------------------------------------- 

-------------------------
--   BLU Spells List   --
-------------------------

--Place spells into either Physical or Magical, and then further seperate them into type--
--Anything In Physical or Magical is only for making a rule, it won't swap simply for being in that category--
function maps()
    --All physical spells go here then they are filtered specifically. Add accordingly.
    PhysicalSpells = S {
        'Asuran Claws', 'Bilgestorm', 'Bludgeon', 'Body Slam', 'Feather Storm', 'Mandibular Bite', 'Queasyshroom',
        'Power Attack', 'Ram Charge', 'Saurian Slide', 'Screwdriver', 'Sickle Slash', 'Smite of Rage',
        'Spinal Cleave', 'Spiral Spin', 'Sweeping Gouge', 'Terror Touch', 'Battle Dance', 'Bloodrake',
        'Death Scissors', 'Dimensional Death', 'Empty Thrash', 'Quadrastrike', 'Uppercut', 'Tourbillion',
        'Thrashing Assault', 'Vertical Cleave', 'Whirl of Rage', 'Amorphic Spikes', 'Barbed Crescent',
        'Claw Cyclone', 'Disseverment', 'Foot Kick', 'Frenetic Rip', 'Goblin Rush', 'Hysteric Barrage',
        'Paralyzing Triad', 'Seedspray', 'Sinker Drill', 'Vanity Dive', 'Cannonball', 'Delta Thrust',
        'Glutinous Dart', 'Grand Slam', 'Quad. Continuum', 'Benthic Typhoon', 'Helldive',
        'Hydro Shot', 'Jet Stream', 'Pinecone Bomb', 'Wild Oats', 'Heavy Strike'
    }

    PhysicalBlueMagic_STR = S {
        'Asuran Claws', 'Bilgestorm', 'Battle Dance', 'Bludgeon', 'Bloodrake', 'Death Scissors', 
        'Dimensional Death', 'Empty Thrash', 'Quadrastrike', 'Uppercut', 'Tourbillion', 'Sinker Drill', 
        'Thrashing Assault', 'Vertical Cleave', 'Whirl of Rage', 'Saurian Slide', 'Sinal Cleave', 
        'Paralyzing Triad'
    }

    PhysicalBlueMagic_DEX = S {
        'Amorphic Spikes', 'Barbed Crescent', 'Claw Cyclone', 'Disseverment', 'Foot Kick',
        'Frenetic Rip', 'Goblin Rush', 'Hysteric Barrage', 'Seedspray',
        'Vanity Dive'
    }

    PhysicalBlueMagic_VIT = S {
        'Cannonball', 'Delta Thrust', 'Glutinous Dart', 'Grand Slam', 'Quad. Continuum',
        'Sprout Smack'
    }

    PhysicalBlueMagic_AGI = S {
        'Benthic Typhoon', 'Helldive', 'Hydro Shot', 'Jet Stream', 'Pinecone Bomb', 'Wild Oats',
        'Spiral Spin'
    }

    --All nuking spells go here then they are filtered specifically. Add accordingly.
    MagicalSpells = S {
        'Acrid Stream', 'Anvil Lightning', 'Crashing Thunder', 'Charged Whisker', 'Droning Whirlwind',
        'Firespit', 'Foul Waters', 'Gates of Hades', 'Leafstorm', 'Molting Plumage', 'Magic Barrier', 'Nectarous Deluge',
        'Polar Roar', 'Regurgitation', 'Rending Deluge', 'Scouring Spate', 'Searing Tempest', 'Silent Storm',
        'Spectral Floe', 'Subduction', 'Sudden Lunge', 'Tem. Upheaval', 'Thermal Pulse', 'Thunderbolt', 'Uproot',
        'Water Bomb', 'Atra. Libations', 'Blood Saber', 'Dark Orb', 'Death Ray', 'Eyes On Me', 'Blazing Bound',
        'Evryone. Grudge', 'Palling Salvo', 'Tenebral Crush', 'Blinding Fulgor', 'Diffusion Ray', 'Ice Break',
        'Magic Hammer', 'Rail Cannon', 'Retinal Glare', 'Embalming Earth', 'Entomb', 'Sandspin', 'Vapor Spray',  'Osmosis',
		'Feather Tickle', 'Reaving Wind',
    }
    --Any nuking spell that doesnt have certain armor to enhance it like the pixie hairpin +1 for dark nukes--
    BlueMagic_INT = S {
        'Acrid Stream', 'Anvil Lightning', 'Crashing Thunder', 'Charged Whisker', 'Droning Whirlwind', 'Firespit',
        'Foul Waters', 'Gates of Hades', 'Leafstorm', 'Molting Plumage', 'Nectarous Deluge', 'Polar Roar',
        'Regurgitation', 'Rending Deluge', 'Scouring Spate', 'Searing Tempest', 'Silent Storm', 'Spectral Floe',
        'Subduction', 'Tem. Upheaval', 'Thermal Pulse', 'Thunderbolt', 'Uproot', 'Water Bomb'
    }

    BlueMagic_Dark = S {
        'Blood Saber', 'Dark Orb', 'Death Ray', 'Eyes On Me',
        'Evryone. Grudge', 'Palling Salvo', 'Tenebral Crush'
    }

    BlueMagic_Light = S {
        'Blinding Fulgor', 'Diffusion Ray', 'Magic Hammer', 'Rail Cannon', 'Retinal Glare'
    }

    BlueMagic_Earth = S {
        'Embalming Earth', 'Entomb', 'Sandspin'
    }

    BlueMagic_Accuracy = S {
        '1000 Needles', 'Absolute Terror', 'Auroral Drape', 'Awful Eye', 'Blastbomb', 'Blank Gaze', 'Blistering Roar', 'Blitzstrahl',
        'Blood Drain', 'Blood Saber', 'Chaotic Eye', 'Cimicine Discharge', 'Cold Wave', 'Digest', 'Corrosive Ooze',
        'Demoralizing Roar', 'Dream Flower', 'Enervation', 'Filamented Hold', 'Frightful Roar',
        'Geist Wall', 'Hecatomb Wave', 'Infrasonics', 'Light of Penance', 'Lowing', 'Mind Blast', 'Mortal Ray',
        'MP Drainkiss', 'Sheep Song', 'Soporific', 'Sound Blast', 'Sprout Smack', 'Stinking Gas','Osmosis', 'Cruel Joke'
    }

    BlueMagic_Breath = S {
        'Bad Breath', 'Flying Hip Press', 'Final Sting', 'Frost Breath', 'Heat Breath', 'Magnetite Cloud',
        'Poison Breath', 'Radiant Breath', 'Self Destruct', 'Thunder Breath', 'Vapor Spray', 'Wind Breath'
    }

    BlueMagic_Buffs = S {
        'Barrier Tusk', 'Cocoon', 'Carcharian Verve', 'Erratic Flutter', 'Harden Shell', 'Orcish Counterstance',
        'Plasma Charge', 'Pyric Bulwark', 'Memento Mori', 'Mighty Guard', 'Nat. Meditation', 'Reactor Cool', 'Saline Coat', 
        'Feather Barrier','Refueling','Warm-Up', 'Zephyr Mantle', 'Reactor Cool', 'Plasma Charge', 'Amplification',   
    }
--- Occultation gets it's own set ---
    BlueMagic_Skill = S {
        'Diamondhide', 'Metallic Body', 'Magic Barrier', 'Atra. Libations',
    }

    BlueMagic_Healing = S {
        'Healing Breeze', 'Magic Fruit', 'Plenilune Embrace', 'Pollen', 'Restoral', 'Wild Carrot'
    }
--- Acc + Macc + FC "Stun" set ---
    BlueMagic_Stun = S {
        'Frypan', 'Head Butt', 'Sudden Lunge', 'Tail slap', 'Sub-zero Smash', 'Sweeping Gouge'
    }
    BlueMagic_Enmity = S {
        'Actinic Burst', 'Exuviation', 'Fantod', 'Jettatura', 'Temporal Shift'
    }
	
	BlueMagic_FastRecast = S {
		'Osmosis', 'Feather Tickle', 'Reaving Wind', 
	}
end

------------------------
--   Town Gear List   --
------------------------ 

Town = S {
    "Eastern Adoulin", "Western Adoulin", "Celennia Memorial Library"
}

---End of Maps----------------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------
---------                    ---------
------                          ------
---         Start of Rules         ---
------                          ------
---------                    ---------
-------------------------------------- 


----------------------------------------------
--   Macro and Style Change on Job Change   --
----------------------------------------------
function set_macros(sheet,book)
    if book then 
        send_command('@input /macro book '..tostring(book)..';wait .1;input /macro set '..tostring(sheet))
        return
    end
    send_command('@input /macro set '..tostring(sheet))
end

function set_style(sheet)
    send_command('@input ;wait 5.0;input /lockstyleset '..sheet)
    add_to_chat (21, 'Your Lockstyle looks like shit, and you should feel bad')
    add_to_chat (55, 'You are on '..('BLU '):color(5)..''..('btw. '):color(55)..''..('Macros set!'):color(121))
	add_to_chat (60, 'Be Best')
	
--    add_to_chat (60, 'https://www.bg-wiki.com/bg/Out_of_the_BLU')
end

set_macros(1,5)
---Name the Lockstyle below after the default set number-- 
set_style(120)
-------------------------------
--         Variables         --
-------------------------------
equipSet = {} --Currently Equiped Gearset
TargetDistance = 0
TH = false
DT = false
TizonaDT = false
DW = false
AutoDW = true

--TH rule description--
--TH in this GS works as follows. alt T or macro the command in to turn it on and off
--It will not equip in your idle set, or while casting buffs, enhancing, cures, skill based BLU spells, or blue cures
--It will equip when engaging, and after an action is performed by you it comes off until you re-engage or toggle it on and off.
---You can change this, but I found it silly to full time it.
--If you are idle, and cast either physical blue spells or offensive magical blue spells it will equip on top of your sets.
---Diaga and stuff don't apply. Feel free to add it.
--When you return to being strictly idle, it doesn't equip either, becuase that would be pointless.

--So basically, TH gear (add yours in where applicable) comes on when engaging unti a new action is performed, and while idle using physical or offensive magical nukes.

------------------------------------
--         Windower Hooks         --
------------------------------------

function buff_change(n, gain, buff_table)
    local name
    name = string.lower(n)
    if S{"terror","petrification","sleep","stun"}:contains(name) then
        if gain then
            ChangeGear(sets.Utility.DerpDT)
        elseif not has_any_buff_of({"terror","petrification","sleep","stun"}) then
            if player.status == 'Engaged' then
				if DT == true then
					if  TizonaAM3 == true then
						ChangeGear(sets.TizonaDT[sets.TizonaDT.index[TizonaDT_ind]])
					else
						ChangeGear(sets.DT[sets.DT.index[DT_ind]])
					end
				elseif DW == true then
					ChangeGear(set_combine(sets.TP[sets.TP.index[TP_ind]], sets.DW[sets.DW.index[DW_ind]]))
                elseif TizonaAM3 == true then
					ChangeGear(sets.TizonaAM3[sets.TizonaAM3.index[TizonaAM3_ind]])
                    else
                        ChangeGear(sets.TP[sets.TP.index[TP_ind]])
                    end
                end
            elseif player.status == 'Idle' then
                    ChangeGear(sets.Idle[sets.Idle.index[Idle_ind]])
            end
    elseif name == "doom" then
        if gain then
            ChangeGear(sets.Utility.Doom)
            send_command('@input /p Doomed {~o~:} !')
            disable('neck','ring1','ring2','waist')
        else
            if player.status == 'Engaged' then
                    send_command('@input /p Doom is off {^_^}')
                    enable('neck','ring1','ring2','waist')
                    if DT == true then
						if  TizonaAM3 == true and player.status == 'Engaged' then
							ChangeGear(sets.TizonaDT[sets.TizonaDT.index[TizonaDT_ind]])
						else
							ChangeGear(sets.DT[sets.DT.index[DT_ind]])
						end
					elseif DW == true then
						ChangeGear(set_combine(sets.TP[sets.TP.index[TP_ind]], sets.DW[sets.DW.index[DW_ind]]))
					elseif TizonaAM3 == true then
                        ChangeGear(sets.TizonaAM3[sets.TizonaAM3.index[TizonaAM3_ind]])
                    else
                        ChangeGear(sets.TP[sets.TP.index[TP_ind]])
                    end
            elseif player.status == 'Idle' then
                    send_command('@input /p Doom is off {^_^}')
                    enable('neck','ring1','ring2','waist')
                    ChangeGear(sets.Idle[sets.Idle.index[Idle_ind]])
            end
        end
    elseif name == "charm" then
        if gain then
            send_command('@input /p Charmed {<3_<3:} !')
        else
            send_command('@input /p Charm is off {~_^}')
        end
    elseif name == "weakness" then
        if gain then
            enable('neck','ring1','ring2','waist')
        end
	elseif name == "mighty guard" then
        if gain then
		else
			send_command('gs c -cd Mighty Guard Lost!')
		end
    end
    
    if name == "aftermath: lv.3" and player.equipment.main == 'Tizona' then -- Mythic AM3 Rule
        if gain then
            TizonaAM3 = true
            send_command('timers create "Mythic AM3" 180 down')
           if DT == true then
                ChangeGear(sets.TizonaDT[sets.TizonaDT.index[TizonaDT_ind]])
			elseif DW == true then
				ChangeGear(set_combine(sets.TP[sets.TP.index[TP_ind]], sets.DW[sets.DW.index[DW_ind]]))
            else
                ChangeGear(sets.TizonaAM3[sets.TizonaAM3.index[TizonaAM3_ind]])
            end 
        else
            TizonaAM3 = false
            send_command('timers delete "Mythic AM3";gs c -cd AM3 Lost!!!')
        end
    end


	-----------------
	-- Auto DW -- It is not perfect, and doesn't really have the right values, but that is why there is an override you won't likely use, and hey it works, mostly.
	-----------------
	
	-- 1 = Weakness -- 100% Slow
	-- 13 = Slow 1 -15-
	-- 565 = Slow 2
	-- 33 = Haste 1/2 -- same ID, but since we always have Haste 2 as BLU then we may safely eliminate middling scenarios and thus automate.
	-- 580 = Indi/Geo Haste -- ~30-40%
	-- 214 = March -- Same deal as haste, but you may use == 2 to require two marches be active. Issue being the varying potency of marches and JAs may or may not cap you alone.
	---This is why the DW may be turned off and manually used. If you have slow, but soul voice marches and indi haste, say Bastok (D) Wave 2 boss, then you don't want to be stuck in DW. Can't account for everything.
	-- 228 = Embrava -- 25.9%
	-- 370 = Haste Samba -- 5% --You shouldn't be sub DNC so I am not making a rule for this.
	-- 604 = Mighty Guard -- 15%
	-- https://www.bg-wiki.com/bg/Attack_Speed
	if AutoDW == true and not has_any_buff_of({"terror","petrification","sleep","stun"}) then
		if ( (buffactive[1]) or
			not (buffactive[33] or buffactive.march or buffactive[580] or buffactive[604] or buffactive[228]) or --  Nothing is on
			(buffactive[604] and not (buffactive[33] or buffactive.march or buffactive[580] or buffactive[228])) or --MG and nothing
			(buffactive[565] and not (buffactive.march == 2 or buffactive[580]) and (buffactive [604] or buffactive[228])) ) then -- Slow 2 without double march and geo haste, but with MG or embrava
				DW = true
				DW_ind = 2 -- Less than 30% haste
			 if player.status == 'Engaged' and DT == false then
				ChangeGear(set_combine(sets.TP[sets.TP.index[TP_ind]], sets.DW[sets.DW.index[DW_ind]]))
				--send_command('@input /echo <----- Dual Wield Set is on and currently set to ' .. sets.DW.index[DW_ind] .. ' ----->')
			end
		elseif ( (buffactive[33] and not (buffactive.march or buffactive[580] or buffactive[604] or buffactive[228])) or --30% Haste and nothing else pretty much. Manually control for Samba from a DNC, since it isn't your buff.
			   (buffactive[13] and (buffactive.march or buffactive[604]) and (buffactive[580] or buffactive[604] or buffactive[228])) or --Honor March/MG alone very roughly negates slow, leaving you just needing a second.
			   (buffactive[565] and buffactive.march == 2 and buffactive[580] and (buffactive[604] or buffactive[228])) )
			then
			DW = true
			DW_ind = 1 -- ~30% haste
			 if player.status == 'Engaged' and DT == false then
				ChangeGear(set_combine(sets.TP[sets.TP.index[TP_ind]], sets.DW[sets.DW.index[DW_ind]]))
				--send_command('@input /echo <----- Dual Wield Set is on and currently set to ' .. sets.DW.index[DW_ind] .. ' ----->')
			end
		elseif ( (buffactive[33] and (buffactive[580] or buffactive.march or buffactive[604] or buffactive[228])) or -- Flutter and Geo or march or MG or embrava
			(buffactive[580] and (buffactive.march or buffactive[604] or buffactive[228])) or -- Geo and march or MG or embrava
			(buffactive.march == 2 and (buffactive[604] or buffactive[228])) or -- March x2 and MG or Embrava
			(buffactive[13] and (buffactive.march == 2 or buffactive[580]) and (buffactive[604] or buffactive[228])) )then -- Slow, but likez the mad buffs 'n shiz, yo.
			DW = false
			if player.status == 'Engaged' and DT == false then
				ChangeGear(sets.TP[sets.TP.index[TP_ind]])
			end
		end
	end
end

function has_any_buff_of(buff_set)--returns true if you have any of the buffs given
    for i,v in pairs(buff_set) do
        if buffactive[v] ~= nil then return true end
    end
end
---------------------------
--         Binds         --
---------------------------

-------------------
--F9,10,11,12--
-------------------
send_command('bind f9 gs c toggle TP set')
send_command('bind f10 gs c toggle WS sets')
---send_command('bind f11 gs c ') --empty
send_command('bind f12 gs c toggle Idle set')
---------------------
--Windows Key--
---------------------
send_command('bind @f7 gs c toggle AutoDW') -- Turns auto haste rules off in a pinch (certain NMs like Bastok W2). May also default the value to be false instead if you want.
send_command('bind @f8 gs c toggle DW Mode') --Manually turns DW on or off. Not needed if AutoDW is on.
send_command('bind @f9 gs c toggle DW set') -- Toggle which DW set you are in. Used if manual is on.
----------------
--Cntrl Key--
----------------
send_command('bind ^f8 input /ws "Sanguine Blade" <t>')
send_command('bind ^f9 input /ws "Chant du Cygne" <t>')
send_command('bind ^f10 input /ws "Expiacion" <t>')
send_command('bind ^f11 input /ws "Requiescat" <t>')
send_command('bind ^f12 input /ws "Savage Blade" <t>')
-------------
--Alt Key--
-------------
send_command('bind !f7 gs c toggle DT set') -- This exists only for toggling without of this mode having to be active, otherwise f9
send_command('bind !f8 gs c toggle DT') -- DT on or off
send_command('bind !f9 gs c toggle backwards')
send_command('bind !f10 gs c changemaccmab') -- Toggles macc and mab nuke sets
--send_command('bind !f11 gs c  ')  --empty
--send_command('bind !f12 gs c ') --empty

send_command('bind !e input /item "Echo Drops" <me>')
send_command('bind !r input /item "Remedy" <me>')
send_command('bind !p input /item "Panacea" <me>')
send_command('bind !h input /item "Holy Water" <me>')
send_command('bind !w input /equip ring2 "Warp Ring"; wait 11; input /item "Warp Ring" <me>;')
send_command('bind !q input /equip ring2 "Dim. Ring (Holla)"; wait 11; input /item "Dim. Ring (Holla)" <me>;')
send_command('bind !t gs c toggle TH') -- alt + t toggles TH mode, its not robust, but it works.

--------------------
--Unload Binds--
--------------------
function file_unload()
    send_command('unbind ^f8')
    send_command('unbind ^f9')
    send_command('unbind ^f10')
    send_command('unbind ^f11')
    send_command('unbind ^f12')
	send_command('unbind @f8')
	send_command('unbind @f9')
	send_command('unbind !f8')
    send_command('unbind !f9')
    send_command('unbind !f10')
    send_command('unbind !f11')
    send_command('unbind !f12')
    send_command('unbind f9')
    send_command('unbind f10')
    send_command('unbind f11')
    send_command('unbind f12')
    
    send_command('unbind !e')
    send_command('unbind !r')
    send_command('unbind !p')
    send_command('unbind !h')
    send_command('unbind !w')
    send_command('unbind !q')
    send_command('unbind !t')
end
--------------------------------------
--      Console Commands     --
--------------------------------------
function self_command(command)
            if player.status == 'Engaged' then
                if DT == true then
						if  TizonaAM3 == true then
							ChangeGear(sets.TizonaDT[sets.TizonaDT.index[TizonaDT_ind]])
						else
							ChangeGear(sets.DT[sets.DT.index[DT_ind]])
						end
				elseif DW == true then
					ChangeGear(set_combine(sets.TP[sets.TP.index[TP_ind]], sets.DW[sets.DW.index[DW_ind]]))
				elseif TizonaAM3 == true then
                    ChangeGear(sets.TizonaAM3[sets.TizonaAM3.index[TizonaAM3_ind]])
                else
                    ChangeGear(sets.TP[sets.TP.index[TP_ind]])
                end
            else
                ChangeGear(sets.Idle[sets.Idle.index[Idle_ind]])
            end
    if command == 'toggle TP set' then
			if DT == true then
				DT_ind = DT_ind + 1
				TizonaDT_ind = TizonaDT_ind + 1
            if DT_ind > #sets.DT.index then DT_ind = 1 end
            if TizonaDT_ind > #sets.TizonaDT.index then TizonaDT_ind = 1 end
send_command('@input /echo <----- DT Set changed to ' .. sets.DT.index[DT_ind] .. '  ----->')
					if TizonaAM3 == true then
						ChangeGear(sets.TizonaDT[sets.TizonaDT.index[TizonaDT_ind]])
					else
						ChangeGear(sets.DT[sets.DT.index[DT_ind]])
					end
			elseif DT == false then
			TP_ind = TP_ind + 1
			TizonaAM3_ind = TizonaAM3_ind + 1
			if TP_ind > #sets.TP.index then TP_ind = 1 end
			if TizonaAM3_ind > #sets.TizonaAM3.index then TizonaAM3_ind = 1 end
				send_command('@input /echo <----- TP Set changed to ' .. sets.TP.index[TP_ind] .. ' ----->')
			if player.status == 'Engaged' then
				if DW == true then
					ChangeGear(set_combine(sets.TP[sets.TP.index[TP_ind]], sets.DW[sets.DW.index[DW_ind]]))
				elseif TizonaAM3 == true then
					ChangeGear(sets.TizonaAM3[sets.TizonaAM3.index[TizonaAM3_ind]])
				else
					ChangeGear(sets.TP[sets.TP.index[TP_ind]])
				end
			end
        end
	elseif command == 'toggle DW set' then
		DW_ind = DW_ind + 1
		if DW_ind > #sets.DW.index then DW_ind = 1 end
		send_command('@input /echo <----- Dual Wield Set changed to ' .. sets.DW.index[DW_ind] .. ' ----->')
		if player.status == 'Engaged' then
			if DW == true and DT == false then
				ChangeGear(set_combine(sets.TP[sets.TP.index[TP_ind]], sets.DW[sets.DW.index[DW_ind]]))
			end
		end
    elseif command == 'toggle Idle set' then
        Idle_ind = Idle_ind + 1
        if Idle_ind > #sets.Idle.index then Idle_ind = 1 end
        send_command('@input /echo <----- Idle Set changed to ' .. sets.Idle.index[Idle_ind] .. ' ----->')
        if player.status == 'Idle' then
            ChangeGear(sets.Idle[sets.Idle.index[Idle_ind]])
        end
    elseif command == 'toggle WS sets' then
        Expiacion_ind = Expiacion_ind + 1
        Requiescat_ind = Requiescat_ind + 1
		CDC_ind = CDC_ind + 1
		BlackHalo_ind = BlackHalo_ind + 1
        Realmrazer_ind = Realmrazer_ind + 1
        Judgment_ind = Judgment_ind + 1
        if Expiacion_ind > #sets.Expiacion.index then Expiacion_ind = 1 end
        if Requiescat_ind > #sets.Requiescat.index then Requiescat_ind = 1 end
		if CDC_ind > #sets.CDC.index then CDC_ind = 1 end
		if BlackHalo_ind > #sets.BlackHalo.index then BlackHalo_ind = 1 end
        if Realmrazer_ind > #sets.Realmrazer.index then Realmrazer_ind = 1 end
        if Judgment_ind > #sets.Judgment.index then Judgment_ind = 1 end
        send_command('@input /echo <----- WS Sets changed to ' .. sets.CDC.index[CDC_ind] .. ' ----->')
    elseif command == 'toggle DT set' then
        DT_ind = DT_ind + 1
        TizonaDT_ind = TizonaDT_ind + 1
        if DT_ind > #sets.DT.index then DT_ind = 1 end
        if TizonaDT_ind > #sets.TizonaDT.index then TizonaDT_ind = 1 end
        send_command('@input /echo <----- DT Set changed to ' .. sets.DT.index[DT_ind] .. '  ----->')
            if DT == true then
				if  TizonaAM3 == true then
					ChangeGear(sets.TizonaDT[sets.TizonaDT.index[TizonaDT_ind]])
				else
					ChangeGear(sets.DT[sets.DT.index[DT_ind]])
				end
            end
    elseif command == 'toggle DT' then
        if DT == true then
            DT = false
            send_command('@input /echo <----- DT TP: [Off] ----->')
        else
            DT = true
            send_command('@input /echo <----- DT TP: [On] ----->')
        end
        status_change(player.status)
	elseif command == 'toggle AutoDW' then
        if AutoDW == true then
            AutoDW = false
            send_command('@input /echo <----- AUTOMATIC Dual Wield: [Off] ----->')
        else
            AutoDW = true
            send_command('@input /echo <----- AUTOMATIC Dual Wield: [On] ----->')
        end
        status_change(player.status)
	elseif command == 'toggle DW Mode' then
        if DW == true then
            DW = false
            send_command('@input /echo <----- Dual Wield TP: [Off] ----->')
        else
            DW = true
            send_command('@input /echo <----- Dual Wield TP: [On] ----->')
        end
        status_change(player.status)
    elseif command == 'toggle TH' then
        if TH == true then
            TH = false
            send_command('@input /echo <----- Treasure Hunter TP: [Off] ----->')
        else
            TH = true
            send_command('@input /echo <----- Treasure Hunter TP: [On] ----->')
        end
        status_change(player.status)
    elseif command == 'toggle backwards' then
        if DT == true then
            DT_ind = DT_ind -1
            TizonaDT_ind = TizonaDT_ind -1
            if DT_ind == 0 then
                DT_ind = #sets.DT.index
                TizonaDT_ind = #sets.TizonaDT.index
            end
send_command('@input /echo <----- DT Set changed to ' .. sets.DT.index[DT_ind] .. '  ----->')
				ChangeGear(sets.DT[sets.DT.index[DT_ind]])
        elseif DT == false then
            TP_ind = TP_ind -1
            TizonaAM3_ind = TizonaAM3_ind -1
            if TP_ind == 0 then
                TP_ind = #sets.TP.index
            end
            if TizonaAM3_ind == 0 then
                TizonaAM3_ind = #sets.TizonaAM3.index
            end
            send_command('@input /echo <----- TP Set changed to ' .. sets.TP.index[TP_ind] .. ' ----->')
            if player.status == 'Engaged' then
				if DW == true then
					ChangeGear(set_combine(sets.TP[sets.TP.index[TP_ind]], sets.DW[sets.DW.index[DW_ind]]))
                elseif TizonaAM3 == true then
                    ChangeGear(sets.TizonaAM3[sets.TizonaAM3.index[TizonaAM3_ind]])
                else
                    ChangeGear(sets.TP[sets.TP.index[TP_ind]])
                end
            end
        end
    elseif command == 'ZoneChange' then
        IdleState()
    elseif command == 'changemaccmab' then
        MAB_ind = MAB_ind + 1
        if MAB_ind > #sets.BlueMagic.INT.index then MAB_ind = 1 end
        send_command('@input /echo <-----Blue Magic INT Type Changed To: ' .. sets.BlueMagic.INT.index[MAB_ind] .. '----->')
    elseif string.sub(command, 0, 4) == '-cd ' then     --If the first 4 characters of the command are '-cd '
        add_to_chat (30, string.sub(command, 5, string.len(command)))      --add everything after '-cd ' to a message in the chat
    end
    
end

--------------------------------------
--         Character States         --
--------------------------------------
function IdleState()
	if DT == true then
		if  TizonaAM3 == true then
			ChangeGear(sets.TizonaDT[sets.TizonaDT.index[TizonaDT_ind]])
		else
			ChangeGear(sets.DT[sets.DT.index[DT_ind]])
		end
    else
        ChangeGear(sets.Idle[sets.Idle.index[Idle_ind]])
    end
    
    if player.mpp <= 50 and Idle_ind == 1 then
        ChangeGear({waist = "Fucho-no-obi", Ring1 = "Stikini Ring +1"})
    end
    
    if Town:contains(world.area) then
        ChangeGear(sets.Idle.Town)
    end
end

windower.raw_register_event('zone change',function()
windower.send_command('@wait 9; input //gs c ZoneChange')
end)

function RestingState()

end

function EngagedState()
		if DT == true then
			if  TizonaAM3 == true then
				ChangeGear(sets.TizonaDT[sets.TizonaDT.index[TizonaDT_ind]])
			else
				ChangeGear(sets.DT[sets.DT.index[DT_ind]])
			end
		elseif DW == true then
			ChangeGear(set_combine(sets.TP[sets.TP.index[TP_ind]], sets.DW[sets.DW.index[DW_ind]]))
        elseif buffactive["Aftermath: Lv.3"] and player.equipment.main == 'Tizona' then --am3
            TizonaAM3 = true
            ChangeGear(sets.TizonaAM3[sets.TizonaAM3.index[TizonaAM3_ind]])
        else
            TizonaAM3 = false
            ChangeGear(sets.TP[sets.TP.index[TP_ind]])
        end
end
 
-----------------------------
--      Spell control      --
-----------------------------
unusable_buff = {
	spell={'Charm','Mute','Omerta','Petrification','Silence','Sleep','Stun','Terror'},
    ability={'Amnesia','Charm','Impairment','Petrification','Sleep','Stun','Terror'}}
  --check_recast('ability',spell.recast_id)  check_recast('spell',spell.recast_id)
function check_recast(typ,id) --if spell can be cast(not in recast) return true
    local recasts = windower.ffxi['get_'..typ..'_recasts']()
    if id and recasts[id] and recasts[id] == 0 then
        return true
    else
        return false
    end
end
 --return true if spell/ability is unable to be used at this time
function spell_control(spell)
	if spell.type == "Item" then
		return false
	--Stops spell if you do not have a target
	elseif spell.target.name == nil and not spell.target.raw:contains("st") then
		return true
	--Stops spell if a blocking buff is active
	elseif spell.action_type == 'Ability' and spell.type ~= 'WeaponSkill' and (has_any_buff_of(unusable_buff.ability) or not check_recast('ability',spell.recast_id)) then
		return true
	elseif spell.type == 'WeaponSkill' and player.tp < 1000 then
		return true
	elseif spell.type == 'WeaponSkill' and (has_any_buff_of(unusable_buff.ability)) then
		msg("Weapon Skill Canceled, Can't")
		return true
	elseif spell.action_type == 'Magic' and (has_any_buff_of(unusable_buff.spell)
      or not check_recast('spell',spell.recast_id)) then
		return true
    --Stops spell if you do not have enuf mp/tp to use
	elseif spell.mp_cost and spell.mp_cost > player.mp and not has_any_buff_of({'Manawell','Manafont'}) then
        msg("Spell Canceled, Not Enough MP")
		return true
	end
    --Calculate how many finishing moves your char has up to 6
	local fm_count = 0
	for i, v in pairs(buffactive) do
		if tostring(i):startswith('finishing move') or tostring(i):startswith('?????????') then
			fm_count = tonumber(string.match(i, '%d+')) or 1
		end
	end
    --Stops flourishes if you do not have enough finishing moves
	local min_fm_for_flourishes = {['Animated Flourish']=1,['Desperate Flourish']=1,['Violent Flourish']=1,['Reverse Flourish']=1,['Building Flourish']=1,
                                   ['Wild Flourish']=2,['Climactic Flourish']=1,['Striking Flourish']=2,['Ternary Flourish']=3,}
	if min_fm_for_flourishes[spell.en] then
		if min_fm_for_flourishes[spell.en] > fm_count and not buffactive[507] then
			return true
		end
	end
	--Reomves Sneak when casting Spectral Jig
	if spell.en == 'Spectral Jig' then
		send_command('cancel 71')
	end
	if spell.name == 'Utsusemi: Ichi' and overwrite and buffactive['Copy Image (3)'] then
		return true
	end
	if player.tp >= 1000 and player.target and player.target.distance and player.target.distance > 7 and spell.type == 'WeaponSkill' then
		msg("Weapon Skill Canceled  Target Out of Range")
		return true
	end
end
-----------------------------
--         Precast         --
-----------------------------
function pc_JA(spell, act)
    if spell.english == 'Azure Lore' then
        ChangeGear(sets.JA.AzureLore)
    elseif spell.english == 'Provoke' then
        ChangeGear(sets.JA.Provoke)
    elseif spell.english == 'Warcry' then
        ChangeGear(sets.JA.Warcry)
    end
    
    IgnoreWS = S { "Sanguine Blade", "Red Lotus Blade", "Seraph Blade", "Flash Nova", "Realmrazer", "Chant du Cygne" } -- Excluded from Moonshade TP override rule. CDC is now as well, it no longer needs Moonshade with 2 +1 Mache
	RegalWS = S {"Savage Blade", "Expiacion"}
	
	if spell.type == 'WeaponSkill' then
		if spell.english == 'Requiescat' then
            ChangeGear(sets.Requiescat[sets.Requiescat.index[Requiescat_ind]])
		elseif spell.english == 'Expiacion' or spell.english == 'Circle Blade' or spell.english == 'Savage Blade' or spell.english == 'True Strike' or spell.english == 'Judgment'  then
            ChangeGear(sets.Expiacion[sets.Expiacion.index[Expiacion_ind]])
        elseif spell.english == 'Chant du Cygne' or spell.english == 'Vorpal Blade' then
            ChangeGear(sets.CDC[sets.CDC.index[CDC_ind]])
        elseif spell.english == 'Realmrazer' then
            ChangeGear(sets.Realmrazer[sets.Realmrazer.index[Realmrazer_ind]])
        elseif spell.english == 'Black Halo' then
            ChangeGear(sets.BlackHalo[sets.BlackHalo.index[BlackHalo_ind]])
        elseif spell.english == 'Flash Nova' or spell.english == 'Red Lotus Blade' or spell.english == 'Seraph Blade' then
            ChangeGear(sets.FlashNova)
        elseif spell.english == 'Sanguine Blade' then
            ChangeGear(sets.SanguineBlade)
        end
		--WS TP Rules, so you dont use moonshade when you have TP overflow--
        if player.tp > 1525 and player.equipment.sub == 'Thibron' and buffactive['TP Bonus'] then 
            if IgnoreWS:contains(spell.english) then
                return
            elseif IgnoreWS:contains(spell.english) then
			    equip(set_combine(equipSet, { ear1 = "Regal Earring" }))
                msg("Regal Earring equiped !!!!")
			else
                equip(set_combine(equipSet, { ear1 = "Ishvara Earring" }))
                msg("Ishvara Earring equiped !!!!")
            end
		elseif player.tp > 1775 and player.equipment.sub == 'Thibron' then
            if IgnoreWS:contains(spell.english) then
                return
			elseif IgnoreWS:contains(spell.english) then
			    equip(set_combine(equipSet, { ear1 = "Regal Earring" }))
                msg("Regal Earring equiped !!!!")
            else
                equip(set_combine(equipSet, { ear1 = "Ishvara Earring" }))
                msg("Ishvara Earring equiped !!!!")
            end
        elseif player.tp > 2025 and player.equipment.main == 'Sequence' and buffactive['TP Bonus'] then
            if IgnoreWS:contains(spell.english) then
                return
			elseif IgnoreWS:contains(spell.english) then
			    equip(set_combine(equipSet, { ear1 = "Regal Earring" }))
                msg("Regal Earring equiped !!!!")
            else
                equip(set_combine(equipSet, { ear1 = "Ishvara Earring" }))
                msg("Ishvara Earring equiped !!!!")
            end
        elseif player.tp > 2275 and player.equipment.main == 'Sequence' then
            if IgnoreWS:contains(spell.english) then
                return
			elseif IgnoreWS:contains(spell.english) then
			    equip(set_combine(equipSet, { ear1 = "Regal Earring" }))
                msg("Regal Earring equiped !!!!")
            else
                equip(set_combine(equipSet, { ear1 = "Ishvara Earring" }))
                msg("Ishvara Earring equiped !!!!")
            end
        elseif player.tp > 2550 and buffactive['TP Bonus'] then
            if IgnoreWS:contains(spell.english) then
                return
			elseif spell.english == 'Expiacion' or spell.english == 'Savage Blade' then
			    equip(set_combine(equipSet, { ear1 = "Regal Earring" }))
                msg("Regal Earring equiped !!!!")
            else
                equip(set_combine(equipSet, { ear1 = "Ishvara Earring" }))
                msg("Ishvara Earring equiped !!!!")
            end
        elseif player.tp > 2775 then
            if IgnoreWS:contains(spell.english) then
                return
			elseif IgnoreWS:contains(spell.english) then
			    equip(set_combine(equipSet, { ear1 = "Regal Earring" }))
                msg("Regal Earring equiped !!!!")
            else
                equip(set_combine(equipSet, { ear1 = "Ishvara Earring" }))
                msg("Ishvara Earring equiped !!!!")
            end
        end
   end

    if spell.type == 'Step' then
        ChangeGear(set_combine(sets.TP.AccuracyFull, sets.Utility.TH))
    elseif spell.english == 'Animated Flourish' then
        ChangeGear(sets.BlueMagic.Enmity)
    end
end

function pc_Magic(spell, act)
    if spell.skill == 'Blue Magic' then
		ChangeGear(sets.precast.FC.Blue)
    else
		ChangeGear(sets.precast.FC.Standard)
    end
end

function pc_Item(spell, act)
end

-----------------------------
--         Midcast         --
-----------------------------
function mc_JA(spell, act)
end

function mc_Magic(spell, act)

    if spell.skill == 'Healing Magic' then
        if spell.target and spell.target.type == 'SELF' then
            ChangeGear(sets.BlueMagic.SelfCures)
        else
            ChangeGear(sets.BlueMagic.Cures)
        end
    end
    if spell.skill == 'Enhancing Magic' then
        if spell.english == 'Refresh' then
            ChangeGear(sets.BlueMagic.Battery)
        elseif string.find(spell.english,'Shell') or string.find(spell.english,'Protect') then
            ChangeGear(sets.Enhancing.ProShell)
        elseif spell.english=="Phalanx" then
            ChangeGear(sets.Enhancing.Phalanx)
        elseif spell.english=="Aquaveil" or "Stoneskin" then
            ChangeGear(sets.Enhancing.Aquaveil)
		elseif string.find(spell.english,'Bar') then
			ChangeGear(sets.Enhancing.Bar)
        else
            ChangeGear(sets.Enhancing)
        end
    end
    if spell.skill == 'Divine Magic' then
        if spell.english == 'Flash' then
            ChangeGear(sets.BlueMagic.Enmity)
        else
            ChangeGear(sets.BlueMagicMagicAccuracy)
        end
    end
    if spell.skill == 'Enfeebling Magic' then
        ChangeGear(sets.BlueMagic.MagicAccuracy)
    end
    if spell.skill == 'Dark Magic' then
		ChangeGear(sets.BlueMagic.MagicAccuracy)
    elseif spell.skill == 'Elemental Magic' then
        ChangeGear(sets.BlueMagic.INT[sets.BlueMagic.INT.index[MAB_ind]])
    end
    if spell.skill == 'Blue Magic' then
		if BlueMagic_Accuracy:contains(spell.english) then
			ChangeGear(sets.BlueMagic.MagicAccuracy)
        elseif BlueMagic_Stun:contains(spell.english) then
            ChangeGear(sets.BlueMagic.Stun)
        elseif BlueMagic_Enmity:contains(spell.english) then
            ChangeGear(sets.BlueMagic.Enmity)
        elseif BlueMagic_Skill:contains(spell.english) then
            ChangeGear(sets.BlueMagic.Skill)
		elseif BlueMagic_Buffs:contains(spell.english) then 
            ChangeGear(sets.BlueMagic.Buffs)
        elseif BlueMagic_Healing:contains(spell.english) then 
            if spell.target and spell.target.type == 'SELF' then
                ChangeGear(sets.BlueMagic.SelfCures)
            else
                ChangeGear(sets.BlueMagic.Cures)
            end
		elseif BlueMagic_FastRecast:contains(spell.english) then
				ChangeGear(sets.FastRecast)
		elseif spell.english == 'Occultation' then
			ChangeGear(sets.BlueMagic.Occultation)
        elseif spell.english == 'White Wind' then
            ChangeGear(sets.BlueMagic.WhiteWind)
        elseif spell.english == 'Battery Charge' then
            ChangeGear(sets.BlueMagic.Battery)
        elseif spell.english == 'Regeneration' or string.find(spell.english,'Regen') then
            ChangeGear(sets.BlueMagic.Regeneration)
        else
            ChangeGear(sets.precast.FC.Blue)
        end
		if buffactive['Diffusion'] then --Putting Diffusion <wait 1> before Unbridled Learning <wait 1> (instead of the other way around) in your macro will decrease issues
			ChangeGear({feet="Luhlaza Charuqs +3"})
		end
    end
	
        if PhysicalSpells:contains(spell.english) then
            if PhysicalBlueMagic_STR:contains(spell.english) then
                ChangeGear(sets.BlueMagic.STR)
            elseif PhysicalBlueMagic_DEX:contains(spell.english) then
                ChangeGear(sets.BlueMagic.STRDEX)
            elseif PhysicalBlueMagic_VIT:contains(spell.english) then
                ChangeGear(sets.BlueMagic.STRVIT)
            elseif PhysicalBlueMagic_AGI:contains(spell.english) then
                ChangeGear(sets.BlueMagic.AGI)
            end
            if buffactive['Chain Affinity'] then
                ChangeGear(sets.JA.ChainAffinity)
            end
            if buffactive['Efflux'] then
                ChangeGear(sets.JA.Efflux)
            end
        end
        
        if MagicalSpells:contains(spell.english) then
            if BlueMagic_INT:contains(spell.english) then
                ChangeGear(sets.BlueMagic.INT[sets.BlueMagic.INT.index[MAB_ind]])
			elseif BlueMagic_Earth:contains(spell.english)  then
                ChangeGear(set_combine(sets.BlueMagic.INT[sets.BlueMagic.INT.index[MAB_ind]],{
					neck = "Quanpur Necklace"}))
            elseif BlueMagic_Dark:contains(spell.english) then
					if MAB_ind == 1 then
						ChangeGear(set_combine(sets.BlueMagic.INT[sets.BlueMagic.INT.index[MAB_ind]],{
						head = "Pixie Hairpin +1", ring1 = "Archon Ring"}))
					else
						  ChangeGear(sets.BlueMagic.INT[sets.BlueMagic.INT.index[MAB_ind]])
					end
            elseif BlueMagic_Light:contains(spell.english) then
				if spell.english == 'Magic Hammer' then
					ChangeGear(set_combine(sets.BlueMagic.INT[sets.BlueMagic.INT.index[MAB_ind]],{
						head = 'Assim. Keffiyeh +3',
					--	hands = "Hashishin Bazubands +1", - For a chunk of time off of Magic Hammer if desired, maybe the +2/3 one day when released
					}))
				else
					ChangeGear(set_combine(sets.BlueMagic.INT[sets.BlueMagic.INT.index[MAB_ind]],{
					--	ring2 = "Weatherspoon Ring"
					}))
				end
            end
		end
		
            if buffactive['Burst Affinity'] then
                ChangeGear(sets.JA.BurstAffinity)
            end
			
			--Obi rule, but it overwrites the previous affinity + rules, and so I just wrote it like this.--
			if world.day_element == spell.element or world.weather_element == spell.element then
			   if BlueMagic_INT:contains(spell.english) then
					ChangeGear(set_combine(sets.BlueMagic.INT[sets.BlueMagic.INT.index[MAB_ind]],{}))
			elseif BlueMagic_Earth:contains(spell.english) then
                ChangeGear(set_combine(sets.BlueMagic.INT[sets.BlueMagic.INT.index[MAB_ind]],{}))
                        elseif BlueMagic_Dark:contains(spell.english) then
					if MAB_ind == 1 then
						ChangeGear(set_combine(sets.BlueMagic.INT[sets.BlueMagic.INT.index[MAB_ind]],{}))
					else
						  ChangeGear(sets.BlueMagic.INT[sets.BlueMagic.INT.index[MAB_ind]])
					end
            elseif BlueMagic_Light:contains(spell.english) then
				if spell.english == 'Magic Hammer' then
					ChangeGear(set_combine(sets.BlueMagic.INT[sets.BlueMagic.INT.index[MAB_ind]],{}))
				else
					ChangeGear(set_combine(sets.BlueMagic.INT[sets.BlueMagic.INT.index[MAB_ind]],{}))
				end
			end
		end
			
		--if spell.type == 'Trust' then
		--	ChangeGear(set_combine(sets.precast.FC.Standard, { body = "Sylvie Unity Shirt",}))
		--end
    end    


function mc_Item(spell, act)
end


------------------------------------------
-- After Cast               --
------------------------------------------
function ac_JA(spell)
end

function ac_Magic(spell)
end

function ac_Item(spell)
end

function ac_Global()
	if player.status == 'Engaged' then
		EngagedState()
	else
		IdleState()
	end
end

------------------------------------------
-- Framework Core            --
------------------------------------------
function status_change(new, old)
    if new == 'Idle' then
        IdleState()
    elseif new == 'Resting' then
        RestingState()
    elseif new == 'Engaged' then
        EngagedState()
    end
    
    if player.status == 'Engaged' and TH == true then
        ChangeGear(set_combine(equipSet, sets.Utility.TH))          
    end
    
    if DT == true then
		if  TizonaAM3 == true then
			ChangeGear(sets.TizonaDT[sets.TizonaDT.index[TizonaDT_ind]])
		else
			ChangeGear(sets.DT[sets.DT.index[DT_ind]])
		end
    end
end

function precast(spell, act)
    if spell_control(spell) then
        cancel_spell()
        return
    end
    if spell.action_type == 'Ability' then 
        pc_JA(spell, act)
    elseif spell.action_type == 'Magic' then
        pc_Magic(spell, act)
    else
        pc_Item(spell, act)
    end
end

function midcast(spell, act)
    if spell.action_type == 'Ability' then
        mc_JA(spell, act)
    elseif spell.action_type == 'Magic' then 
        if TH == true and player.status == 'Idle' then
            if BlueMagic_Buffs:contains(spell.english) or BlueMagic_Healing:contains(spell.english) or BlueMagic_Skill:contains(spell.english) or spell.skill == 'Enhancing Magic' or spell.skill == 'Healing Magic' then
                mc_Magic(spell, act)
            elseif PhysicalSpells:contains(spell.english) then
                ChangeGear(set_combine(sets.BlueMagic.STR, sets.Utility.TH))
            elseif MagicalSpells:contains(spell.english) then
					if BlueMagic_Earth:contains(spell.english) then
                ChangeGear(set_combine(sets.BlueMagic.INT[sets.BlueMagic.INT.index[MAB_ind]], sets.Utility.TH,{
					neck = "Quanpur Necklace"}))
			elseif BlueMagic_Dark:contains(spell.english) then
					if MAB_ind == 1 then
						ChangeGear(set_combine(sets.BlueMagic.INT[sets.BlueMagic.INT.index[MAB_ind]], sets.Utility.TH,{
						head = "Pixie Hairpin +1", ring1 = "Archon Ring"}))
					else
						  ChangeGear(sets.BlueMagic.INT[sets.BlueMagic.INT.index[MAB_ind]], sets.Utility.TH)
					end
			else ChangeGear(set_combine(sets.BlueMagic.INT[sets.BlueMagic.INT.index[MAB_ind]], sets.Utility.TH))
			end
		end
        else 
            mc_Magic(spell, act)
        end
    else
        mc_Item(spell, act)
    end
    
    if spell.name == 'Utsusemi: Ichi' and overwrite then
        send_command('cancel Copy Image|Copy Image (2)')
    end

end

function aftercast(spell, act, spellMap, eventArgs)
    if spell.action_type == 'Ability' then
        ac_JA(spell)
    elseif spell.action_type == 'Magic' then
        ac_Magic(spell)
    else
        ac_Item(spell)
    end
    ac_Global()
	
    --Countdowns--
    if not spell.interrupted then
        if spell.english == "Sheep Song" then
            send_command('wait 30;gs c -cd '..spell.name..': [Off In 10~30 Seconds!];wait 10;gs c -cd '..spell.name..': [Off In 0~20 Seconds!]')
            send_command('timers create "Sheep Song" 40 down')
        elseif spell.english == "Yawn" then
            send_command('wait 60;gs c -cd '..spell.name..': [Off In 10~30 Seconds!];wait 10;gs c -cd '..spell.name..': [Off In 0~20 Seconds!]')
            send_command('timers create "Yawn" 70 down')
        elseif spell.english == "Dream Flower" then
            send_command('wait 80;gs c -cd '..spell.name..': [Off In 10~40 Seconds!];wait 10;gs c -cd '..spell.name..': [Off In 0~30 Seconds!]')
            send_command('timers create "Dream Flower" 90 down')
       elseif spell.english == "Entomb" then
            send_command('timers create "Entomb Petrification" 60 down')
        end 
    end
    
    if not spell.interrupted then
        if spell.name == 'Utsusemi: Ichi' then
            overwrite = false
        elseif spell.name == 'Utsusemi: Ni' then
            overwrite = true
        end
    end
    
end

function ChangeGear(GearSet)
    equipSet = GearSet
    equip(GearSet)
end

function msg(str)
    send_command('@input /echo <----- ' .. str .. ' ----->')
end

---End of Rules---------------------------------------------------------------------------------------------------------------------------------------------------------
