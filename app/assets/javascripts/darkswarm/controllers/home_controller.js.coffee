Darkswarm.controller "HomeCtrl", ($scope) ->

  $scope.scrollToSection = (element) ->
  	let el = document.getElementById(element)
    el.scrollIntoView({behavior:"smooth"});
    
