App.controller 'LearninglogsController', ['$scope', 'Learninglog', ($scope, Learninglog) ->
    $scope.learninglogs = Learninglog.query()
]
