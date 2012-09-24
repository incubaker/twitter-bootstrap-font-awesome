mkdir ./compiled

mkdir ./compiled/js

cat bootstrap/js/bootstrap-transition.js bootstrap/js/bootstrap-alert.js bootstrap/js/bootstrap-button.js bootstrap/js/bootstrap-carousel.js bootstrap/js/bootstrap-collapse.js bootstrap/js/bootstrap-dropdown.js bootstrap/js/bootstrap-modal.js bootstrap/js/bootstrap-tooltip.js bootstrap/js/bootstrap-popover.js bootstrap/js/bootstrap-scrollspy.js bootstrap/js/bootstrap-tab.js bootstrap/js/bootstrap-typeahead.js bootstrap/js/bootstrap-affix.js | uglifyjs -o ./compiled/js/bootstrap.min.js

mkdir ./compiled/css

recess --compress ./merger.less > ./compiled/css/bootstrap.min.css

mkdir ./compiled/font

cp Font-Awesome/font/* ./compiled/font/