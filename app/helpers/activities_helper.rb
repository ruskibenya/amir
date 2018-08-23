module ActivitiesHelper
  def icon(category)
    icons = {
      "Business" => "🕴",
      "Travel & Outdoor" => "🌴",
      "Food & Drink" => "🌭 ",
      "Lecture" => "🗣",
      "Cultural" => "⛩",
      "Religious" => "🕋",
      "Other" => "🍑"
    }

    icons[category]
  end
end
