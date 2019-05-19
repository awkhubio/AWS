BEGIN{
FS=":"
}

{

gsub(" ","", $1)
gsub("\"","", $1)

gsub(" ","", $2)
gsub("\"","", $2)
gsub(",","", $2)

#printf("NF1: \"%s\"  NF2: \"%s\"\n", $1, $2)

   if ($1 ~ /ip_prefix/) { 
    #printf("FOUND: NR: %s NF: %s %s\n", NR, NF, $2)

   ip_subnet = $2
   arraycount=split($2,ip_subnet_array,"/")
#   printf("arraycount: %s\n", arraycount)

   for ( i in ip_subnet_array ) {
        #printf("i:%s value:%s\n", i, ip_subnet_array[i])
        #count += 2^(32-ip_subnet_array[2])
   }

count += 2^(32-ip_subnet_array[2])


   }

}

END {
printf("%d\n",count)
}
