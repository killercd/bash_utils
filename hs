history | awk '{ print substr($0, index($0,$2)) }' | grep -i $1
