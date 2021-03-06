module ApplicationHelper
def site_name
    "Flight Finder"
  end

  def site_url
    if Rails.env.production?
      "http://flightfinderapp.herokuapp.com/"
    else
      "http://localhost:3000"
    end
  end

  def meta_author
    "Amber Houle"
  end

  def meta_description
    "Add your website description here"
  end

  def meta_keywords
    # Change the value below between the quotes.
    "Add your keywords here"
  end

  # Returns the full title on a per-page basis.
  # No need to change any of this we set page_title and site_name elsewhere.
  def full_title(page_title)
    if page_title.empty?
      site_name
    else
      "#{page_title} | #{site_name}"
    end
  end

end
