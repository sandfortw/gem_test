# frozen_string_literal: true

require_relative "weston2022/version"

module Weston2022
  class Error < StandardError; end
  
  class Vote
    def for_me
      puts "Vote for me!"
    end
  end
end
