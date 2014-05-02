#------------------------------------------------------------------------
# Configuration
#------------------------------------------------------------------------

# LiveReload and pretty URLs
activate :livereload
activate :directory_indexes

# Use relative paths
activate :relative_assets
set :relative_links, true

# Default layout
page "/*", layout: "application"

# Asset paths
set :css_dir,    "stylesheets"
set :js_dir,     "javascripts"
set :images_dir, "images"

# Build config
configure :build do
  activate :minify_css
  activate :minify_javascript
end

# Custom helpers
helpers do

  # Given a default_title string, return a string in the format
  # "title | default_title", where title is the string defined by frontmatter.
  #
  # @param  {default_title} - String
  # @return {string}        - Formatted title
  def page_title(default_title)
    title = current_page.data.title
    if title
      "#{title} | #{default_title}"
    else
      default_title
    end
  end
  
end
