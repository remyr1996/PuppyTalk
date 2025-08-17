;------------------------------------------------------------------------------
; Random sentences insertion (Hesitation Marks & Horny Thoughts)
;------------------------------------------------------------------------------
; Hesitation Marks: Inserts some hesitation marks (ie. "ummm..." or "like...") from time to time
; Horny Thoughts: Inserts some horny thoughts (ie. "... *god bambi is horny*...") from time to time (less common than hesitation marks)

; Script had some issues and weirdness with random insertion, so it had to only be allowed after some specific words
loadHesitationsAndPuppyThoughts(state) {
	Hotstring("B0 Z")
	Hotstring(":*:and ", Func("insertHesitationsAndPuppyThoughts"))
	Hotstring(":*:to ", Func("insertHesitationsAndPuppyThoughts"))
	Hotstring(":?*:, ", Func("insertHesitationsAndPuppyThoughts"))
	Hotstring(":?*: ", Func("insertHesitationsAndPuppyThoughts"))
	if (formalContractions = false) { ; Breaks formal contraction, only activate these hotstrings if it's off
		Hotstring(":*:could ", Func("insertHesitationsAndPuppyThoughts"))
		Hotstring(":*:should ", Func("insertHesitationsAndPuppyThoughts"))
		Hotstring(":*:would ", Func("insertHesitationsAndPuppyThoughts"))
	}
	Hotstring("reset")
}

insertHesitationsAndPuppyThoughts() {
	;TODO Rework the way probabilities are handled (Maybe add configuration from the .ini)
	Random, Var, 1, 6 ; will trigger one of the next two outcomes
	if (var <= 3) {
		if (hesitationMarks) {
			Random, Var, 1, 8 ; 1 chance out of 5 to trigger this if we enter this block
			if (var = 1) {
				sStrings := "like... |like, |like, |hmm... |like... |uhhh... |ummm... |um |er |uh |"
				randomString(sStrings, 10)
			}
		}
	} else {
		if (puppyThoughts = true) {
			Random, Var, 1, 3 ; 1 chance out of 5 to trigger this if we enter this block
			if (var = 1) {
				SendInput {BS 1}
				sStrings := "... *awufff*... |... *arrrrufffff*... |... *awoof*... |... *awooooo*... |... *rrrrrruuuffff*... |... *grrrrr-rrruffff*... |... *whiiiiiiiiiines*... |... *yipyipyipyipyip*... |"
				randomString(sStrings, 6)
			}
		}
	}
}


;---------------------------------------------------------
; Randomly add Bambi's thoughts between words ==> DOESN'T WORK
;---------------------------------------------------------
thoughtsBetweenWords(state) {
	Hotstring("B0 Z")
	Hotstring(":?*: ", Func("insertsThoughtsBetweenWords"))
	Hotstring("reset")
}

insertsThoughtsBetweenWords() {
	Random, Var, 1, 10
	if (var = 1) {
		SendInput {BS 1}
		; SendInput {left 2}
		sStrings := ", awufff, | rrrruffff... | *awoooof*... | ummm... | awoooooo | *rrrrrrufffff* | grrrrrr-rrrruufffff |"
		randomString(sStrings, 7)
		; SendInput {right 2}
	}
}

; randomly add stuff at end of 10% of messages (only when pressing Enter)
; /!\ When enabled, the Enter key doesn't triggers other hotkeys anymore
/* #InputLevel 10
 * Enter::
 *   send, %A_Space%
 *   Random, Var, 1, 1
 *     AutoTrim, off
 *     if (var = 1) {
 *     RandomStuff =
 *     ( LTrim
 *     ` *yip*| arufff| ~| wuf|
 *     )
 *     randomString(RandomStuff, 4)
 *     sendPlay, {enter}
 *     } else {
 *     sendPlay, {enter}
 *     }
 * return
 */

