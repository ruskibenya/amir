module ActivitiesHelper
  def symbol(category)
    symbols = {
      "Business" => "<i class='fas fa-briefcase'></i>".html_safe,
      "Travel & Outdoor" => "<i class='far fa-map'></i>".html_safe,
      "Food & Drink" => "<i class='fas fa-utensils'></i>".html_safe,
      "Lecture" => "<i class='far fa-comments'></i>".html_safe,
      "Cultural" => "<i class='fas fa-book-reader'></i>".html_safe,
      "Religious" => "<i class='fas fa-church'></i>".html_safe,
      "Other" => "<i class='far fa-grin-tongue-wink'></i>".html_safe
    }

    symbols[category]
  end
end
