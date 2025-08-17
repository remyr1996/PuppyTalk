;------------------------------------------------------------------------------
; Initializer
;------------------------------------------------------------------------------
; Initialize some parts of the scripts based on the settings

Hotstring("EndChars", "-()[]{}:;""/\,.?!`n `t")

loadContractionsFormal(formalContractions)
loadContractionsInformal(informalContractions)
loadPuppyPronouns(puppyMode)
loadGiggles(giggles)
loadWordReplacer(wordReplacer)
load3rdPersonVerbs(bambiMode)
loadWordsRandomizer(wordsRandomizer)
loadPhonetic(phonetic)
loadVerbsSynonyms(verbsSynonyms)
loadPunctuation(punctuation)
if (hesitationMarks or puppyThoughts) {
	loadHesitationsAndPuppyThoughts(true)
}
; thoughtsBetweenWords(true) ; Doesn't work