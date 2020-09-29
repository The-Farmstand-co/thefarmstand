Darkswarm.controller "HomeCtrl", ($scope) ->

  $scope.scrollToSectionById = (element) ->
    console.log(element)
    el = document.getElementById(element);
    elPosition = el.getBoundingClientRect().top;
    bodyPosition = document.documentElement.scrollTop
    headerOffset = 120;
    offsetPosition = elPosition + bodyPosition - headerOffset;
    console.log(elPosition, bodyPosition, headerOffset, offsetPosition)
    window.scrollTo({
    	top: offsetPosition,
    	behavior:"smooth"
    });
    
