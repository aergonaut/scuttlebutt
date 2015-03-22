module Scuttlebutt
  class Article < ActiveRecord::Base
    validates :title, presence: true
    validates :body, presence: true

    scope :published, -> { where('published_at IS NOT NULL AND published_at <= ?', 1.day.from_now.at_midnight) }

    def publish!
      self.published_at = Time.now.utc
      save!
    end

    def published?
      self.published_at && self.published_at <= 1.day.from_now.at_midnight
    end
  end
end
