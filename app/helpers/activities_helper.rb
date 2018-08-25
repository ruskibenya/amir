module ActivitiesHelper
  def symbol(category)
    symbols = {
      "Business" => "🕴",
      "Travel & Outdoor" => "🌴",
      "Food & Drink" => "🌭 ",
      "Lecture" => "🗣",
      "Cultural" => "⛩",
      "Religious" => "🕋",
      "Other" => "🍑"
    }

    symbols[category]
  end
end
