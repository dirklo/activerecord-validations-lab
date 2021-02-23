class PostValidator < ActiveModel::Validator
    def validate(record)
        if record.title 
            unless record.title.include?("Won't Believe") ||
            record.title.include?("Secret") ||
            !!record.title =~ /Top \d/ ||
            record.title.include?("Guess")
                record.errors.add :title, "Title must be click-baity!"
            end
        end
    end
end