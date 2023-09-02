.text
# a = (b + 10) + (c - 5) - (d - e)
addi $t1, $s1, 10
addi $t1, $s2,-5
sub $t3, $s3, $s4
add $t4, $t1, $t2
sub $s0, $t4, $t3