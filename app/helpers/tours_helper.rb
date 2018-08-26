module ToursHelper
  def icon(category)
    icons = {
      "School" => '<i class="fas fa-user-graduate"></i>',
      "Family Reunion" => '<i class="fas fa-users"></i>',
      "Religious" => '<i class="fas fa-church"></i>',
      "Business" => '<i class="fas fa-user-tie"></i>',
      "Pub Crawl" => '<i class="fas fa-beer"></i>',
      "Nature" => '<i class="fas fa-binoculars"></i>',
      "Government" => '<i class="fas fa-university"></i>',
      "Other" => '<i class="fas fa-map-marked-alt"></i>'
    }

    icons[category]
  end
end
