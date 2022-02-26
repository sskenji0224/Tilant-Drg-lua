-- Original: Motenten / Modified: Arislan

-------------------------------------------------------------------------------------------------------------------
--  Keybinds
-------------------------------------------------------------------------------------------------------------------

--  Modes:      [ F9 ]              Cycle Offense Modes
--              [ CTRL+F9 ]         Cycle Hybrid Modes
--              [ WIN+F9 ]          Cycle Weapon Skill Modes
--              [ F10 ]             Emergency -PDT Mode
--              [ ALT+F10 ]         Toggle Kiting Mode
--              [ F11 ]             Emergency -MDT Mode
--              [ F12 ]             Update Current Gear / Report Current Status
--              [ CTRL+F12 ]        Cycle Idle Modes
--              [ ALT+F12 ]         Cancel Emergency -PDT/-MDT Mode
--              [ WIN+A ]           AttackMode: Capped/Uncapped WS Modifier
--              [ WIN+C ]           Toggle Capacity Points Mode
--
--
--              (Global-Binds.lua contains additional non-job-related keybinds)

-------------------------------------------------------------------------------------------------------------------
-- Setup functions for this job.  Generally should not be modified.
-------------------------------------------------------------------------------------------------------------------

-- Initialization function for this job file.
function get_sets()
    mote_include_version = 2

    -- Load and initialize the include file.
    include('Mote-Include.lua')
    res = require 'resources'
end

-- Setup vars that are user-independent.
function job_setup()

    wyv_breath_spells = S{'Dia', 'Poison', 'Blaze Spikes', 'Protect', 'Sprout Smack', 'Head Butt', 'Cocoon',
        'Barfira', 'Barblizzara', 'Baraera', 'Barstonra', 'Barthundra', 'Barwatera'}
    wyv_elem_breath = S{'Flame Breath', 'Frost Breath', 'Sand Breath', 'Hydro Breath', 'Gust Breath', 'Lightning Breath'}



end

-------------------------------------------------------------------------------------------------------------------
-- User setup functions for this job.  Recommend that these be overridden in a sidecar file.
-------------------------------------------------------------------------------------------------------------------

function user_setup()
    state.OffenseMode:options('Normal', 'LowAcc', 'MidAcc', 'HighAcc', 'MaxAcc', 'STP')
    state.WeaponskillMode:options('Normal', 'Acc')
    state.HybridMode:options('Normal', 'DT')
    state.IdleMode:options('Normal', 'DT')

    state.AttackMode = M{['description']='Attack', 'Capped', 'Uncapped'}
    state.CP = M(false, "Capacity Points Mode")

    -- Additional local binds
	send_command('bind @a gs c cycle AttackMode')
    send_command('bind @w gs c toggle WeaponLock')
    send_command('bind @c gs c toggle CP')

	send_command('bind ^` input /ja "Hasso" <me>')
	send_command('bind !` input /ja "Seigan" <me>')

    select_default_macro_book(1, 13)
    set_lockstyle()
end

function user_unload()
	send_command('unbind @a')
    send_command('unbind @w')
    send_command('unbind @c')
	
	send_command('unbind ^`')
	send_command('unbind !-')
end

