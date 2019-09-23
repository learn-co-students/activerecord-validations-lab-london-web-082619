class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: {in: %w(Fiction Non-Fiction)}
    validate :clickbait


    private

    def clickbait
        clickbait_check = /Won't Believe|Secret|Top\d*|Guess/
      if clickbait_check.match(title) == nil
        errors.add(:title, "only clickbait")
      end
    end

end
