class TitleValidator < ActiveModel::Validator
    def validate(record)
        if record.title != nil

            unless record.title.match?(/(Won't Believe|Secret|Top \d|Guess)/)
                record.errors[:title] << "Clickbait!"
            end

        end
    end
end