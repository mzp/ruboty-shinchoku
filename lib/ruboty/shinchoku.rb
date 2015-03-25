require "ruboty/shinchoku/version"
require "open-uri"

module Ruboty
  module Handlers
    class Shinchoku < Base
      DATA_URL = 'http://shinchokudodesuka.tumblr.com/random'
      on(/shinchoku/,
         name: 'shinchoku',
         description: 'shinchoku do desuka')

      def shinchoku(message)
        open(DATA_URL) do |io|
          if io.read =~ %r{<img src="(http://.*\.media\.tumblr\.com/.*)" alt=""/>}
            message.reply $1
          end
        end
      end
    end
  end
end
