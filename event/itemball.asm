FindItemInBallScript:: ; 0x122ce
	callasm .TryReceiveItem
	iffalse .no_room
	disappear LAST_TALKED
	opentext
	writetext .text_found
	playsound SFX_ITEM
	pause 60
	itemnotify
	closetext
	end
; 0x122e3

.no_room ; 0x122e3
	opentext
	writetext .text_found
	waitbutton
	pocketisfull
	closetext
	end
; 0x122ee

.text_found ; 0x122ee
	; found @ !
	text_jump UnknownText_0x1c0a1c
	db "@"
; 0x122f3

.TryReceiveItem: ; 122f8
	xor a
	ld [ScriptVar], a
	ld a, [EngineBuffer1]
	ld [wNamedObjectIndexBuffer], a
	call GetItemName
	ld hl, StringBuffer3
	call CopyName2
	ld a, [EngineBuffer1]
	ld [CurItem], a
	ld a, [CurFruit]
	ld [wItemQuantityChangeBuffer], a
	ld hl, NumItems
	call ReceiveItem
	ret nc
	ld a, $1
	ld [ScriptVar], a
	ret
; 12324

FindTMHMInBallScript::
	callasm .ReceiveTMHM
	disappear LAST_TALKED
	opentext
	writetext .text_found
	playsound SFX_ITEM
	pause 60
	tmhmnotify
	closetext
	end

.text_found
	; found @ !
	text_jump UnknownText_0x1c0a1c
	db "@"

.ReceiveTMHM:
	xor a
	ld [ScriptVar], a
	ld a, [EngineBuffer1]
	ld [wNamedObjectIndexBuffer], a
	call GetTMHMName
	ld hl, StringBuffer3
	call CopyName2
	ld a, [EngineBuffer1]
	ld [CurTMHM], a
	call ReceiveTMHM
	ld a, $1
	ld [ScriptVar], a
	ret