-- Define sets and vars used by this job file.
function init_gear_sets()



    ------------------------------------------------------------------------------------------------
    ---------------------------------------- Precast Sets ------------------------------------------
    ------------------------------------------------------------------------------------------------

    sets.precast.JA['Spirit Surge'] = {body="Ptero. Mail +1"}
    sets.precast.JA['Call Wyvern'] = {body="Ptero. Mail +1"}
    sets.precast.JA['Ancient Circle'] = {legs="Vishap Brais +3"}

    sets.precast.JA['Spirit Link'] = {
        head="Vishap Armet +1",
        hands="Pel. Vambraces +1",
        feet="Ptero. Greaves +2",
        --ear1="Pratik Earring",
        }

    sets.precast.JA['Steady Wing'] = {
        legs="Vishap Brais +3",
        feet="Ptero. Greaves +2",
        neck="Chanoix's Gorget",
        ear1="Lancer's Earring",
        --ear2="Anastasi Earring",
        back=gear.BrigDA,
        }

    sets.precast.JA['Jump'] = {
        ammo="Ginsen",
        head="Flam. Zucchetto +1",
        body="Vishap Mail +1",
        hands="Vishap F. G. +1",
        legs="Vishap Brais +3",
        feet="Ostro Greaves",
        neck="Anu Torque",
        ear1="Sherida Earring",
        ear2="Telos Earring",
        ring1="Petrov Ring",
        ring2="Niqmaddu Ring",
        back={ name="Brigantia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10',}},
        waist="Ioskeha Belt",
        }

    sets.precast.JA['High Jump'] = sets.precast.JA['Jump']
    sets.precast.JA['Spirit Jump'] = sets.precast.JA['Jump']
    sets.precast.JA['Soul Jump'] = set_combine(sets.precast.JA['Jump'], {body="Vishap Mail +2"})
    sets.precast.JA['Super Jump'] = {}

    sets.precast.JA['Angon'] = {ammo="Angon", hands="Ptero. Fin. G. +3"}

    -- Fast cast sets for spells
    sets.precast.FC = {
        ammo="Sapience Orb", --2
        head="Carmine Mask +1", --14
        body="Jumalik Mail", --8
        hands="Leyline Gloves", --8
        legs="Aya. Cosciales +2", --6
        feet="Carmine Greaves +1", --8
        neck="Orunmila's Torque", --5
        ear1="Loquacious Earring", --2
        ear2="Enchntr. Earring +1", --2
        ring1="Lebeche Ring",
		ring2="Rahab Ring", --2
        }

    ------------------------------------------------------------------------------------------------
    ------------------------------------- Weapon Skill Sets ----------------------------------------
    ------------------------------------------------------------------------------------------------

    sets.precast.WS = {
        ammo="Knobkierrie",
    head={ name="Lustratio Cap +1", augments={'Attack+20','STR+8','"Dbl.Atk."+3',}},
    body={ name="Lustr. Harness +1", augments={'Attack+20','STR+8','"Dbl.Atk."+3',}},
    hands="Sulev. Gauntlets +1",
    legs="Vishap Brais +3",
    feet={ name="Lustra. Leggings +1", augments={'Attack+20','STR+8','"Dbl.Atk."+3',}},
    neck={ name="Dgn. Collar +1", augments={'Path: A',}},
    waist="Fotia Belt",
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    left_ring="Niqmaddu Ring",
    right_ring="Petrov Ring",
    back={ name="Brigantia's Mantle", augments={'DEX+10','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
        }

    sets.precast.WS.Acc = set_combine(sets.precast.WS, {})

    sets.precast.WS.Uncapped = set_combine(sets.precast.WS, {
        head="Sulevia's Mask +2",
        })

	--WSD PRIORITY WS
		
    sets.precast.WS['Camlann\'s Torment'] = {
        ammo="Knobkierrie",
    head={ name="Lustratio Cap +1", augments={'Attack+20','STR+8','"Dbl.Atk."+3',}},
    body={ name="Lustr. Harness +1", augments={'Attack+20','STR+8','"Dbl.Atk."+3',}},
    hands="Sulev. Gauntlets +1",
    legs="Vishap Brais +3",
    feet={ name="Lustra. Leggings +1", augments={'Attack+20','STR+8','"Dbl.Atk."+3',}},
    neck={ name="Dgn. Collar +1", augments={'Path: A',}},
    waist="Fotia Belt",
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    left_ring="Niqmaddu Ring",
    right_ring="Petrov Ring",
    back={ name="Brigantia's Mantle", augments={'DEX+10','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
        }

    sets.precast.WS['Camlann\'s Torment'].Acc = set_combine(sets.precast.WS['Camlann\'s Torment'], {})
    sets.precast.WS['Camlann\'s Torment'].Uncapped = set_combine(sets.precast.WS['Camlann\'s Torment'], {})

    sets.precast.WS['Sonic Thrust'] = set_combine(sets.precast.WS['Camlann\'s Torment'], {ring1="Regal Ring",	})
    sets.precast.WS['Sonic Thrust'].Acc = set_combine(sets.precast.WS['Camlann\'s Torment'].Acc, {})
    sets.precast.WS['Sonic Thrust'].Uncapped = set_combine(sets.precast.WS['Camlann\'s Torment'].Uncapped, {})
		
	sets.precast.WS['Geirskogul'] = set_combine(sets.precast.WS['Camlann\'s Torment'], {})

    sets.precast.WS['Geirskogul'].Acc = set_combine(sets.precast.WS['Geirskogul'], {})
    sets.precast.WS['Geirskogul'].Uncapped = set_combine(sets.precast.WS['Geirskogul'], {})
		
    sets.precast.WS['Impulse Drive'] = {
        ammo="Knobkierrie",
    head={ name="Lustratio Cap +1", augments={'Attack+20','STR+8','"Dbl.Atk."+3',}},
    body={ name="Lustr. Harness +1", augments={'Attack+20','STR+8','"Dbl.Atk."+3',}},
    hands="Sulev. Gauntlets +1",
    legs="Vishap Brais +3",
    feet={ name="Lustra. Leggings +1", augments={'Attack+20','STR+8','"Dbl.Atk."+3',}},
    neck={ name="Dgn. Collar +1", augments={'Path: A',}},
    waist="Fotia Belt",
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    left_ring="Niqmaddu Ring",
    right_ring="Petrov Ring",
    back={ name="Brigantia's Mantle", augments={'DEX+10','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
        }

    sets.precast.WS['Impulse Drive'].Acc = set_combine(sets.precast.WS['Impulse Drive'], {
        legs="Vishap Brais +3",
        })

    sets.precast.WS['Impulse Drive'].HighTP = set_combine(sets.precast.WS['Impulse Drive'], {
        ammo="Knobkierrie",
    head={ name="Lustratio Cap +1", augments={'Attack+20','STR+8','"Dbl.Atk."+3',}},
    body={ name="Lustr. Harness +1", augments={'Attack+20','STR+8','"Dbl.Atk."+3',}},
    hands="Sulev. Gauntlets +1",
    legs="Vishap Brais +3",
    feet={ name="Lustra. Leggings +1", augments={'Attack+20','STR+8','"Dbl.Atk."+3',}},
    neck={ name="Dgn. Collar +1", augments={'Path: A',}},
    waist="Fotia Belt",
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    left_ring="Niqmaddu Ring",
    right_ring="Petrov Ring",
    back={ name="Brigantia's Mantle", augments={'DEX+10','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
        })
	
	--MULTI HIT WS
		
    sets.precast.WS['Stardiver'] = {
        ammo="Knobkierrie",
    head={ name="Lustratio Cap +1", augments={'Attack+20','STR+8','"Dbl.Atk."+3',}},
    body={ name="Lustr. Harness +1", augments={'Attack+20','STR+8','"Dbl.Atk."+3',}},
    hands="Sulev. Gauntlets +1",
    legs="Sulev. Cuisses +2",
    feet={ name="Lustra. Leggings +1", augments={'Attack+20','STR+8','"Dbl.Atk."+3',}},
    neck={ name="Dgn. Collar +1", augments={'Path: A',}},
    waist="Fotia Belt",
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    left_ring="Niqmaddu Ring",
    right_ring="Petrov Ring",
    back={ name="Brigantia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10',}},
        }

    sets.precast.WS['Stardiver'].Acc = set_combine(sets.precast.WS['Stardiver'], {})

    sets.precast.WS['Stardiver'].Uncapped = set_combine(sets.precast.WS['Stardiver'], {})
	
	--CRITICAL HIT WS
	
    sets.precast.WS['Drakesbane'] = {
        ammo="Knobkierrie",
    head={ name="Lustratio Cap +1", augments={'Attack+20','STR+8','"Dbl.Atk."+3',}},
    body={ name="Lustr. Harness +1", augments={'Attack+20','STR+8','"Dbl.Atk."+3',}},
    hands="Sulev. Gauntlets +1",
    legs="Vishap Brais +3",
    feet={ name="Lustra. Leggings +1", augments={'Attack+20','STR+8','"Dbl.Atk."+3',}},
    neck={ name="Dgn. Collar +1", augments={'Path: A',}},
    waist="Fotia Belt",
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    left_ring="Niqmaddu Ring",
    right_ring="Petrov Ring",
    back={ name="Brigantia's Mantle", augments={'DEX+10','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
        }

    sets.precast.WS['Drakesbane'].Acc = set_combine(sets.precast.WS['Drakesbane'], {
        
		})

    sets.precast.WS['Drakesbane'].Uncapped = set_combine(sets.precast.WS['Drakesbane'], {
        head="Sulevia's Mask +2",
        })

	--ELEMENTAL WS
		
    sets.precast.WS['Raiden Thrust'] = set_combine(sets.precast.WS, {
        ammo="Pemphredo Tathlum",
        hands="Carmine Fin. Ga. +1",
		neck="Sanctity Necklace",
        ear1="Novio Earring",
        ear2="Friomisi Earring",
        ring1="Shiva Ring +1",
		ring2="Shiva Ring +1",
		waist="Eschan Stone",
        })

    sets.precast.WS['Thunder Thrust'] = sets.precast.WS['Raiden Thrust']
    
	--ADDITIONAL EFFECT WS
	
    sets.precast.WS['Leg Sweep'] = set_combine(sets.precast.WS, {
	ammo="Knobkierrie",
    head={ name="Lustratio Cap +1", augments={'Attack+20','STR+8','"Dbl.Atk."+3',}},
    body={ name="Lustr. Harness +1", augments={'Attack+20','STR+8','"Dbl.Atk."+3',}},
    hands="Sulev. Gauntlets +1",
    legs="Vishap Brais +3",
    feet={ name="Lustra. Leggings +1", augments={'Attack+20','STR+8','"Dbl.Atk."+3',}},
    neck={ name="Dgn. Collar +1", augments={'Path: A',}},
    waist="Fotia Belt",
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    left_ring="Niqmaddu Ring",
    right_ring="Petrov Ring",
    back={ name="Brigantia's Mantle", augments={'DEX+10','Accuracy+20 Attack+20','Weapon skill damage +10%',}},})

    sets.WSDayBonus = {}

    ------------------------------------------------------------------------------------------------
    ---------------------------------------- Midcast Sets ------------------------------------------
    ------------------------------------------------------------------------------------------------

    sets.midcast.HealingBreath = {}

    sets.midcast.ElementalBreath = {}

    ------------------------------------------------------------------------------------------------
    ----------------------------------------- Idle Sets --------------------------------------------
    ------------------------------------------------------------------------------------------------

    sets.idle = {
	ammo="Ginsen",
    head="Hjarrandi Helm",
    body="Hjarrandi Breast.",
    hands="Flam. Manopolas +2",
    legs="Sulev. Cuisses +2",
    feet="Flam. Gambieras +2",
    neck={ name="Dgn. Collar +1", augments={'Path: A',}},
    waist="Ioskeha Belt",
    left_ear="Sherida Earring",
    right_ear="Telos Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Moonlight Ring",
    back={ name="Brigantia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10',}},}

    sets.idle.DT = {}	--50

    sets.idle.Pet = set_combine(sets.idle, {})

    sets.idle.DT.Pet = set_combine(sets.idle.Pet, {})

    sets.idle.Town = set_combine(sets.idle, {})
    sets.idle.Weak = sets.idle.DT
    sets.Kiting = {legs="Carmine Cuisses +1"}

    ------------------------------------------------------------------------------------------------
    ---------------------------------------- Defense Sets ------------------------------------------
    ------------------------------------------------------------------------------------------------

    sets.defense.PDT = sets.idle.DT
    sets.defense.MDT = sets.idle.DT

    ------------------------------------------------------------------------------------------------
    ---------------------------------------- Engaged Sets ------------------------------------------
    ------------------------------------------------------------------------------------------------

    sets.engaged = {
	ammo="Ginsen",
    head="Hjarrandi Helm",
    body="Hjarrandi Breast.",
    hands="Flam. Manopolas +2",
    legs="Sulev. Cuisses +2",
    feet="Flam. Gambieras +2",
    neck={ name="Dgn. Collar +1", augments={'Path: A',}},
    waist="Ioskeha Belt",
    left_ear="Sherida Earring",
    right_ear="Telos Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Moonlight Ring",
    back={ name="Brigantia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10',}},}

    sets.engaged.LowAcc = set_combine(sets.engaged, {})

    sets.engaged.MidAcc = set_combine(sets.engaged.LowAcc, {})

    sets.engaged.HighAcc = set_combine(sets.engaged.MidAcc, {})

    sets.engaged.MaxAcc = set_combine(sets.engaged.HighAcc, {})

    sets.engaged.STP = set_combine(sets.engaged, {})


    ------------------------------------------------------------------------------------------------
    ---------------------------------------- Hybrid Sets -------------------------------------------
    ------------------------------------------------------------------------------------------------

    sets.engaged.Hybrid = {}

    sets.engaged.DT = set_combine(sets.engaged, sets.engaged.Hybrid)
    sets.engaged.LowAcc.DT = set_combine(sets.engaged.LowAcc, sets.engaged.Hybrid)
    sets.engaged.MidAcc.DT = set_combine(sets.engaged.MidAcc, sets.engaged.Hybrid)
    sets.engaged.HighAcc.DT = set_combine(sets.engaged.HighAcc, sets.engaged.Hybrid)
    sets.engaged.STP.DT = set_combine(sets.engaged.STP, sets.engaged.Hybrid)

    ------------------------------------------------------------------------------------------------
    ---------------------------------------- Special Sets ------------------------------------------
    ------------------------------------------------------------------------------------------------

    sets.buff.Doom = {
        neck="Nicander's Necklace", --20
        --ring1="Eshmun's Ring", --20
        --ring2="Eshmun's Ring", --20
        waist="Gishdubar Sash", --10
        }

    sets.CP = {back="Mecisto. Mantle"}
    --sets.Reive = {neck="Ygnas's Resolve +1"}

end

-------------------------------------------------------------------------------------------------------------------
-- Job-specific hooks for standard casting events.
-------------------------------------------------------------------------------------------------------------------

function job_precast(spell, action, spellMap, eventArgs)
    -- Wyvern Commands
    if spell.name == 'Dismiss' and pet.hpp < 100 then        
        eventArgs.cancel = true
        add_to_chat(50, 'Cancelling Dismiss! ' ..pet.name.. ' is below full HP! [ ' ..pet.hpp.. '% ]')
    elseif wyv_breath_spells:contains(spell.english) or (spell.skill == 'Ninjutsu' and player.hpp < 33) then
        equip(sets.precast.HealingBreath)
    end
    -- Jump Overrides
    --if pet.isvalid and player.main_job_level >= 77 and spell.name == "Jump" then
    --    eventArgs.cancel = true
    --    send_command('@input /ja "Spirit Jump" <t>')
    --end

    --if pet.isvalid and player.main_job_level >= 85 and spell.name == "High Jump" then
    --    eventArgs.cancel = true
    --    send_command('@input /ja "Soul Jump" <t>')
    --end
end

function job_post_precast(spell, action, spellMap, eventArgs)
    if spell.type == 'WeaponSkill' then
        if spell.english == 'Stardiver' and state.WeaponskillMode.current == 'Normal' then
            if world.day_element == 'Earth' or world.day_element == 'Light' or world.day_element == 'Dark' then
                equip(sets.WSDayBonus)
           end
		elseif spell.english == 'Impulse Drive' and player.tp > 1750 then
           equip(sets.precast.WS['Impulse Drive'].HighTP)
        end
    end
end

function job_pet_midcast(spell, action, spellMap, eventArgs)
    if spell.name:startswith('Healing Breath') or spell.name == 'Restoring Breath' then
        equip(sets.midcast.HealingBreath)
    elseif wyv_elem_breath:contains(spell.english) then
        equip(sets.midcast.ElementalBreath)
    end
end

-------------------------------------------------------------------------------------------------------------------
-- Job-specific hooks for non-casting events.
-------------------------------------------------------------------------------------------------------------------

function job_buff_change(buff,gain)
    -- If we gain or lose any haste buffs, adjust which gear set we target.
--    if buffactive['Reive Mark'] then
--        if gain then
--            equip(sets.Reive)
--            disable('neck')
--        else
--            enable('neck')
--        end
--    end

    if buff == "doom" then
        if gain then
            equip(sets.buff.Doom)
            send_command('@input /p Doomed.')
             disable('ring1','ring2','waist')
        else
            enable('ring1','ring2','waist')
            handle_equipping_gear(player.status)
        end
    end
    
    if buff == 'Hasso' and not gain then
        add_to_chat(167, 'Hasso just expired!')    
    end

end


-------------------------------------------------------------------------------------------------------------------
-- User code that supplements standard library decisions.
-------------------------------------------------------------------------------------------------------------------

-- Modify the default idle set after it was constructed.
function customize_idle_set(idleSet)
    if state.CP.current == 'on' then
        equip(sets.CP)
        disable('back')
    else
        enable('back')
    end

    return idleSet
end

-- Function to display the current relevant user state when doing an update.
-- Set eventArgs.handled to true if display was handled, and you don't want the default info shown.
function display_current_job_state(eventArgs)
    local cf_msg = ''
    if state.CombatForm.has_value then
        cf_msg = ' (' ..state.CombatForm.value.. ')'
    end

    local m_msg = state.OffenseMode.value
    if state.HybridMode.value ~= 'Normal' then
        m_msg = m_msg .. '/' ..state.HybridMode.value
    end

    local am_msg = '(' ..string.sub(state.AttackMode.value,1,1).. ')'

    local ws_msg = state.WeaponskillMode.value

    local d_msg = 'None'
    if state.DefenseMode.value ~= 'None' then
        d_msg = state.DefenseMode.value .. state[state.DefenseMode.value .. 'DefenseMode'].value
    end

    local i_msg = state.IdleMode.value

    local msg = ''
    if state.Kiting.value then
        msg = msg .. ' Kiting: On |'
    end

    add_to_chat(002, '| ' ..string.char(31,210).. 'Melee' ..cf_msg.. ': ' ..string.char(31,001)..m_msg.. string.char(31,002)..  ' |'
        ..string.char(31,207).. ' WS' ..am_msg.. ': ' ..string.char(31,001)..ws_msg.. string.char(31,002)..  ' |'
        ..string.char(31,004).. ' Defense: ' ..string.char(31,001)..d_msg.. string.char(31,002)..  ' |'
        ..string.char(31,008).. ' Idle: ' ..string.char(31,001)..i_msg.. string.char(31,002)..  ' |'
        ..string.char(31,002)..msg)

    eventArgs.handled = true
end


-------------------------------------------------------------------------------------------------------------------
-- User code that supplements self-commands.
-------------------------------------------------------------------------------------------------------------------

function get_custom_wsmode(spell, action, spellMap)
    if spell.type == 'WeaponSkill' and state.AttackMode.value == 'Uncapped' then
        return "Uncapped"
    end
end

-------------------------------------------------------------------------------------------------------------------
-- Utility functions specific to this job.
-------------------------------------------------------------------------------------------------------------------

-- Select default macro book on initial load or subjob change.
function select_default_macro_book()
	set_macro_page(4, 1)
end

function set_lockstyle()
    send_command('wait 2; input /lockstyleset 3')
end
