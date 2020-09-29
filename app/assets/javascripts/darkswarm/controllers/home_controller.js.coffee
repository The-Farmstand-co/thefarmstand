Darkswarm.controller "HomeCtrl", ($scope) ->

  $scope.scrollToSectionById = (element) ->
    console.log(element)
    el = document.getElementById(element);
    el.scrollIntoView({behavior:"smooth"});
    
