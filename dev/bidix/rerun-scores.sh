#!/bin/bash
#
# Regenerate scored files, after changing calc-levenshtein.py

cat noun.list | python calc-levenshtein.py   | sort -gru > noun.scored.list
cat vblex.list | python calc-levenshtein.py | sort -gru > vblex.scored.list 
cat adv.list | python calc-levenshtein.py | sort -gru > adv.scored.list
cat prep.list | python calc-levenshtein.py | sort -gru > prep.scored.list
cat adjs.list | python calc-levenshtein.py | sort -gru > adjs.scored.list
