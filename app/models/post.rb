class Post < ActiveRecord::Base
  
  validates :title, :content, presence: true
  validates :category, inclusion: { in: %w(Fiction Non-Fiction)}
  validates :summary, length: { maximum: 250,
    too_long: "%{count} characters is the maximum allowed" }
  validates :content, length: { minimum: 250,
    too_short: "%{count} characters is the minimum allowed" }
    validates :title, presence: true, if: -> {:title == KEYWORDS}

    
 def clickbait
   KEYWORDS= [
      "Won't Believe",
      "Secret",
      "Top #{/\d+/}",
      "Guess"
    ]
  end

end
