--Built off of my BLU GS
---Thanks to various sources such as LS members and BlueGartr for the help building this GearSwap.
--------------------------------------------------------------------------------------------------
--This lua starts off defaulted in tanking TP gear. Press alt + F8 or the following macro to disable tanking TP mode:
---/console gs c toggle TankingTP

--Once that is taken off you will automatically be placed back in the TP set index. If you were previously in a set and put tanking gear back on it will resume the previous set in the index.
---Sets between 1H and 2H weapons are automatically activated after the tanking TP set is off, based on your equiped weapon. 2H weapons get the 2HTP sets and 1H the 1H set.
----This occasionally throws an error for the rule somewhere around line 1871 depending on what you edit, when you first load the lua. I have never bothered to address this bug as it doesnt impact anything.

--Pressing F9 (or a macro, similar to above for tanking) will toggle the currently active set. If tanking is on F9 will toggle tanking TP and ignore the other sets. If 1H TP is active F9 will toggle that and nothing else.
---If 2H TP is active then it will toggle that and AM3 for Epeo, and vice versa.

--Alt + F9 will cycle backwards, F9 just cycles fowards. Useful for pressing buttons once instead of 3 times to cycle one set backwards.

--You may cycle tanking TP with alt + f7 regardless of which TPing mode is active. This is useful for using tanking TP sets like MDT or magic evasion as DT sets while DDing with alt + f8 to equip the tanking set back on.


--Augmented Gear--

function get_sets()
	maps()

	
	
------End of Augmented Gear-----------------------------------------------------------------------------------------------------------------------------
	--Idle Sets--
	sets.Idle = {}
	sets.Idle.index = { 'Standard', 'DT', 'Evasion' }
	Idle_ind = 1

	sets.Idle.Standard = {
	ammo="Homiliary",
    head={ name="Rawhide Mask", augments={'HP+50','Accuracy+15','Evasion+20',}},
    body="Runeist's Coat +2",
    hands="Turms Mittens +1",
    legs="Eri. Leg Guards +1",
    feet="Turms Leggings +1",
    neck={ name="Bathy Choker +1", augments={'Path: A',}},
    waist="Flume Belt +1",
    left_ear="Tuisto Earring",
    right_ear="Etiolation Earring",
    left_ring="Moonlight Ring",
    right_ring="Stikini Ring +1",
    back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Phys. dmg. taken-10%',}},
	}
	
	sets.Idle.DT = {
	ammo="Staunch Tathlum +1",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck={ name="Futhark Torque +1", augments={'Path: A',}},
    waist="Flume Belt +1",
    left_ear="Tuisto Earring",
    right_ear="Odnowa Earring +1",
    left_ring="Moonlight Ring",
    right_ring="Gelatinous Ring +1",
    back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Phys. dmg. taken-10%',}},
	}
	
	sets.Idle.Evasion = {}

		--Dat Waifu--
	sets.Idle.Town = set_combine(sets.Idle.Standard, {
	ammo="Homiliary",
    head={ name="Rawhide Mask", augments={'HP+50','Accuracy+15','Evasion+20',}},
    body="Runeist's Coat +2",
    hands="Turms Mittens +1",
    legs="Eri. Leg Guards +1",
    feet="Turms Leggings +1",
    neck={ name="Bathy Choker +1", augments={'Path: A',}},
    waist="Flume Belt +1",
    left_ear="Tuisto Earring",
    right_ear="Etiolation Earring",
    left_ring="Moonlight Ring",
    right_ring="Stikini Ring +1",
    back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Phys. dmg. taken-10%',}},
	})

-------TP Sets-------------------------------------------
	
	---------------------
	--OneHanded TP Sets--
	--------------------- 
	
	sets.OneHandedTP = {}
	sets.OneHandedTP.index = { 'DualWield', 'CapHaste', 'AccuracyLite', 'AccuracyMid', 'AccuracyFull' }
	OneHandedTP_ind = 1
	--+31 needed with just Haste II
	sets.OneHandedTP.DualWield = {}
	
	sets.OneHandedTP.CapHaste = {}

	sets.OneHandedTP.AccuracyLite = {}

	sets.OneHandedTP.AccuracyMid = {}

	sets.OneHandedTP.AccuracyFull = {}
	
	---------------------
	--TwoHanded TP Sets--
	--------------------- 
	
	sets.TwoHandedTP = {}
	sets.TwoHandedTP.index = { 'CapHaste', 'AccuracyLite', 'AccuracyMid', 'AccuracyFull' }
	TwoHandedTP_ind = 1

	sets.TwoHandedTP.CapHaste = {}

	sets.TwoHandedTP.AccuracyLite = {}

	sets.TwoHandedTP.AccuracyMid = {}

	sets.TwoHandedTP.AccuracyFull = {}

	-------------------
	--EpeoAM3 TP Sets--
	------------------- 
	
	sets.EpeoAM3 = {}
	sets.EpeoAM3.index = { 'CapHaste', 'AccuracyLite', 'AccuracyMid', 'AccuracyFull' }
	EpeoAM3_ind = 1 -- In the same rule as the 2H TP Toggle so it toggles it at the same time

	sets.EpeoAM3.CapHaste = set_combine(sets.TwoHandedTP.CapHaste, {})

	sets.EpeoAM3.AccuracyLite = set_combine(sets.TwoHandedTP.AccuracyLite, {})

	sets.EpeoAM3.AccuracyMid = set_combine(sets.TwoHandedTP.AccuracyMid, {})

	sets.EpeoAM3.AccuracyFull = set_combine(sets.TwoHandedTP.AccuracyFull, {})
	
	-------------------
	--Tanking TP Sets--
	------------------- 
	
	sets.TankingTP = {}
	sets.TankingTP.index = { 'Tank', 'TankHyb', 'DDHyb', 'Magic1', 'Magic2'}
	TankingTP_ind = 1
	
	sets.TankingTP.Tank = {
	ammo="Staunch Tathlum +1",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Turms Mittens +1",
    legs="Nyame Flanchard",
    feet="Turms Leggings +1",
    neck={ name="Futhark Torque +1", augments={'Path: A',}},
    waist="Engraved Belt",
    left_ear="Tuisto Earring",
    right_ear="Odnowa Earring +1",
    left_ring="Moonlight Ring",
    right_ring="Gelatinous Ring +1",
    back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Phys. dmg. taken-10%',}},
	}
	--Capped DT with DD Gear
	sets.TankingTP.TankHyb = {
	ammo="Yamarang",
    head="Aya. Zucchetto +2",
    body="Ayanmo Corazza +2",
    hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
    legs="Meg. Chausses +2",
    feet={ name="Herculean Boots", augments={'Accuracy+27','"Triple Atk."+2','DEX+6',}},
    neck={ name="Futhark Torque +1", augments={'Path: A',}},
    waist="Ioskeha Belt",
    left_ear="Telos Earring",
    right_ear="Sherida Earring",
    left_ring="Moonlight Ring",
    right_ring="Defending Ring",
    back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Phys. dmg. taken-10%',}},
	}
	--Low DT with DD Gear
	sets.TankingTP.DDHyb = {
	ammo="Yamarang",
    head={ name="Adhemar Bonnet +1", augments={'STR+12','DEX+12','Attack+20',}},
    body={ name="Adhemar Jacket +1", augments={'STR+12','DEX+12','Attack+20',}},
    hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
    legs={ name="Samnuha Tights", augments={'STR+8','DEX+9','"Dbl.Atk."+3','"Triple Atk."+2',}},
    feet={ name="Herculean Boots", augments={'Accuracy+27','"Triple Atk."+2','DEX+6',}},
    neck="Anu Torque",
    waist="Ioskeha Belt",
    left_ear="Telos Earring",
    right_ear="Sherida Earring",
    left_ring="Epona's Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Evasionist's Cape", augments={'Enmity+7','"Embolden"+15','"Dbl.Atk."+2',}},
	}
	
	--Mid DT with Acc
	sets.TankingTP.Magic1 = {
	ammo="Yamarang",
    head="Nyame Helm",
    body="Runeist's Coat +2",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck={ name="Futhark Torque +1", augments={'Path: A',}},
    waist="Engraved Belt",
    left_ear="Genmei Earring",
    right_ear="Odnowa Earring +1",
    left_ring="Moonlight Ring",
    right_ring="Defending Ring",
    back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Phys. dmg. taken-10%',}},
	}
	
	sets.TankingTP.Magic2 = {}
