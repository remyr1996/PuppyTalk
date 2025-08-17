;------------------------------------------------------------------------------
; Verbs synonyms
;------------------------------------------------------------------------------
; Replaces some specifics verbs with more fitting synonyms. ("Bambi laughs" => "Bambi giggles")

loadVerbsSynonyms(state) {
	if (state == true) {
		Hotstring("B Z")
		Hotstring(":puppy: laugh", " giggles")
		Hotstring(":puppy: laughs", " giggles")
		Hotstring(":puppy: think", " believes") ; puppy doesnt think
		Hotstring(":puppy: thinks", " believes")
		Hotstring(":puppy: talks", "barks")
		Hotstring("reset")
	}
}