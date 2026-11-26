function party_m_cloud(_initialized_name) : party_m(_initialized_name) constructor {
		name = "cloud"
		action_letter = "C"
		obj = o_actor_cloud
		
		// colours (used by the menu, the battle UI and the light effects)
    color     = c_orange
    darkcolor = c_maroon
    iconcolor = #FFA040

    // stats
    max_hp  = 80
    hp      = max_hp
    attack  = 10
    defense = 2
    magic   = 1

 // every fighter needs a weapon (see the warning below)
    weapon = new item_w_wood_blade()

    // sprites: the name the engine uses to build every sprite name
    s_name = "cloud"
	
	// stats
	lv =	1
	desc =	"party_cloud_desc"
	power_stats = [
        new party_power_stat("party_noelle_stat_coldness", spr_ui_menu_icon_snow, 47),
        new party_power_stat("party_noelle_stat_boldness", spr_ui_menu_icon_exclamation, 100),
        new party_power_stat_images("party_stat_guts", spr_ui_menu_icon_fire, 0),
	] 
    
    max_hp =	90
	hp =		max_hp
	attack =	3
	defense =	1
	magic =		11
	element_resistance = {
	}
	
	// inventory
    weapon = new item_w_snowring()
    armor1 = new item_a_silver_watch()
    armor2 = new item_a_royal_pin()
	spells = [
		new item_s_healprayer(),
		new item_s_sleepmist(),
		new item_s_iceshock(),
	]
	
	// sprites
    s_name = "cloud"
	s_prefix = ""
    s_scheme = "spr_{0}_{1}_{2}"
    s_scheme_addelements = []
	s_state =		""
	s_substate =	""
	s_icon =		spr_ui_cloud_icon
	s_icon_ow =		spr_ui_cloud_head
	s_icon_weapon = spr_ui_menu_weapon_ring
	s_battle_intro =	0 // 1 for attack, 0 for full intro	
	
    
    //s_fallback = spr_default
    
	s_icon =		spr_ui_default_icon
	s_icon_ow =		spr_ui_default_head
	s_icon_weapon = spr_ui_menu_weapon_axe
	s_battle_intro =	1 // 1 for attack, 0 for full intro	
    
    // states
	s_state =		""
	s_substate =	""
	
	battle_sprites = { // [sprite, whether stop at the end (or change to what sprite), (image speed of the upcoming sprite)]
		act: [spr_bnoelle_act, true],
		actready: spr_bnoelle_actready,
		actend: [spr_bnoelle_actend, "idle", 1],
		attack: [spr_bnoelle_attack, true],
		attackready: spr_bnoelle_attackready,
		defeat: spr_bnoelle_defeat,
		defend: spr_bnoelle_defend,
		hurt: spr_bnoelle_hurt,
		idle: spr_bnoelle_idle,
		intro: [spr_bnoelle_intro, true],
		introb: spr_noelle_right,
		itemuse: [spr_bnoelle_item, "idle", 1],
		itemready: spr_bnoelle_itemready,
		spell: [spr_bnoelle_spell, "idle", 1],
		spellready: spr_bnoelle_spellready,
		victory: [spr_bnoelle_victory, true],
		spare: [spr_bnoelle_act, "idle", 1],
		attack_eff: spr_bnoelle_attackeff,
	}
}