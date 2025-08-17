;------------------------------------------------------------------------------
; Giggles
;------------------------------------------------------------------------------
; Replaces common laugh sounds (haha, lol, etc...) with *giggles*

loadGiggles(state) {
	if (state == true) {
		Hotstring("B Z0")
<<<<<<< HEAD
		Hotstring("::hehe", "*yiiii-yip! Yup! Yup!*")
		Hotstring("::haha", "*yiiii-yip! Yup! Yup!*")
		Hotstring("::*laughs*", "*yiiii-yip! Yup! Yup!*")
		Hotstring("::lol", "*yiiii-yip! Yup! Yup!*")
		Hotstring("::lel", "*yiiii-yip! Yup! Yup!*")
		Hotstring("::kek", "*yiiii-yip! Yup! Yup!*")
		Hotstring("::^^", "*yiiii-yip! Yup! Yup!*")
		Hotstring("::hihi", "*yips softly*")
		Hotstring("::lmao", "omd{!} *yiiii-yip! Yup! Yup!*")
=======
		Hotstring("::hehe", "*giggles*")
		Hotstring("::haha", "*giggles*")
		Hotstring("::*laughs*", "*giggles*")
		Hotstring("::lol", "*giggles*")
		Hotstring("::lel", "*giggles*")
		Hotstring("::kek", "*giggles*")
		Hotstring("::^^", "*giggles*")
		Hotstring("::hihi", "*giggles softly*")
		Hotstring("::lmao", "omg{!} *giggles*")
>>>>>>> parent of 12f433b (bambi -> puppy)
		Hotstring("reset")
	}
}