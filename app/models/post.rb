class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
    validates :clickbait_validation

    @@clickbait = ["Won't Believe", "Secret", "Top
    [number]", "Guess"]

    def clickbait_validation

    if @@clickbait.present! 

    
    end
    end

end
