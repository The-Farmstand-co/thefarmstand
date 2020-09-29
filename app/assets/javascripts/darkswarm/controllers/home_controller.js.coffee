Darkswarm.controller "HomeCtrl", ($scope) ->

  $scope.scrollToSection = (element) ->
    el = document.getElementById(element)
    el.scrollIntoView({behavior:"smooth"});
    
