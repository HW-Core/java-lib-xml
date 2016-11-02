#!/usr/bin/env bash

PATH_MODULES="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/../../"
[ ! -d $PATH_MODULES/drassil/joiner ] && git clone https://github.com/drassil/joiner $PATH_MODULES/drassil/joiner -b master
source "$PATH_MODULES/drassil/joiner/joiner.sh"

NAME="java-lib-common"
VENDOR="hw-core"

mod_path="hw-core/js-modules/"

#
# ADD DEPENDENCIES
#

Joiner:add_file "http://repo1.maven.org/maven2/org/jdom/jdom/1.1.3/jdom-1.1.3.jar"     "$mod_path/jdom/jdom-1.1.3.jar"

if Joiner:with_dev ; then
	Joiner:add_file "http://repo1.maven.org/maven2/org/jdom/jdom/1.1.3/jdom-1.1.3-javadoc.jar"     "$mod_path/jdom/jdom-1.1.3-javadoc.jar" 
fi



