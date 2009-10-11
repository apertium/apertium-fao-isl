TMPDIR=/tmp
lt-expand ../apertium-fo-is.is.dix | grep -v '<prn><enc>' | grep -e ':<:' -e '\w:\w' | sed 's/:<:/%/g' | sed 's/:/%/g' | cut -f2 -d'%' |  sed 's/^/^/g' | sed 's/$/$ ^.<sent>$/g' | tee $TMPDIR/tmp_testvoc1.txt |
        apertium-pretransfer|
        apertium-transfer ../apertium-fo-is.is-fo.t1x  ../is-fo.t1x.bin  ../is-fo.autobil.bin | tee $TMPDIR/tmp_testvoc2.txt |
        lt-proc -d ../is-fo.autogen.bin  | sed 's/ \.//g' > $TMPDIR/tmp_testvoc3.txt
	lt-proc -d ../fo-is.autogen.bin $TMPDIR/tmp_testvoc1.txt | sed 's/ \.//g'  > $TMPDIR/tmp_testvoc0.txt
paste -d _ $TMPDIR/tmp_testvoc0.txt $TMPDIR/tmp_testvoc1.txt $TMPDIR/tmp_testvoc2.txt $TMPDIR/tmp_testvoc3.txt | sed 's/\^.<sent>\$//g' | sed 's/_/ ------>  /g'

