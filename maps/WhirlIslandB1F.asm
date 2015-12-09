const_value set 2
	const WHIRLISLANDB1F_POKE_BALL1
	const WHIRLISLANDB1F_POKE_BALL2
	const WHIRLISLANDB1F_POKE_BALL3
	const WHIRLISLANDB1F_POKE_BALL4
	const WHIRLISLANDB1F_POKE_BALL5
	const WHIRLISLANDB1F_BOULDER

WhirlIslandB1F_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

ItemFragment_0x18c410:
	itemfragment FULL_RESTORE

ItemFragment_0x18c412:
	itemfragment CARBOS

ItemFragment_0x18c414:
	itemfragment CALCIUM

ItemFragment_0x18c416:
	itemfragment NUGGET

ItemFragment_0x18c418:
	itemfragment ESCAPE_ROPE

WhirlIslandB1FBoulder:
	jumpstd strengthboulder

MapWhirlIslandB1FSignpostItem0:
	dwb EVENT_WHIRL_ISLAND_B1F_HIDDEN_RARE_CANDY, RARE_CANDY
	

MapWhirlIslandB1FSignpostItem1:
	dwb EVENT_WHIRL_ISLAND_B1F_HIDDEN_ULTRA_BALL, ULTRA_BALL
	

MapWhirlIslandB1FSignpostItem2:
	dwb EVENT_WHIRL_ISLAND_B1F_HIDDEN_FULL_RESTORE, FULL_RESTORE
	

WhirlIslandB1F_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 9
	warp_def $5, $5, 2, WHIRL_ISLAND_NW
	warp_def $3, $23, 2, WHIRL_ISLAND_NE
	warp_def $9, $1d, 3, WHIRL_ISLAND_NE
	warp_def $1f, $9, 3, WHIRL_ISLAND_SW
	warp_def $1f, $17, 2, WHIRL_ISLAND_SW
	warp_def $1d, $1f, 2, WHIRL_ISLAND_SE
	warp_def $15, $19, 1, WHIRL_ISLAND_B2F
	warp_def $1b, $d, 2, WHIRL_ISLAND_B2F
	warp_def $15, $11, 1, WHIRL_ISLAND_CAVE

.XYTriggers:
	db 0

.Signposts:
	db 3
	signpost 4, 30, SIGNPOST_ITEM, MapWhirlIslandB1FSignpostItem0
	signpost 18, 36, SIGNPOST_ITEM, MapWhirlIslandB1FSignpostItem1
	signpost 23, 2, SIGNPOST_ITEM, MapWhirlIslandB1FSignpostItem2

.PersonEvents:
	db 6
	person_event SPRITE_POKE_BALL, 13, 7, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMFRAGMENT, 0, ItemFragment_0x18c410, EVENT_WHIRL_ISLAND_B1F_FULL_RESTORE
	person_event SPRITE_POKE_BALL, 18, 2, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMFRAGMENT, 0, ItemFragment_0x18c412, EVENT_WHIRL_ISLAND_B1F_CARBOS
	person_event SPRITE_POKE_BALL, 23, 33, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMFRAGMENT, 0, ItemFragment_0x18c414, EVENT_WHIRL_ISLAND_B1F_CALCIUM
	person_event SPRITE_POKE_BALL, 8, 17, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMFRAGMENT, 0, ItemFragment_0x18c416, EVENT_WHIRL_ISLAND_B1F_NUGGET
	person_event SPRITE_POKE_BALL, 26, 19, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMFRAGMENT, 0, ItemFragment_0x18c418, EVENT_WHIRL_ISLAND_B1F_ESCAPE_ROPE
	person_event SPRITE_BOULDER, 26, 23, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, WhirlIslandB1FBoulder, -1
