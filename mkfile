
BGZIP_MK=`{./bin/targets}

bgzip_mk:VE:	$BGZIP_MK

results/bgzip_mk/%.vcf.gz:D:	data/%.vcf
	mkdir -p `dirname $target`
	bgzip \
		-i \
		-c \
		$prereq \
		> $target".build" \ 
	&& mv $target".build" $target
