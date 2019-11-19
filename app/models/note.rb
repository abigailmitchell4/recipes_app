class Note < ApplicationRecord
  before_save :check_author
  belongs_to :recipe

  def check_author
    if self.author.blank?
      self.author = 'anon'
    end
  end
end
