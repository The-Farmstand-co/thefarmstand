Darkswarm.controller "HomeCtrl", ($scope) ->

  $scope.scrollToSectionById = (element) ->
    console.log(element)
    el = document.getElementById(element);
    elPosition = el.getBoundingClientRect().top;
    headerOffset = 120;
    offsetPosition = elPosition - headerOffset;
    window.scrollTo({
    	top: offsetPosition,
    	behavior:"smooth"
    });
    
