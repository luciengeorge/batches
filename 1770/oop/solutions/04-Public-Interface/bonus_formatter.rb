RSpec::Support.require_rspec_core 'formatters/base_text_formatter'

class BonusFormatter < RSpec::Core::Formatters::DocumentationFormatter
  RSpec::Core::Formatters.register self, :dump_summary

  def dump_summary(notification)
    output.puts BONUS if notification.failure_count.zero?
    super
  end
end

BONUS = "

___________________________________
|#######====================#######|
|#(1)*UNITED STATES OF AMERICA*(1)#|
|#**          /===\\   ********  **#|
|*# {G}      | (\") |             #*|
|#*  ******  | /v\\ |    O N E    *#|
|#(1)         \\===/            (1)#|
|##=========ONE DOLLAR===========##|
------------------------------------

"
