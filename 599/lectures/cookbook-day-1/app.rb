require_relative 'task'
require_relative 'repository'
require_relative 'view'
require_relative 'controller'
require_relative 'router'

# create new instance of repository
repository = Repository.new

# create new instance of view
view = View.new

# create new instance of controller with the repository and view instances
controller = Controller.new(repository, view)

# create a new instance of router passing the controller as an argument
router = Router.new(controller)

# launch the app by calling the .run method in the Router
router.run
