App.factory 'Learninglog', ['$resource', ($resource) ->
    $resource('/api/learninglogs/:id', {id: '@id'})
]

