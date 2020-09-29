Darkswarm.controller "HomeCtrl", ($scope) ->

  $scope.scrollToSectionById = (element) ->
    el = document.getElementById(element);
    elPosition = el.getBoundingClientRect().top;
    bodyPosition = document.documentElement.scrollTop || window.pageYOffset
    headerOffset = 120;
    offsetPosition = elPosition + bodyPosition - headerOffset;
    window.scrollTo({
    	top: offsetPosition,
    	behavior:"smooth"
    });
    
