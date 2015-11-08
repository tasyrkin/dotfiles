
REPO_BASE=$(pwd)
LINK_CONFIGS=("$REPO_BASE/link_config")

for config_file in ${LINK_CONFIGS[@]}; do
  echo "reading $config_file"
  while read -r line || [[ -n "$line" ]]; do
    split_line=(${line//:/ })
    split_line_size="${#split_line[@]}"
    if [ $split_line_size -eq 2 ]; then

      file="${split_line[0]}"
      source="$REPO_BASE/$file"
      target="${split_line[1]}/$(basename $file)"
      target=$(eval echo $target)

      if [ -e "$target" ] || [ -h "$target" ]; then
        echo "Deleting $target"
        rm $target
      fi
      echo "Linking $source to $target"
      ln -s "$source" "$target"
    fi
  done < "$config_file"
done
