module Spree::AuthorsHelper
  # converts line breaks in author bio into <p> tags (for html display purposes)
  def author_bio(author)
    raw(author.bio.gsub(/^(.*)$/, '<p>\1</p>'))
  end
end
