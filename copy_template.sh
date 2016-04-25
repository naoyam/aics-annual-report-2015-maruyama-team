#!/usr/bin/env bash

group_dirs=$(find research operations fs2020 -depth 1 -type 'd')
bib_template=sample_division/sample_group/main.bib
main_template=sample_division/sample_group/main.tex

for gr in $group_dirs; do
  if [ "$gr" = "research/maruyama" ]; then
    continue;
  fi
  echo $gr
  cp $bib_template $gr
  team_name=$(grep $gr group-names.txt | cut -d ' ' -f 2-)
  team_main=$gr/main.tex
  echo $team_name
  sed "s/\\chapter{Sample Group}/\chapter{$team_name}/" $main_template > $team_main
  gr_esc=$(echo $gr | sed 's/[\/&]/\\&/g')
  echo $gr_esc
  sed "s/sample_division\/sample_group\/main.bib/${gr_esc}\/main.bib/" $team_main | sponge $team_main
done
