#!/bin/bash
# From http://www.hilverd.com/notes/topological-sort-in-graphviz
# This topological sort should really happen in Ruby...

(( $# < 1 )) && { echo "Please specify dot file as argument"; exit 1; }

gvpr 'N {printf("%s %s\n", $.name, $.name)}
      E {printf("%s %s\n", $.tail.name, $.head.name)}' $1 | tsort
