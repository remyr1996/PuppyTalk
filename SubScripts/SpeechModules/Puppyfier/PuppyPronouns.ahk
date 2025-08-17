;------------------------------------------------------------------------------
; Bambi Pronouns
;------------------------------------------------------------------------------
; Forces you to refer to yourself as Bambi (ie. "I" => "Bambi", "My" => "Bambi's"...)

loadPuppyPronouns(state) {
	if (state == true) {
		Hotstring("B Z0")
		Hotstring("::do i", "does puppy")
		Hotstring("::am i", "is puppy")
		Hotstring("::have i", "has puppy")
		Hotstring("::i", "puppy")
		Hotstring("::me", "puppy")
		Hotstring("::my", "puppy's")
		Hotstring("::mine", "puppy's")
		Hotstring("::myself", "pupself")
		Hotstring("::do i", "does bambi")
		Hotstring("::am i", "is bambi")
		Hotstring("::have i", "has bambi")
		Hotstring("::i", "bambi")
		Hotstring("::me", "bambi")
		Hotstring("::my", "bambi's")
		Hotstring("::mine", "bambi's")
		Hotstring("::myself", "herself")
		Hotstring("reset")
	}
}

