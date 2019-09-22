class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category, inclusion: { in: ["Fiction", "Non-Fiction"]}
  validate :is_clickbait?

  def is_clickbait?
    phrases = [/Won't Believe/, /Secret/, /Top \d/, /Guess/]
    if phrases.none? { |phrase| phrase.match?(title) }
      errors.add(:title, "must be clickbait")
    end
  end

end
