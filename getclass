class_found=false
pat="^[[:space:]]+"


while IFS= read -r line; do
    if [[ $line == *"class $1"* ]]; then
        class_found=true
    elif ! [[ $line =~ $pat ]] && ! [[ $line =~ ^$ ]]; then
        class_found=false
    fi
    if [ "$class_found" = true ]; then
    	echo "$line"
    fi

done

