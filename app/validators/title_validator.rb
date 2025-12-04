class TitleValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    if value.nil? || value.length == 0
      message = options[:message] || "ne doit pas être vide"
      record.errors.add(attribute, message)
    end
  end

  # def validate(record)
  # if record.title.present? && record.title.length < 5
  # record.errors.add(:title, "le titre doit contenir au moins 5 caractères")
  # end
  # if record.title.present? && record.title.length > 100
  # record.errors.add(:title, "le titre ne doit pas dépasser 100 caractères")
  # end
  # if record.title.present? && record.title.match?(/[^a-zA-Z0-9\s]/)
  # record.errors.add(:title, "le titre ne doit pas contenir de caractères spéciaux")
  # end
  # if record.content.nil? || record.content.length == 0
  # errors.add(:content, "ne doit pas être vide")
  # end
  # end
end
