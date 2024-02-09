
  class Post < ApplicationRecord
    validates :title, presence: true, uniqueness: true
    validates :published_at, presence: true
  
    #callback
    before_create :capitalize_title
  
    private
  
    def capitalize_title
      self.title = title.split.map(&:capitalize).join(' ')
    end
  end