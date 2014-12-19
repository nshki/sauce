#===============================================================================
# config.rb
#===============================================================================

# Activate extensions
#-------------------------------------------------------------------------------
activate :livereload
activate :autoprefixer

# Paths
#-------------------------------------------------------------------------------
activate :directory_indexes
activate :relative_assets
set      :relative_links, true
set      :css_dir,        "stylesheets"
set      :js_dir,         "javascripts"
set      :images_dir,     "images"

# Layouts
#-------------------------------------------------------------------------------
page "/*", layout: "application"

# Assets
#-------------------------------------------------------------------------------
set :haml, attr_wrapper: '"'
configure :build do
  activate :minify_css
  activate :minify_javascript
end

# Helpers
#-------------------------------------------------------------------------------
helpers do

  # Given a default_title string, return a string in the format
  # "title | default_title", where title is the string defined by frontmatter.
  #
  # @param  {String} - default_title
  # @return {String}
  def page_title(default_title)
    title = current_page.data.title
    if title then "#{title} | #{default_title}" else default_title end
  end

end
