require_relative 'controller'
require_relative 'repository'
require_relative 'router'


repository = Repository.new
controller = Controller.new(repository)
router = Router.new(controller)
router.run
# controller.list
# controller.create
# controller.mark_as_done
# controller.list
# controller.remove
# controller.list
# task = Task.new("Wash the car")
# task2 = Task.new("Take out the dog")
# # p repository.all
# repository.create(task)
# repository.create(task2)
# # p repository.all
# # p repository.find(0)
# repository.remove(0)
# p repository.all
