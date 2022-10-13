
syn keyword dndSBLabel HP AC Speed Initiative Senses Languages Skills Saves Resistances Immunities

syn keyword dndSBCondition blinded charmed deafened fatigued frightened grappled incapacitated invisible paralyzed petrified poisoned prone restrained stunned unconscious
syn keyword dndSBDmgType slashing piercing bludgeoning poison acid fire cold radiant necrotic lightning thunder force psychic
syn keyword dndSBActionType melee ranged special spell

syn match dndSBNumber "+*\(\d\+\|?\)\(ft\)*"
syn match dndSBDice "{\d*d\d*+*\d*}"
syn match dndSBDC "DC \d\+"

syn match dndSBBlank "n\/a"

syn keyword dndSBActionDTime action bonus move reaction free contained
syn keyword dndSBActionETime action bonus move reaction free contained
syn keyword dndSBActionRTime action bonus move reaction free contained
syn keyword dndSBActionWTime action bonus move reaction free contained
syn match dndSBActionDaily ".* (.\+, \d\+/day).*$" contains=dndSBActionDTime
syn match dndSBActionEncounter ".* (.\+, \d\+/encounter).*$" contains=dndSBActionETime
syn match dndSBActionRecharge ".* (.\+, recharge\[\d+\]).*$" contains=dndSBActionType,dndSBActionRTime
syn match dndSBActionWill ".* (.\+, at-will).*$" contains=dndSBActionType,dndSBActionWTime

syn match dndSBStatName "\(STR\|DEX\|CON\|INT\|WIS\|CHA\) "
syn match dndSBStatValue "\d\+" contained
syn match dndSBStatMod "[-+]\d" contained
syn match dndSBStat "\(STR\|DEX\|CON\|INT\|WIS\|CHA\) \d\+[-+]\d" contains=dndSBStatName,dndSBStatValue,dndSBStatMod

syn match dndSBExtraSkillName "^\*.\+\*" contained
syn region dndSBExtraSkill start="^\*.\+\*" end="\.\ze\n$" contains=dndSBExtraSkillName

syn region dndSBAspectBlock start="^Aspects\n" end="\n\zeSTR" contains=dndSBAspects
syn match dndSBAspects "- \zs.\+\." contained

syn region dndSBTitle start="^.*\n.*\nChallenge \d*" end="\[.*xp\]$"

hi dndSBTitle ctermbg=18 cterm=bold gui=bold guifg=DeepSkyBlue2
hi dndSBLabel cterm=bold ctermfg=228
hi dndSBBlank ctermfg=239 cterm=bold
hi dndSBNumber ctermfg=208
hi dndSBDice cterm=bold ctermfg=215
hi dndSBStat ctermfg=229
hi dndSBStatMod cterm=bold ctermfg=208
hi dndSBStatValue ctermfg=247
hi dndSBStatName cterm=bold
hi dndSBCondition cterm=bold ctermfg=80
hi dndSBDmgType cterm=bold ctermfg=218
hi dndSBDC cterm=underline

hi dndSBAspectBlock ctermfg=38 cterm=bold
hi dndSBAspects ctermbg=38 ctermfg=black cterm=bold

hi dndSBExtraSkill ctermfg=131
hi dndSBExtraSkillName ctermfg=137 cterm=bold

hi dndSBActionDaily ctermbg=white ctermfg=black
hi dndSBActionDTime ctermbg=white ctermfg=black cterm=underline
hi dndSBActionEncounter ctermbg=88
hi dndSBActionETime ctermbg=88 cterm=underline
hi dndSBActionRecharge ctermbg=55
hi dndSBActionRTime ctermbg=55 cterm=underline
hi dndSBActionWill ctermbg=22 ctermfg=white
hi dndSBActionWTime ctermbg=22 ctermfg=white cterm=underline

