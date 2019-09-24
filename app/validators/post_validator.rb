class PostValidator < ActiveModel::Validator 
def validate(record)
    validates :title, inclusion: {in: %w("Won't Believe" "Secret" "Top [number]" "Guess")}
end



end
