/******/ (() => { // webpackBootstrap
/******/ 	var __webpack_modules__ = ({

/***/ "./resources/js/Javascript.js":
/*!************************************!*\
  !*** ./resources/js/Javascript.js ***!
  \************************************/
/***/ (() => {

jQuery(document).ready(function () {
  var offset = 200;
  var duration = 500;
  jQuery(window).scroll(function () {
    if (jQuery(this).scrollTop() > offset) {
      jQuery('.back-to-top').fadeIn(duration);
    } else {
      jQuery('.back-to-top').fadeOut(duration);
    }
  });
  jQuery('.back-to-top').click(function (event) {
    event.preventDefault();
    jQuery('html, body').animate({
      scrollTop: 0
    }, duration);
    return false;
  });
}); // Example starter JavaScript for disabling form submissions if there are invalid fields

(function () {
  'use strict';

  window.addEventListener('load', function () {
    // Fetch all the forms we want to apply custom Bootstrap validation styles to
    var forms = document.getElementsByClassName('needs-validation'); // Loop over them and prevent submission

    var validation = Array.prototype.filter.call(forms, function (form) {
      form.addEventListener('submit', function (event) {
        if (form.checkValidity() === false) {
          event.preventDefault();
          event.stopPropagation();
        }

        form.classList.add('was-validated');
      }, false);
    });
  }, false);
})();

/***/ }),

/***/ "./resources/scss/app.scss":
/*!*********************************!*\
  !*** ./resources/scss/app.scss ***!
  \*********************************/
/***/ (() => {

throw new Error("Module build failed (from ./node_modules/mini-css-extract-plugin/dist/loader.js):\nModuleBuildError: Module build failed (from ./node_modules/sass-loader/dist/cjs.js):\nValidationError: Invalid options object. Sass Loader has been initialized using an options object that does not match the API schema.\n - options has an unknown property '0'. These properties are valid:\n   object { implementation?, sassOptions?, additionalData?, sourceMap?, webpackImporter? }\n    at validate (C:\\Users\\Ngoma\\Desktop\\posty\\node_modules\\webpack\\node_modules\\schema-utils\\dist\\validate.js:105:11)\n    at Object.getOptions (C:\\Users\\Ngoma\\Desktop\\posty\\node_modules\\webpack\\lib\\NormalModule.js:539:19)\n    at Object.loader (C:\\Users\\Ngoma\\Desktop\\posty\\node_modules\\sass-loader\\dist\\index.js:25:24)\n    at processResult (C:\\Users\\Ngoma\\Desktop\\posty\\node_modules\\webpack\\lib\\NormalModule.js:713:19)\n    at C:\\Users\\Ngoma\\Desktop\\posty\\node_modules\\webpack\\lib\\NormalModule.js:819:5\n    at C:\\Users\\Ngoma\\Desktop\\posty\\node_modules\\loader-runner\\lib\\LoaderRunner.js:399:11\n    at C:\\Users\\Ngoma\\Desktop\\posty\\node_modules\\loader-runner\\lib\\LoaderRunner.js:251:18");

/***/ })

/******/ 	});
/************************************************************************/
/******/ 	
/******/ 	// startup
/******/ 	// Load entry module and return exports
/******/ 	__webpack_modules__["./resources/js/Javascript.js"]();
/******/ 	// This entry module doesn't tell about it's top-level declarations so it can't be inlined
/******/ 	var __webpack_exports__ = {};
/******/ 	__webpack_modules__["./resources/scss/app.scss"]();
/******/ 	
/******/ })()
;