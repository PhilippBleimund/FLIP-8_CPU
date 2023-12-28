# reg4 = radius
# reg5 = cache
# load 2xpi in cache
6
COP|lreg0|rreg5

# decrease radius by one and save
1
COP|lreg0|rreg2
COP|in|rreg1
calc_sub
COP|lreg3|rreg4

# == start iterate ==
# ~~ IF statement ~~
# check if radius <=0 and jump to 14
22
COP|lreg4|rreg3
cond_smeq_0

# ~~ code block ~~
	# add cache + 2xpi
	6
	COP|lreg0|rreg1
	COP|lreg5|rreg2
	calc_add
	# load result to cache
	COP|lreg3|rreg5
	# decrease radius by one and save
	1
	COP|lreg0|rreg2
	COP|lreg4|rreg1
	calc_sub
	COP|lreg3|rreg4
# ~~ end code ~~
# start fron top
7
jmp
# == end iterate ==

COP|lreg5|out