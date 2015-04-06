# Main user class
class User < ActiveRecord::Base
  authenticates_with_sorcery!
  has_paper_trail
end

