BEGIN{
FS="/"
DEBUG = 0
}

{
if(DEBUG==1){printf("NR%s NF%s: %s \n", NR,NF,$2)}

count += 2^(32-$2)
} 

END {
printf("%d\n",count)
}
