RSpec::Support.require_rspec_core 'formatters/base_text_formatter'

class BonusFormatter < RSpec::Core::Formatters::DocumentationFormatter
  RSpec::Core::Formatters.register self, :dump_summary

  def dump_summary(notification)
    output.puts BONUS if notification.failure_count.zero?
    super
  end
end

BONUS = "

           _.-------._
        _-'_.------._ `-_
      _- _-          `-_/
     -  -
 ___/  /______________
/___  .______________/
 ___| |_____________
/___  .____________/
    \\  \\
     -_ -_             /|
       -_ -._        _- |
         -._ `------'_./
            `-------'

"
