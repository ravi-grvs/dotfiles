search_dir=~/Downloads

declare -a ignore_dir=("3d_models" )

isdirectory() {
  if [ -d "$1" ]
  then
    # 0 = true
    return 0 
  else
    # 1 = false
    return 1
  fi
}

for entry in "$search_dir"/*
do
    if isdirectory $entry;
    then
        echo "dir $entry"
    fi
done
