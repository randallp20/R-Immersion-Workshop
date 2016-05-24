transcripts <- c("p2@Rab21", 
                 "p1@Rab21")
values <- strsplit(transcripts, "@")
print(values)


number ="3.74"
pattern= "([0-9]*)\\.([0-9]*)"
numbers <- c("3.14","0,234854","-0.345")
matched <- regexec(pattern,numbers)
values <- regmatches(numbers,matched)
print(values)


## Phone Number example

pattern= "(([0-9])){3}"
numbers <- c("(575)313-2541","575-313-2541","5753132541")
matched <- regexec(pattern,numbers)
values <- regmatches(numbers,matched)
print(values)

## the code above retunrs the first three of any  establish the pattenr for the whole

pattern= "\\(([0-9]{3})\\)[0-9]{3}-[0-9]{4}|([0-9]{3})-[0-9]{3}-[0-9]{4}"
numbers <- c("(575)313-2541","575-313-2541","5753132541","06051975")
matched <- regexec(pattern,numbers)
values <- regmatches(numbers,matched)
print(values)


## extract the chromosome star end and strand

transcript <- "p@chr10:101542314..101542317,+"
pattern <- "p@(chr[1-9XYM][0-9]?):([0-9]+)\\.\\.([0-9]+),([+-])"
matched <- regexec(pattern, transcript)
values <- regmatches(transcript, matched)
print(values)


