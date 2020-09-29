Darkswarm.controller "HomeCtrl", ($scope) ->

  $scope.scrollToSectionById = (element) ->
    console.log(element)
    el = document.getElementById(element);
    elPosition = el.getBoundingClientRect().top;
    headerOffset = 120;
    console.log(elPosition, headerOffset, offsetPosition)
    offsetPosition = elPosition - headerOffset;
    window.scrollTo({
    	top: offsetPosition,
    	behavior:"smooth"
    });
    