------End of TP--------------------------------------------------------------------------------------------------------------------	
	---------------------
	-----WS Sets-----
	---------------------
	
	---Greatsword WS  Sets---
	
	sets.WS = {}
	
	sets.Resolution = {}

	sets.Resolution.index = { 'AttackUncap', 'AttackCap', 'Accuracy' }
	Resolution_ind = 1

	sets.Resolution.AttackUncap = {
	ammo="Seeth. Bomblet +1",
    head={ name="Lustratio Cap +1", augments={'Attack+20','STR+8','"Dbl.Atk."+3',}},
    body={ name="Adhemar Jacket +1", augments={'STR+12','DEX+12','Attack+20',}},
    hands={ name="Herculean Gloves", augments={'Attack+15','"Triple Atk."+2','STR+9','Accuracy+8',}},
    legs="Meg. Chausses +2",
    feet={ name="Lustra. Leggings +1", augments={'Attack+20','STR+8','"Dbl.Atk."+3',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    right_ear="Sherida Earring",
    left_ring="Ilabrat Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Ogma's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Damage taken-5%',}},
	}

	sets.Resolution.AttackCap = {
	ammo="Seeth. Bomblet +1",
    head={ name="Lustratio Cap +1", augments={'Attack+20','STR+8','"Dbl.Atk."+3',}},
    body={ name="Adhemar Jacket +1", augments={'STR+12','DEX+12','Attack+20',}},
    hands={ name="Herculean Gloves", augments={'Attack+15','"Triple Atk."+2','STR+9','Accuracy+8',}},
    legs="Meg. Chausses +2",
    feet={ name="Lustra. Leggings +1", augments={'Attack+20','STR+8','"Dbl.Atk."+3',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    right_ear="Sherida Earring",
    left_ring="Ilabrat Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Ogma's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Damage taken-5%',}},
	}
	
	sets.Resolution.Accuracy = {
	ammo="Seeth. Bomblet +1",
    head={ name="Lustratio Cap +1", augments={'Attack+20','STR+8','"Dbl.Atk."+3',}},
    body={ name="Adhemar Jacket +1", augments={'STR+12','DEX+12','Attack+20',}},
    hands={ name="Herculean Gloves", augments={'Attack+15','"Triple Atk."+2','STR+9','Accuracy+8',}},
    legs="Meg. Chausses +2",
    feet={ name="Lustra. Leggings +1", augments={'Attack+20','STR+8','"Dbl.Atk."+3',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    right_ear="Sherida Earring",
    left_ring="Ilabrat Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Ogma's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Damage taken-5%',}},
	}	
	
	sets.Dimidiation = {}

	sets.Dimidiation.index = { 'AttackUncap', 'AttackCap', 'Accuracy' }
	Dimidiation_ind = 1

	sets.Dimidiation.AttackUncap = {
	ammo="Knobkierrie",
    head={ name="Herculean Helm", augments={'Attack+29','Weapon skill damage +4%','DEX+8','Accuracy+13',}},
    body={ name="Adhemar Jacket +1", augments={'STR+12','DEX+12','Attack+20',}},
    hands="Meg. Gloves +2",
    legs={ name="Lustr. Subligar +1", augments={'Attack+20','STR+8','"Dbl.Atk."+3',}},
    feet={ name="Lustra. Leggings +1", augments={'Attack+20','STR+8','"Dbl.Atk."+3',}},
    neck="Caro Necklace",
    waist="Grunfeld Rope",
    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    right_ear="Sherida Earring",
    left_ring="Epaminondas's Ring",
    right_ring="Ilabrat Ring",
    back={ name="Ogma's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Damage taken-5%',}},
	}
					
	sets.Dimidiation.AttackCap = {
	ammo="Knobkierrie",
    head={ name="Herculean Helm", augments={'Attack+29','Weapon skill damage +4%','DEX+8','Accuracy+13',}},
    body={ name="Adhemar Jacket +1", augments={'STR+12','DEX+12','Attack+20',}},
    hands="Meg. Gloves +2",
    legs={ name="Lustr. Subligar +1", augments={'Attack+20','STR+8','"Dbl.Atk."+3',}},
    feet={ name="Lustra. Leggings +1", augments={'Attack+20','STR+8','"Dbl.Atk."+3',}},
    neck="Caro Necklace",
    waist="Grunfeld Rope",
    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    right_ear="Sherida Earring",
    left_ring="Epaminondas's Ring",
    right_ring="Ilabrat Ring",
    back={ name="Ogma's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Damage taken-5%',}},
	}						   
							   
	sets.Dimidiation.Accuracy = {
	ammo="Knobkierrie",
    head={ name="Herculean Helm", augments={'Attack+29','Weapon skill damage +4%','DEX+8','Accuracy+13',}},
    body={ name="Adhemar Jacket +1", augments={'STR+12','DEX+12','Attack+20',}},
    hands="Meg. Gloves +2",
    legs={ name="Lustr. Subligar +1", augments={'Attack+20','STR+8','"Dbl.Atk."+3',}},
    feet={ name="Lustra. Leggings +1", augments={'Attack+20','STR+8','"Dbl.Atk."+3',}},
    neck="Caro Necklace",
    waist="Grunfeld Rope",
    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    right_ear="Sherida Earring",
    left_ring="Epaminondas's Ring",
    right_ring="Ilabrat Ring",
    back={ name="Ogma's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Damage taken-5%',}},
	}
	
	---Sword WS  Sets---
	
	sets.Requiescat = {}

	sets.Requiescat.index = { 'AttackUncap', 'AttackCap', 'Accuracy' }
	Requiescat_ind = 1

	sets.Requiescat.AttackUncap = {}

	sets.Requiescat.AttackCap = {}

	sets.Requiescat.Accuracy = {}

 --Ive never once used this WS on RUN, yet upon sharing my .lua with Carrot she called me out on this.
	sets.SanguineBlade = {}

	sets.SavageBlade = {}

	sets.SavageBlade.index = { 'AttackUncap', 'AttackCap', 'Accuracy' }
	SavageBlade_ind = 1
	sets.SavageBlade.AttackUncap = {}
	
	sets.SavageBlade.AttackCap = {}

	sets.SavageBlade.Accuracy = {}
	
	---Club WS  Sets---
	
		sets.FlashNova = {}
	
	sets.BlackHalo = {}

	sets.BlackHalo.index = { 'AttackUncap', 'AttackCap', 'Accuracy' }
	BlackHalo_ind = 1
	sets.BlackHalo.AttackUncap = {}
	
	sets.BlackHalo.AttackCap = set_combine(sets.BlackHalo.AttackUncap, {})

	sets.BlackHalo.Accuracy = set_combine(sets.BlackHalo.AttackUncap, {})
	
	sets.Realmrazer = {}

	sets.Realmrazer.index = { 'AttackUncap', 'AttackCap', 'Accuracy' }
	Realmrazer_ind = 1
	sets.Realmrazer.AttackUncap = {}

	sets.Realmrazer.AttackCap = set_combine(sets.Realmrazer.AttackUncap, {})

	sets.Realmrazer.Accuracy = set_combine(sets.Realmrazer.AttackUncap, {})
	
------End of WS------------------------------------------------------------------------------------------
------Magic Sets---
	sets.BlueMagic = {}

	sets.BlueMagic.STR = set_combine(sets.Resolution.Attack, {
	})

	--Curing Sets--
	sets.Cures = {}
	
	sets.Cures.SelfCures = set_combine(sets.Cures, {
		ring1 = "Kunaji Ring",
		waist = "Gishdubar Sash",
	})
	--Spell Interruption Rate--
	sets.SIR = {}
------End of Magic-------------------------------------------------------------------------------------
	--Enmity Set--
	
	sets.Enmity = {
	ammo="Aqreqaq Bomblet",
    head="Halitus Helm",
    body="Emet Harness +1",
    hands="Kurys Gloves",
    legs="Eri. Leg Guards +1",
    feet="Ahosi Leggings",
    neck={ name="Futhark Torque +1", augments={'Path: A',}},
    waist="Kasiri Belt",
    left_ear="Etiolation Earring",
    right_ear="Odnowa Earring +1",
    left_ring="Supershear Ring",
    right_ring="Eihwaz Ring",
    back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Phys. dmg. taken-10%',}},
	}
	
	--Utility Sets--
	
	sets.Utility = {}

    sets.Utility.TH = {}
	
	sets.Utility.Derp = {}

	---------------------------------------------------------------
	
	sets.Utility.Charm = {}
	
	sets.Utility.Doom = {
	ammo="Staunch Tathlum +1",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Nicander's Necklace",
    waist="Gishdubar Sash",
    left_ear="Genmei Earring",
    right_ear="Odnowa Earring +1",
    left_ring="Eshmun's Ring",
    right_ring="Purity Ring",
    back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Phys. dmg. taken-10%',}},
	}
	
	--Enhancing Sets--
	
	sets.Enhancing = {}
	
	sets.Enhancing.Base = {}
	
	sets.Enhancing.Duration = set_combine(sets.Enhancing.Base, {})
	
	sets.Enhancing.Barspell = {}
	
	sets.Enhancing.Temper = {}
	
	sets.Enhancing.Phalanx = set_combine(sets.Enhancing.Base, {})
	
	sets.Enhancing.Refresh = {}
	
	sets.Enhancing.Regen = 	{}
	
	sets.Enhancing.ProShell = set_combine(sets.Enhancing.Duration, {})
	
	sets.Enhancing.Foil = set_combine(sets.Enmity, {
		ammo = "Staunch Tathlum +1",
		legs = "Futhark Trousers +2"
	})
	
	--Job Ability Sets--

	sets.JA = {}
	
	sets.JA.Lunge = {
	ammo="Seeth. Bomblet +1",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Baetyl Pendant",
    waist="Eschan Stone",
    left_ear="Friomisi Earring",
    right_ear="Crematio Earring",
    left_ring="Mujin Band",
    right_ring="Locus Ring",
    back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Phys. dmg. taken-10%',}},
	}

	sets.JA.Sforzo = set_combine(sets.Enmity, {
		body = "Futhark Coat +2"
	})

	sets.JA.Swordplay = set_combine(sets.Enmity, {
		hands = "Futhark Mitons"
	})
	
	sets.JA.Vallation = set_combine(sets.Enmity, {
		body = "Runeist's Coat +2",
		legs = "Futhark Trousers +2",
		back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Phys. dmg. taken-10%',}},
	})
	
	sets.JA.Pflug = set_combine(sets.Enmity, {})
	
	sets.JA.Valiance = set_combine(sets.Enmity, {
		body = "Runeist's Coat +2",
		back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Phys. dmg. taken-10%',}},
	})
	
	sets.JA.Embolden = set_combine(sets.Enmity, {})
	
	sets.JA.Pulse = set_combine {
	ammo="Staunch Tathlum +1",
    head="Erilaz Galea",
    body="Nyame Mail",
    hands="Turms Mittens +1",
    legs="Eri. Leg Guards +1",
    feet="Nyame Sollerets",
    neck={ name="Bathy Choker +1", augments={'Path: A',}},
    waist="Engraved Belt",
    left_ear="Tuisto Earring",
    right_ear="Odnowa Earring +1",
    left_ring="Moonlight Ring",
    right_ring="Stikini Ring +1",
    back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Phys. dmg. taken-10%',}},
	}
	
	sets.JA.Gambit = set_combine(sets.Enmity, {
		hands = "Runeist's Mitons"
	})
	
	sets.JA.Battuta = set_combine(sets.Enmity, {
		head =  "Futhark Bandeau +2"
	})
	
	sets.JA.Rayke = set_combine(sets.Enmity, {
		feet = "Futhark Boots"
	})
	
	sets.JA.Liement = set_combine(sets.Enmity, {
		body = "Futhark Coat +2"
	})
	--One For All is HP * .2 = Magic Damage Reduction--
	sets.JA.One = {}
	
	sets.JA.Subterfuge = set_combine(sets.Enmity, {})
	
	---SAM---
	sets.JA.Meditate = set_combine(sets.Enmity, {})
	
	---WAR---
	sets.JA.Provoke = set_combine(sets.Enmity, {})

	sets.JA.Warcry = set_combine(sets.Enmity, {})
	
	--Precast Sets--
	sets.precast = {}

	sets.precast.FC = {}

	sets.precast.FC.Standard = {
	ammo="Sapience Orb",
    head={ name="Herculean Helm", augments={'"Mag.Atk.Bns."+3','"Fast Cast"+6',}},
    body={ name="Taeon Tabard", augments={'"Fast Cast"+5',}},
    hands={ name="Leyline Gloves", augments={'Accuracy+14','Mag. Acc.+13','"Mag.Atk.Bns."+13','"Fast Cast"+2',}},
    legs={ name="Futhark Trousers +2", augments={'Enhances "Inspire" effect',}},
    feet={ name="Carmine Greaves +1", augments={'HP+80','MP+80','Phys. dmg. taken -4',}},
    neck="Orunmila's Torque",
    waist="Siegel Sash",
    left_ear="Enchntr. Earring +1",
    right_ear="Loquac. Earring",
    left_ring="Prolix Ring",
    right_ring="Kishar Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Fast Cast"+10','Damage taken-5%',}},
	}
	
	sets.precast.FC.Enhancing = set_combine(sets.precast.FC.Standard, {
		legs = "Futhark Trousers +2",
		ring1 = "Defending Ring",
	})
	
	sets.precast.FC.Val = {
	ammo="Staunch Tathlum +1",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs={ name="Futhark Trousers +2", augments={'Enhances "Inspire" effect',}},
    feet={ name="Carmine Greaves +1", augments={'HP+80','MP+80','Phys. dmg. taken -4',}},
    neck={ name="Futhark Torque +1", augments={'Path: A',}},
    waist="Siegel Sash",
    left_ear="Enchntr. Earring +1",
    right_ear="Odnowa Earring +1",
    left_ring="Moonlight Ring",
    right_ring="Gelatinous Ring +1",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Fast Cast"+10','Damage taken-5%',}},
	}
	
	sets.precast.FC.ValEnhancing = set_combine(sets.precast.FC.Val, {
		legs = "Futhark Trousers +2",
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

TwoHandedWeapons = S { 
	'Aettir', 'Epeolatry', 'Lionheart', 'Beheader +1', 'Takoba', 'Zulqifar', 'Bidenhander',
	'Montante', 'Montante +1', 'Humility', 'Nibiru Faussar', 'Macbain', 'Soulcleaver',
	'Kaqulijaan', 'Beorc Sword', 'Trial Blade', 'Sword of Trials', 'Irradiance Blade',
	'Greatsword', 'Parashu'
}

-------------------------
--   BLU Spells List   --
-------------------------

function maps()
	PhysicalSpells = S {
		'Bludgeon', 'Body Slam', 'Feather Storm', 'Mandibular Bite', 'Queasyshroom',
		'Power Attack', 'Screwdriver', 'Sickle Slash', 'Smite of Rage',
		'Terror Touch', 'Battle Dance', 'Claw Cyclone', 'Foot Kick', 'Grand Slam', 
		'Sprout Smack', 'Helldive', 'Jet Stream', 'Pinecone Bomb', 'Wild Oats', 'Uppercut'
	}
	
	BlueMagic_Buffs = S {
		'Refueling',
	}

	BlueMagic_Healing = S {
		'Healing Breeze', 'Pollen', 'Wild Carrot'
	}

	BlueMagic_Enmity = S {
		'Blank Gaze', 'Jettatura', 'Geist Wall', 'Sheep Song', 'Soporific', 'Cocoon', 'Stinking Gas'
	}
	
	RUNMagic_Enmity = S {
		'Flash', 'Stun'
	}
end

------------------------
--   Town Gear List   --
------------------------

Town = S {
    "Ru'Lude Gardens", "Upper Jeuno", "Lower Jeuno", "Port Jeuno",
    "Port Windurst", "Windurst Waters", "Windurst Woods", "Windurst Walls", "Heavens Tower",
    "Port San d'Oria", "Northern San d'Oria", "Southern San d'Oria", "Chateau d'Oraguille",
	"Port Bastok", "Bastok Markets", "Bastok Mines", "Metalworks",
    "Aht Urhgan Whitegate", "Nashmau",
    "Selbina", "Mhaura", "Norg",  "Kazham", "Tavanazian Safehold", "Rabao",
    "Eastern Adoulin", "Western Adoulin", "Celennia Memorial Library", "Mog Garden"
}

---End of Maps----------------------------------------------------------------------------------------------------------------------------------------------------------

function msg(str)
	send_command('@input /echo <----- ' .. str .. ' ----->')
end

------------------------------------------
-- Macro and Style Change on Job Change
------------------------------------------
function set_macros(sheet,book)
    if book then 
        send_command('@input /macro book '..tostring(book)..';wait .1;input /macro set '..tostring(sheet))
        return
    end
    send_command('@input /macro set '..tostring(sheet))
end

function set_style(sheet)
    send_command('@input ;wait 5.0;input /lockstyleset '..sheet)
	add_to_chat (21, 'Your lockstyle looks like shit, and you should feel bad')
	add_to_chat (55, 'You are on '..('RUN '):color(5)..''..('btw. '):color(55)..''..('Macros set!'):color(121))
--	add_to_chat (60, 'Eat tendies in moderation')
end

--Page, Book--
set_macros(1,3)
--Use the Lockstyle Number-- 
set_style(181) 
------------------------------------------
-- Variables
------------------------------------------
SetLocked = false --Used to Check if set is locked before changing equipment
LockedEquipSet = {} --Placeholder to store desired lock set
LockGearSet = {}
equipSet = {} --Currently Equiped Gearset
LockGearIndex = false
LockGearIndex = false
TargetDistance = 0
TH = false -- Defaults
SIR = false -- Spell Interruption Rate
TankingTP = true -- If true, default set is tanking TP array.
TwoHandedTP = true -- TP set order, looks for Tanking TP set before 2H TP before 1H DW TP.
------------------------------------------
-- Windower Hooks              --
------------------------------------------

function buff_change(n, gain, buff_table)
	local name
	name = string.lower(n)
	if S{"terror","petrification","sleep","stun"}:contains(name) then
        if gain then
            ChangeGear(sets.Utility.Derp)
        elseif not has_any_buff_of({"terror","petrification","sleep","stun"}) then
            if player.status == 'Engaged' then
                if LockGearIndex then
                    ChangeGear(LockGearSet)
                elseif not LockGearIndex then
					if TankingTP == true then
						ChangeGear(sets.TankingTP[sets.TankingTP.index[TankingTP_ind]])
					elseif EpeoAM3 == true then
						ChangeGear(sets.EpeoAM3[sets.EpeoAM3.index[EpeoAM3_ind]])
					elseif TwoHandedTP == true then
						ChangeGear(sets.TwoHandedTP[sets.TwoHandedTP.index[TwoHandedTP_ind]])
					else
						ChangeGear(sets.OneHandedTP[sets.OneHandedTP.index[OneHandedTP_ind]])
					end
                end
            elseif player.status == 'Idle' then
                if LockGearIndex then
                    ChangeGear(LockGearSet)
                elseif not LockGearIndex then
                    ChangeGear(sets.Idle[sets.Idle.index[Idle_ind]])
                end
            end
        end
    elseif name == "doom" then
        if gain then
            ChangeGear(sets.Utility.Doom)
            send_command('@input /p Doomed {~o~:} !')
            disable('neck','ring1','ring2','waist')
        else
            if player.status == 'Engaged' then
                if LockGearIndex then
					send_command('@input /p Doom is off {^_^}')
                    enable('neck','ring1','ring2','waist')
                    ChangeGear(LockGearSet)
                else
					send_command('@input /p Doom is off {^_^}')
                    enable('neck','ring1','ring2','waist')
					if TankingTP == true then
						ChangeGear(sets.TankingTP[sets.TankingTP.index[TankingTP_ind]])
					elseif EpeoAM3 == true then
						ChangeGear(sets.EpeoAM3[sets.EpeoAM3.index[EpeoAM3_ind]])
					elseif TwoHandedTP == true then
						ChangeGear(sets.TwoHandedTP[sets.TwoHandedTP.index[TwoHandedTP_ind]])
					else
						ChangeGear(sets.OneHandedTP[sets.OneHandedTP.index[OneHandedTP_ind]])
					end
                end
            elseif player.status == 'Idle' then
                if LockGearIndex then
					send_command('@input /p Doom is off {^_^}')
                    enable('neck','ring1','ring2','waist')
                    ChangeGear(LockGearSet)
                else
					send_command('@input /p Doom is off {^_^}')
                    enable('neck','ring1','ring2','waist')
                    ChangeGear(sets.Idle[sets.Idle.index[Idle_ind]])
                end
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
	elseif name == 	"embolden" then
		if gain then
		ChangeGear(set_combine(equipSet, {back="Evasionist's Cape"}))
		else
            if player.status == 'Engaged' then
                if LockGearIndex then
                    ChangeGear(LockGearSet)
                elseif not LockGearIndex then
					if TankingTP == true then
						ChangeGear(sets.TankingTP[sets.TankingTP.index[TankingTP_ind]])
					elseif EpeoAM3 == true then
						ChangeGear(sets.EpeoAM3[sets.EpeoAM3.index[EpeoAM3_ind]])
					elseif TwoHandedTP == true then
						ChangeGear(sets.TwoHandedTP[sets.TwoHandedTP.index[TwoHandedTP_ind]])
					else
						ChangeGear(sets.OneHandedTP[sets.OneHandedTP.index[OneHandedTP_ind]])
					end
                end
            elseif player.status == 'Idle' then
                if LockGearIndex then
                    ChangeGear(LockGearSet)
                elseif not LockGearIndex then
                    ChangeGear(sets.Idle[sets.Idle.index[Idle_ind]])
                end
            end
        end
	elseif name == "hasso" then
        if gain then
		return
	else
		send_command('gs c -cd Hasso Lost!')
		end
	end
	
	if name == "aftermath: lv.3" and player.equipment.main == 'Epeolatry' then -- Mythic AM3
		if gain then
			EpeoAM3 = true
			send_command('timers create "Mythic AM3" 180 down')
			 if LockGearIndex then
			    ChangeGear(LockGearSet)
			elseif TankingTP == true then
				ChangeGear(sets.TankingTP[sets.TankingTP.index[TankingTP_ind]])
			else
				ChangeGear(sets.EpeoAM3[sets.EpeoAM3.index[EpeoAM3_ind]])
			end 
		else
			EpeoAM3 = false
			send_command('timers delete "Mythic AM3";gs c -cd AM3 Lost!!!')
		end
	end
end

------------------------------------------
--               Binds                  --
------------------------------------------
send_command('bind f9 gs c toggle TP set') --This means if you hit f9 it toggles the sets
send_command('bind f10 gs c toggle WS set') --Changes Reso and Dimidiation sets
send_command('bind f11 gs c ') --Empty
send_command('bind f12 gs c toggle Idle set')
send_command('bind ^f8 gs c toggle SIR') -- Turns Spell Interruption Rate set on
send_command('bind ^f9 input /ws "Resolution" <t>') --^ means cntrl
send_command('bind ^f10 input /ws "Dimidiation" <t>')
send_command('bind ^f11 input /ws "Ground Strike" <t>')
send_command('bind ^f12 input /ws "Savage Blade" <t>')
send_command('bind !f7 gs c toggle TankingTP set') --! means alt, this exists only for toggling outside of this mode being active, otherwise f9
send_command('bind !f8 gs c toggle TankingTP') --! turns tanking tp off
send_command('bind !f9 gs c toggle backwards')
send_command('bind !f10 ') --Empty
send_command('bind !f11 ') --Empty
send_command('bind !f12 gs c lockgearindex')

send_command('bind !e input /item "Echo Drops" <me>')
send_command('bind !r input /item "Remedy" <me>')
send_command('bind !p input /item "Panacea" <me>')
send_command('bind !h input /item "Holy Water" <me>')
send_command('bind !w input /equip ring2 "Warp Ring"; /echo Warping; wait 11; input /item "Warp Ring" <me>;')
send_command('bind !q input /equip ring2 "Dim. Ring (Holla)"; /echo Reisenjima; wait 11; input /item "Dim. Ring (Holla)" <me>;')
send_command('bind !t gs c toggle TH') -- alt + t toggles TH mode

--Unload Binds
function file_unload()
	send_command('unbind ^f9')
	send_command('unbind ^f10')
	send_command('unbind ^f11')
	send_command('unbind ^f12')
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

------------------------------------------
-- Console Commands             --
------------------------------------------
function self_command(command)
	if command == 'togglelock' then
		if SetLocked == false then
			msg("Equipment Set LOCKED!")
		else
			SetLocked = false
			msg("Equipment Set UNLOCKED!")
		end
	elseif command == 'lockgearindex' then
		if LockGearIndex == false then
			LockGearIndex = true
			LockGearSet = {
				ammo = player.equipment.ammo,
				head = player.equipment.head,
				neck = player.equipment.neck,
				ear1 = player.equipment.left_ear,
				ear2 = player.equipment.right_ear,
				body = player.equipment.body,
				hands = player.equipment.hands,
				ring1 = player.equipment.left_ring,
				ring2 = player.equipment.right_ring,
				back = player.equipment.back,
				waist = player.equipment.waist,
				legs = player.equipment.legs,
				feet = player.equipment.feet
			}
			msg("Gear Index Locked")
		else
			LockGearIndex = false
			msg("Gear Index Unlocked")
			if player.status == 'Engaged' then
				if TankingTP == true then
					ChangeGear(sets.TankingTP[sets.TankingTP.index[TankingTP_ind]])
				elseif EpeoAM3 == true then
						ChangeGear(sets.EpeoAM3[sets.EpeoAM3.index[EpeoAM3_ind]])
				elseif TwoHandedTP == true then
					ChangeGear(sets.TwoHandedTP[sets.TwoHandedTP.index[TwoHandedTP_ind]])
				else
					ChangeGear(sets.OneHandedTP[sets.OneHandedTP.index[OneHandedTP_ind]])
				end
			else
				ChangeGear(sets.Idle[sets.Idle.index[Idle_ind]])
			end
		end
	end
	if command == 'toggle TP set' then
		if TankingTP == true then
			TankingTP_ind = TankingTP_ind + 1
			if TankingTP_ind > #sets.TankingTP.index then TankingTP_ind = 1 end
			send_command('@input /echo <----- TankingTP Set changed to ' .. sets.TankingTP.index[TankingTP_ind] .. ' ----->')
			if player.status == 'Engaged' then
				ChangeGear(sets.TankingTP[sets.TankingTP.index[TankingTP_ind]])
			end
		elseif TankingTP == false then
			if TwoHandedTP == true then
				TwoHandedTP_ind = TwoHandedTP_ind + 1
				EpeoAM3_ind = EpeoAM3_ind +1
				if TwoHandedTP_ind > #sets.TwoHandedTP.index then TwoHandedTP_ind = 1 end
				if EpeoAM3_ind > #sets.EpeoAM3.index then EpeoAM3_ind = 1 end
				send_command('@input /echo <----- 2H TP Set changed to ' .. sets.TwoHandedTP.index[TwoHandedTP_ind] .. ' ----->')	
				if player.status == 'Engaged' then
					if EpeoAM3 == true then
						ChangeGear(sets.EpeoAM3[sets.EpeoAM3.index[EpeoAM3_ind]])
					else
						ChangeGear(sets.TwoHandedTP[sets.TwoHandedTP.index[TwoHandedTP_ind]])
					end
				end
			elseif TwoHandedTP == false then
				OneHandedTP_ind = OneHandedTP_ind + 1
				if OneHandedTP_ind > #sets.OneHandedTP.index then OneHandedTP_ind = 1 end
				send_command('@input /echo <----- 1H TP Set changed to ' .. sets.OneHandedTP.index[OneHandedTP_ind] .. ' ----->')
				if player.status == 'Engaged' then
					ChangeGear(sets.OneHandedTP[sets.OneHandedTP.index[OneHandedTP_ind]])
				end
			end		
		end
	elseif command == 'toggle Idle set' then
		Idle_ind = Idle_ind + 1
		if Idle_ind > #sets.Idle.index then Idle_ind = 1 end
		send_command('@input /echo <----- Idle Set changed to ' .. sets.Idle.index[Idle_ind] .. ' ----->')
		ChangeGear(sets.Idle[sets.Idle.index[Idle_ind]])
	elseif command == 'toggle WS set' then
		Resolution_ind = Resolution_ind + 1
		Dimidiation_ind = Dimidiation_ind + 1
		SavageBlade_ind = SavageBlade_ind + 1
		Requiescat_ind = Requiescat_ind + 1
		BlackHalo_ind = BlackHalo_ind + 1
		Realmrazer_ind = Realmrazer_ind + 1
		if Resolution_ind > #sets.Resolution.index then Resolution_ind = 1 end
		if Dimidiation_ind > #sets.Dimidiation.index then Dimidiation_ind = 1 end
		if SavageBlade_ind > #sets.SavageBlade.index then SavageBlade_ind = 1 end
		if Requiescat_ind > #sets.Requiescat.index then Requiescat_ind = 1 end
		if BlackHalo_ind > #sets.BlackHalo.index then BlackHalo_ind = 1 end
		if Realmrazer_ind > #sets.Realmrazer.index then Realmrazer_ind = 1 end
		send_command('@input /echo <----- WS Sets changed to ' .. sets.Resolution.index[Resolution_ind] .. ' ----->')
	elseif command == 'toggle TankingTP set' then
		TankingTP_ind = TankingTP_ind + 1
		if TankingTP_ind > #sets.TankingTP.index then TankingTP_ind = 1 end
		send_command('@input /echo <----- TankingTP Set changed to ' .. sets.TankingTP.index[TankingTP_ind] .. ' ----->')
		if player.status == 'Engaged' then
			ChangeGear(sets.TankingTP[sets.TankingTP.index[TankingTP_ind]])
		end
	elseif command == 'toggle TankingTP' then
		if TankingTP == true then
			TankingTP = false
			send_command('@input /echo <----- Tanking TP: [Off] ----->')
        else
			TankingTP = true
			send_command('@input /echo <----- Tanking TP: [On] ----->')
		end
		status_change(player.status)
	elseif command == 'toggle TwoHandedTP' then
		if TwoHandedTP == true then
			TwoHandedTP = false
			send_command('@input /echo <----- 2H TP: [Off] ----->')
        else
			TwoHandedTP = true
			send_command('@input /echo <----- 2H TP: [On] ----->')
		end
		status_change(player.status)
	elseif command == 'toggle SIR' then
		if SIR == true then
			SIR = false
			send_command('@input /echo <----- Spell Interruption Rate: [Off] ----->')
        else
			SIR = true
			send_command('@input /echo <----- Spell Interruption Rate: [On] ----->')
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
		if TankingTP == true then
			TankingTP_ind = TankingTP_ind -1
			if TankingTP_ind == 0 then
				TankingTP_ind = #sets.TankingTP.index
			end
			send_command('@input /echo <----- TankingTP Set changed to ' .. sets.TankingTP.index[TankingTP_ind] .. ' ----->')
			if player.status == 'Engaged' then
				ChangeGear(sets.TankingTP[sets.TankingTP.index[TankingTP_ind]])
			end
		elseif TankingTP == false then
			if TwoHandedTP == true then
				TwoHandedTP_ind = TwoHandedTP_ind -1
				EpeoAM3_ind = EpeoAM3_ind -1
				if TwoHandedTP_ind == 0 then
					TwoHandedTP_ind = #sets.TwoHandedTP.index
				end
				if EpeoAM3_ind == 0 then
					EpeoAM3_ind = #sets.EpeoAM3.index
				end
				send_command('@input /echo <----- 2H TP Set changed to ' .. sets.TwoHandedTP.index[TwoHandedTP_ind] .. ' ----->')	
				if player.status == 'Engaged' then
					if EpeoAM3 == true then
						ChangeGear(sets.EpeoAM3[sets.EpeoAM3.index[EpeoAM3_ind]])
					else
						ChangeGear(sets.TwoHandedTP[sets.TwoHandedTP.index[TwoHandedTP_ind]])
					end
				end
			elseif TwoHandedTP == false then
				OneHandedTP_ind = OneHandedTP_ind -1
				if OneHandedTP_ind == 0 then
					OneHandedTP_ind = #sets.OneHandedTP.index
				end
				if player.status == 'Engaged' then
					ChangeGear(sets.OneHandedTP[sets.OneHandedTP.index[TP_ind]])
				end
				send_command('@input /echo <----- 1H TP Set changed to ' .. sets.OneHandedTP.index[OneHandedTP_ind] .. ' ----->')
			end
		end
	elseif command == 'ZoneChange' then
		IdleState()
	elseif string.sub(command, 0, 4) == '-cd ' then     --If the first 4 characters of the command are '-cd '
        add_to_chat (30, string.sub(command, 5, string.len(command)))      --add everything after '-cd ' to a message in the chat
	end
end

------------------------------------------
-- Character States                     --
------------------------------------------
function IdleState()
    if LockGearIndex then
		ChangeGear(LockGearSet)
	elseif not LockGearIndex then
		ChangeGear(sets.Idle[sets.Idle.index[Idle_ind]])
	end
	
    if player.mpp <= 50 and Idle_ind == 1 then --standard idle
        ChangeGear({head = HerculeanHelm.Refresh, waist = "Fucho-no-obi"})
	elseif player.mpp <= 25 and Idle_ind == 4 then -- kiting MP, probably going to hate this rule at some point or love it, idk
		ChangeGear({waist = "Fucho-no-obi"})
    end
		
	if Town:contains(world.area) and player.mpp < 75 then
        ChangeGear(set_combine(sets.Idle.Town, sets.Idle.Refresh))
		elseif Town:contains(world.area) then
		ChangeGear(sets.Idle.Town)
	end
	
	if buffactive['Embolden'] then
		ChangeGear(set_combine(equipSet, {head="Erilaz Galea +1", hands="Regal Gauntlets", back="Evasionist's Cape", legs="Furthark Trousers +3"}))
	end
	
end

windower.raw_register_event('zone change',function()
windower.send_command('@wait 9; input //gs c ZoneChange')
end)

function RestingState()

end

function EngagedState()
	if LockGearIndex then
		ChangeGear(LockGearSet)
	elseif not LockGearIndex then
		if TankingTP == true then
			ChangeGear(sets.TankingTP[sets.TankingTP.index[TankingTP_ind]])
		elseif buffactive["Aftermath: Lv.3"] and player.equipment.main == 'Epeolatry' then --am3
			EpeoAM3 = true
			ChangeGear(sets.EpeoAM3[sets.EpeoAM3.index[EpeoAM3_ind]])	
		elseif TwoHandedTP == true then
			EpeoAM3 = false
			ChangeGear(sets.TwoHandedTP[sets.TwoHandedTP.index[TwoHandedTP_ind]])
		else
			EpeoAM3 = false
			ChangeGear(sets.OneHandedTP[sets.OneHandedTP.index[OneHandedTP_ind]])
		end
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
	elseif spell.mp_cost and spell.mp_cost > player.mp and not has_any_buff_of({'Manawell','Manafont'}) and not spell.action_type == 'Ability' then
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

------------------------------------------
--              Precast                 --
------------------------------------------
function has_any_buff_of(buff_set)--returns true if you have any of the buffs given
    for i,v in pairs(buff_set) do
        if buffactive[v] ~= nil then return true end
    end
end
--JA Sets--
function pc_JA(spell, act)
	if spell.english == 'Elemental Sforzo' then
		ChangeGear(sets.JA.Sforzo)
	elseif spell.english == 'Swordplay' then
		ChangeGear(sets.JA.Swordplay)
	elseif spell.english == 'Vallation' or spell.english == 'Valiance' then
		ChangeGear(sets.JA.Vallation)
	elseif spell.english == 'Pflug' then
		ChangeGear(sets.JA.Pflug)
	elseif spell.english == 'Embolden' then
		ChangeGear(sets.JA.Embolden)
	elseif spell.english == 'Vivacious Pulse' then
		ChangeGear(sets.JA.Pulse)
	elseif spell.english == 'Gambit' then
		ChangeGear(sets.JA.Gambit)
	elseif spell.english == 'Battuta' then
		ChangeGear(sets.JA.Battuta)
	elseif spell.english == 'Rayke' then
		ChangeGear(sets.JA.Rayke)
	elseif spell.english == 'Liement' then
		ChangeGear(sets.JA.Liement)
	elseif spell.english == 'One For All' then
		ChangeGear(sets.JA.One)
	elseif spell.english == 'Odyllic Subterfuge' then
		ChangeGear(sets.JA.Subterfuge)
	elseif spell.english == 'Lunge' or spell.english == 'Swipe' then
		ChangeGear(sets.JA.Lunge)
	elseif spell.english == 'Meditate' then
		ChangeGear(sets.JA.Meditate)
	elseif spell.english == 'Provoke' then
		ChangeGear(sets.JA.Provoke)
	elseif spell.english == 'Warcry' then
		ChangeGear(sets.JA.Warcry)
	end
	
	--These spells can't override each other, and must be canceled--
	if spell.name == 'Valiance' or spell.name == 'Vallation' or spell.name == 'Liement' then
		if buffactive['Valiance']  then
			cast_delay(0.2)
			windower.ffxi.cancel_buff(535)
		elseif buffactive['Vallation']  then
			cast_delay(0.2)
			windower.ffxi.cancel_buff(531)
		elseif buffactive['Liement'] then
			cast_delay(0.2)
			windower.ffxi.cancel_buff(537)
		end
	end

	IgnoreWS = S { "Sanguine Blade", "Red Lotus Blade", "Flash Nova", "Realmrazer" }  -- Excluded from Moonshade TP override rule.
	BrutalWS = S { "Resolution"}
	STRWS = S {"Vorpal Blade", "Fell Cleave", "Circle Blade", "Swift Blade", "Shockwave" } -- Just uses the Resolution Set
	
	
	if spell.type == 'WeaponSkill' then
		if spell.english == 'Requiescat' then
			ChangeGear(sets.Requiescat[sets.Requiescat.index[Requiescat_ind]])
		elseif spell.english == 'Dimidiation' or spell.english == 'Ground Strike' then
			ChangeGear(sets.Dimidiation[sets.Dimidiation.index[Dimidiation_ind]])
		elseif spell.english == 'Resolution' or STRWS:contains(spell.english) then
			ChangeGear(sets.Resolution[sets.Resolution.index[Resolution_ind]])
		elseif spell.english == 'Savage Blade' then
			ChangeGear(sets.SavageBlade[sets.SavageBlade.index[SavageBlade_ind]])
		elseif spell.english == 'Realmrazer' then
			ChangeGear(sets.Realmrazer[sets.Realmrazer.index[Realmrazer_ind]])
		elseif spell.english == 'Black Halo' or 'Judgement' then
			ChangeGear(sets.BlackHalo[sets.BlackHalo.index[BlackHalo_ind]])
		elseif spell.english == 'Flash Nova' or spell.english == 'Red Lotus Blade' then
			ChangeGear(sets.FlashNova)
		elseif spell.english == 'Sanguine Blade' then
			ChangeGear(sets.SanguineBlade)
		end
		if player.tp > 2025 and player.equipment.main == 'Lionheart' and buffactive['TP Bonus'] then
            if IgnoreWS:contains(spell.english) then
                return
            elseif BrutalWS:contains(spell.english) then
                equip(set_combine(equipSet, { ear1 = "Brutal Earring" })) --Watch for ear conflicts between TP sets and WS sets
                msg("Brutal Earring equiped !!!!")
            else
                equip(set_combine(equipSet, { ear1 = "Ishvara Earring" }))
                msg("Ishvara Earring equiped !!!!")
            end
        elseif player.tp > 2275 and player.equipment.main == 'Lionheart' then
            if IgnoreWS:contains(spell.english) then
                return
			elseif BrutalWS:contains(spell.english) then
                equip(set_combine(equipSet, { ear1 = "Brutal Earring" })) --Watch for ear conflicts between TP sets and WS sets
                msg("Brutal Earring equiped !!!!")
            else
                equip(set_combine(equipSet, { ear1 = "Ishvara Earring" }))
                msg("Ishvara Earring equiped !!!!")
            end
        elseif player.tp > 2550 and buffactive['TP Bonus'] then
            if IgnoreWS:contains(spell.english) then
                return
            elseif BrutalWS:contains(spell.english) then
                equip(set_combine(equipSet, { ear1 = "Brutal Earring" })) --Watch for ear conflicts between TP sets and WS sets
                msg("Brutal Earring equiped !!!!")
            else
                equip(set_combine(equipSet, { ear1 = "Ishvara Earring" }))
                msg("Ishvara Earring equiped !!!!")
            end
        elseif player.tp > 2775 then
            if IgnoreWS:contains(spell.english) then
                return
            elseif BrutalWS:contains(spell.english) then
                equip(set_combine(equipSet, { ear1 = "Brutal Earring" })) --Watch for ear conflicts between TP sets and WS sets
                msg("Brutal Earring equiped !!!!")
            else
                equip(set_combine(equipSet, { ear1 = "Ishvara Earring" }))
                msg("Ishvara Earring equiped !!!!")
            end
        end
    end

	if string.find(spell.english,'Step') then
		ChangeGear(set_combine(sets.TwoHandedTP.AccuracyFull, sets.Utility.TH))
	elseif spell.english == 'Animated Flourish' then
		ChangeGear(sets.Enmity)
	end
end

function pc_Magic(spell, act)
    if spell.action_type == 'Magic' then
        if buffactive['Vallation'] or buffactive ['Valiance'] then
            if spell.skill == 'Enhancing Magic' then
                ChangeGear(sets.precast.FC.ValEnhancing)
            else
                ChangeGear(sets.precast.FC.Val)
            end
        else
            if spell.skill == 'Enhancing Magic' then
                ChangeGear(sets.precast.FC.Enhancing)
            else
                ChangeGear(sets.precast.FC.Standard)
            end
        end
    end
end

function pc_Item(spell, act)
end

------------------------------------------
-- Midcast                 --
------------------------------------------
function mc_JA(spell, act)
end

function mc_Magic(spell, act)
	if spell.skill == 'Enhancing Magic' then
		if buffactive['Embolden'] then
			if spell.english == 'Phalanx' then
				ChangeGear(set_combine(sets.Enhancing.Phalanx, {back="Evasionist's Cape"}))
			elseif string.find(spell.english,'Shell') or string.find(spell.english,'Protect') then
				ChangeGear(set_combine(sets.Enhancing.ProShell, {back="Evasionist's Cape"}))
			else
				ChangeGear(set_combine(sets.Enhancing.Duration, {back="Evasionist's Cape"}))
			end
		elseif spell.english == 'Aquaveil' then
			ChangeGear(sets.SIR)
		elseif spell.english == 'Refresh' then
			ChangeGear(sets.Enhancing.Refresh)
		elseif string.find(spell.english,'Regen')then
			ChangeGear(sets.Enhancing.Regen)
		elseif string.find(spell.english,'Bar') then
			ChangeGear(sets.Enhancing.Barspell)
		elseif spell.english=="Temper" then
			ChangeGear(sets.Enhancing.Temper)
		elseif spell.english == 'Phalanx' then
			ChangeGear(sets.Enhancing.Phalanx)
		elseif spell.english == 'Foil' then
			ChangeGear(sets.Enhancing.Foil)
		elseif string.find(spell.english,'Shell') or string.find(spell.english,'Protect') then
			ChangeGear(sets.Enhancing.ProShell)
		else
			ChangeGear(sets.Enhancing.Duration)
		end
	elseif spell.skill == 'Healing Magic' then
		if spell.target and spell.target.type == 'SELF' then
			ChangeGear(sets.Cures.SelfCures)
		else
			ChangeGear(sets.Cures)
		end
	elseif spell.skill == 'Enfeebling Magic' then 
		if spell.english == 'Sleepga' or spell.english == 'Poisonga' and TH == true then --For tanking/pulling Divergence to TH tag everything
			ChangeGear(set_combine(sets.Enmity, sets.Utility.TH))
		end
	end

	if BlueMagic_Enmity:contains(spell.english) then
		ChangeGear(sets.Enmity)
	elseif BlueMagic_Buffs:contains(spell.english) then
		ChangeGear(sets.TankingTP.Tank)
	elseif PhysicalSpells:contains(spell.english) then
		ChangeGear(sets.BlueMagic.STR)
	elseif BlueMagic_Healing:contains(spell.english) then 
		if spell.target and spell.target.type == 'SELF' then
			ChangeGear(sets.Cures.SelfCures)
		else
			ChangeGear(sets.Cures)
		end
	elseif RUNMagic_Enmity:contains(spell.english) then
		ChangeGear(sets.Enmity)
	end
	
	if buffactive['Tenebrae'] and spell.english == 'Lunge' or spell.english == 'Swipe' then
		equip(sets.JA.Lunge,{head="Pixie Hairpin +1"})
	end
	
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
    if LockGearIndex == true then
        ChangeGear(LockGearSet)
        msg("Lock Gear is ON -- Swapping Gear")
    else
        if player.status == 'Engaged' then
            EngagedState()
        else
            IdleState()
        end
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
	
	if player.equipment.main ~= 'empty' then -- Changes 1H/2H TP during status change, combat, spell, etc.
        local weapon_skill = gearswap.res.items:with('en', player.equipment.main).skill
		if weapon_skill and S{1,4,6,7,8,10,12}:contains(weapon_skill) or player.equipment.main == 'empty' then --Checks mainhand weapon for TP set choice. See bottom notes.
            TwoHandedTP = true
        else
            TwoHandedTP = false
        end
    else
        msg("!!Main Weapon Not Equiped!!")
    end
	
end

--Numbers in the 1H 2H TP mode rule:
--1 = Hand-to-Hand
--2 = Dagger
--3 = Sword
--4 = Great Sword
--5 = Axe
--6 = Great Axe
--7 = Scythe
--8 = Polearm
--9 = Katana
--10 = Great Katana
--11 = Club
--12 = Staff


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
	IgnoreSIRSpell = S { "Phalanx", "Temper", "Refresh", "Regen"}  -- Excluded from Spell Interruption Rate override rule.
	if spell.action_type == 'Ability' then
		mc_JA(spell, act)
	elseif spell.action_type == 'Magic' then
		if SIR == true then
			if IgnoreSIRSpell:contains(spell.english) and not string.find(spell.english,'Bar') then
				mc_Magic(spell, act)
			elseif BlueMagic_Healing:contains(spell.english) then
				ChangeGear(set_combine(sets.SIR,{body = "Vrikodara Jupon", back = Ogma.Cure}))
			else
				ChangeGear(sets.SIR)
			end
		else
			mc_Magic(spell, act)
		end
	else
		mc_Item(spell, act)
	end
end

function aftercast(spell, act)
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
		if spell.english == "Meditate" then
			send_command('wait 170;gs c -cd '..spell.name..': [Ready In 10 Seconds!];wait 10;gs c -cd '..spell.name..': [Ready !]')
		elseif spell.english == "Sekkanoki" then
			send_command('wait 290;gs c -cd '..spell.name..': [Ready In 10 Seconds!];wait 10;gs c -cd '..spell.name..': [Ready !]')
		elseif spell.english == "Swordplay" then
			send_command('wait 290;gs c -cd '..spell.name..': [Ready In 10 Seconds!];wait 10;gs c -cd '..spell.name..': [Ready !]')
		elseif spell.english == "One for All" then
			send_command('wait 290;gs c -cd '..spell.name..': [Ready In 10 Seconds!];wait 10;gs c -cd '..spell.name..': [Ready !]')
		elseif spell.english == "Battuta" then
			send_command('wait 290;gs c -cd '..spell.name..': [Ready In 10 Seconds!];wait 10;gs c -cd '..spell.name..': [Ready !]')
		elseif spell.english == "Liement" then
			send_command('wait 170;gs c -cd '..spell.name..': [Ready In 10 Seconds!];wait 10;gs c -cd '..spell.name..': [Ready !]')
		end
	end	
	
	if player.equipment.main ~= 'empty' then -- Changes action 
        local weapon_skill = gearswap.res.items:with('en', player.equipment.main).skill
        if weapon_skill and S{4,6,7,8,10,12}:contains(weapon_skill) then --Checks mainhand weapon for TP set choice.
            TwoHandedTP = true
        else
            TwoHandedTP = false
        end
    else
        msg("!!Main Weapon Not Equiped!!")
    end
	
end
	
	
function ChangeGear(GearSet)
	equipSet = GearSet
	equip(GearSet)
end

function LockGearSet(GearSet)
	LockedEquipSet = GearSet
	equip(GearSet)
	SetLocked = true
end

function UnlockGearSet()
	locked = false
	equip(equipSet)
end
