	db 125, 100,  80,  55,  85,  75 ; 520 BST
	;   hp  atk  def  spe  sat  sdf

if DEF(FAITHFUL)
	db NORMAL, NORMAL ; type
else
	db NORMAL, DRAGON ; type
endc
	db 45 ; catch rate
	db 115 ; base exp
	db NO_ITEM, NO_ITEM ; held items
	dn GENDER_F50, HATCH_MEDIUM_FAST ; gender ratio, step cycles to hatch

	abilities_for DUDUNSPARCE, SERENE_GRACE, RUN_AWAY, RATTLED
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	ev_yield 2 HP

	; tm/hm learnset
	tmhm CURSE, CALM_MIND, TOXIC, BULK_UP, HIDDEN_POWER, SUNNY_DAY, ICE_BEAM, BLIZZARD, PROTECT, RAIN_DANCE, BULLDOZE, SOLAR_BEAM, IRON_TAIL, THUNDERBOLT, THUNDER, EARTHQUAKE, RETURN, DIG, SHADOW_BALL, ROCK_SMASH, DOUBLE_TEAM, FLAMETHROWER, FIRE_BLAST, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, ROCK_SLIDE, ROOST, WILD_CHARGE, DRAGON_PULSE, ACROBATICS, WATER_PULSE, POISON_JAB, THUNDER_WAVE, GYRO_BALL, STRENGTH, AGILITY, AQUA_TAIL, BATON_PASS, BODY_SLAM, COUNTER, DEFENSE_CURL, DOUBLE_EDGE, DREAM_EATER, ENDURE, HEADBUTT, HYPER_VOICE, ROLLOUT, SLEEP_TALK, SWAGGER, ZAP_CANNON, ZEN_HEADBUTT
	; end