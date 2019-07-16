# frozen_string_literal: true

class UserSeeds
  class << self
    def run
      # For example:
      User.create(email: "foo@bar.com", password: "password1!")
    end
  end
end
