require_relative './app'
require_relative './options'

def main
  app = App.new
  option = Options.new(app)
  option.options
end

main
