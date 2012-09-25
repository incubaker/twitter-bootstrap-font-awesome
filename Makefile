#! /bin/bash

echo "Compiling Twitter Bootstrap and Font-Awesome"
CURDIR="$( pwd )"
GODIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $GODIR
mkdir ./compiled
mkdir ./compiled/js
cat submodules/bootstrap/js/bootstrap-transition.js submodules/bootstrap/js/bootstrap-alert.js submodules/bootstrap/js/bootstrap-button.js submodules/bootstrap/js/bootstrap-carousel.js submodules/bootstrap/js/bootstrap-collapse.js submodules/bootstrap/js/bootstrap-dropdown.js submodules/bootstrap/js/bootstrap-modal.js submodules/bootstrap/js/bootstrap-tooltip.js submodules/bootstrap/js/bootstrap-popover.js submodules/bootstrap/js/bootstrap-scrollspy.js submodules/bootstrap/js/bootstrap-tab.js submodules/bootstrap/js/bootstrap-typeahead.js submodules/bootstrap/js/bootstrap-affix.js | uglifyjs -o ./compiled/js/bootstrap.min.js
mkdir ./compiled/css
recess --compress ./merger.less > ./compiled/css/bootstrap.min.css
mkdir ./compiled/font
cp submodules/Font-Awesome/font/* ./compiled/font/
cd $CURDIR
echo "Finished"