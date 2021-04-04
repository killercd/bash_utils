method_found=false


while IFS= read -r line; do
    if [[ $line == *"def $1("* ]]; then
        method_found=true
	
    elif [[ "$method_found" = true ]]; then
        if [[ $line == *"def "* || $line == "class "* || $line =~ "^[a-b]+" ]]; then
			method_found=false
		fi
		
    fi
    if [ "$method_found" = true ]; then
    	echo "$line"
    fi

done

