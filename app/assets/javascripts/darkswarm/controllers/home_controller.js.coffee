Darkswarm.controller "HomeCtrl", ($scope) ->

  $scope.scrollToSection = (element) ->
    element.scrollIntoView({behavior:"smooth"});
    
