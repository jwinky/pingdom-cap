require 'erb'

When /\A\(erb\) (.*)\z/ do |*matches|
  erbs = matches.map { |match| ERB.new(match).result(binding) }
  step *erbs
end
