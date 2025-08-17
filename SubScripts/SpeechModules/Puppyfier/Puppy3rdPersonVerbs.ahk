;------------------------------------------------------------------------------
; Bambi 3rd Person Verbs
;------------------------------------------------------------------------------
; Changes verbs to the 3rd person when refering to yourself as Bambi (Non exhaustive list)

#Hotstring B Z ; Conjugates verbs to third person
; Common puppy related verbs
:puppy: bend:: bends
:puppy: bounce:: bounces
:puppy: feel:: feels
:puppy: fuck:: fucks
:puppy: kneel:: kneels
:puppy: like:: likes
:puppy: love:: loves
:puppy: obey:: obeys
:puppy: please:: pleases
:puppy: suck:: sucks
:puppy: want:: wants ; should be replaced insted
:puppy: wish:: wishes
:puppy: melt:: melts
:puppy: drop:: drops
:puppy: sink:: sinks
:puppy: masturbate:: masturbates
:puppy: jerk:: jerks

; Common action verbs
:puppy: act:: acts
:puppy: agree:: agrees
:puppy: arrive:: arrives
:puppy: ask:: asks
:puppy: brings:: brings
:puppy: build:: builds
:puppy: buy:: buys
:puppy: call:: calls
:puppy: climb:: climbs
:puppy: close:: closes
:puppy: come:: comes
:puppy: cry:: cries
:puppy: dance:: dances
:puppy: dream:: dreams
:puppy: drink:: drinks
:puppy: eat:: eats
:puppy: enter:: enters
:puppy: exit:: exits
:puppy: fall:: falls
:puppy: fix:: fixes
:puppy: guess:: guesses
:puppy: give:: gives
:puppy: go:: goes
:puppy: grab:: grabs
:puppy: help:: helps
:puppy: hit:: hits
:puppy: hop:: hops
:puppy: joke:: jokes
:puppy: jump:: jumps
:puppy: kick:: kicks
:puppy: know:: knows
:puppy: leave:: leaves
:puppy: lift:: lifts
:puppy: listen:: listens
:puppy: make:: makes
:puppy: march:: marches
:puppy: mean:: means
:puppy: move:: moves
:puppy: need:: needs
:puppy: nod:: nods
:puppy: open:: opens
:puppy: play:: plays
:puppy: push:: pushes
:puppy: read:: reads
:puppy: ride:: rides
:puppy: run:: runs
:puppy: scream:: screams
:puppy: send:: sends
:puppy: shout:: shouts
:puppy: sing:: sings
:puppy: sit:: sits
:puppy: smile:: smiles
:puppy: spend:: spends
:puppy: stand:: stands
:puppy: talk:: talks
:puppy: throw:: throws
:puppy: touch:: touches
:puppy: turn:: turns
:puppy: visit:: visits
:puppy: vote:: votes
:puppy: wait:: waits
:puppy: walk:: walks
:puppy: write:: writes
:puppy: yell:: yells

; Other verbs
:puppy: accept:: accepts
:puppy: ache:: aches
:puppy: achieve:: achieves
:puppy: acquire:: acquires
:puppy: add:: adds
:puppy: adjust:: adjusts
:puppy: admire:: admires
:puppy: advise:: advises
:puppy: allow:: allows
:puppy: announce:: announces
:puppy: answer:: answers
:puppy: apologize:: apologizes
:puppy: applaud:: applauds
:puppy: approach:: approaches
:puppy: approve:: approves
:puppy: argue:: argues
:puppy: arise:: arises
:puppy: arrange:: arranges
:puppy: attract:: attracts
:puppy: avoid:: avoids
:puppy: awake:: awakes
:puppy: banish:: banishes
:puppy: beg:: begs
:puppy: begin:: begins
:puppy: behave:: behaves
:puppy: believe:: believes
:puppy: belong:: belongs
:puppy: bet:: bets
:puppy: bite:: bites
:puppy: blow:: blows
:puppy: blushe:: blushes
:puppy: break:: breaks
:puppy: breathe:: breathes
:puppy: breed:: breeds
:puppy: caresse:: caresses
:puppy: carry:: carries
; lot more to add: https://www.worldclasslearning.com/english/five-verb-forms.html
:puppy: hope:: hopes
:puppy: see:: sees
:puppy: meet:: meets
:puppy: thank:: thanks
:puppy: type:: types
:puppy: use:: uses
return


load3rdPersonVerbs(state) {
	if (state == true) {
		Hotstring("B Z")
		; removes "'" just for this hotstring + reset automatic replacement (to avoid stuff like "puppy would likes")
		; Hotstring("EndChars", "-()[]{}:;""/\,.?!`n `t")
		Hotstring(":: am", " is")
		Hotstring("::i'm", "puppy is")
		Hotstring("::im", "puppy is")
		Hotstring(":: have", " has")
		Hotstring("::i've", "puppy has")
		Hotstring("::ive", "puppy has")
		Hotstring("::i'll", "puppy will")
		Hotstring("::i'd", "puppy would")
		Hotstring("reset")
	}
}