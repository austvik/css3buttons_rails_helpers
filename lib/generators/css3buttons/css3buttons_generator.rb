class Css3buttonsGenerator < Rails::Generators::Base
  desc "Copies css3buttons stylesheets and images"
  source_root File.expand_path('../templates', __FILE__)

  def copy_stylesheets_and_images
    copy_file "public/images/css3-github-buttons-icons.png", "public/images/css3buttons/css3-github-buttons-icons.png"
    copy_file "public/stylesheets/css3-github-buttons.css", "public/stylesheets/css3buttons/css3-github-buttons.css"
    copy_file "public/stylesheets/reset.css", "public/stylesheets/css3buttons/reset.css"
    gsub_file "public/stylesheets/css3buttons/css3-github-buttons.css", /\.\.\/images/, "/images/css3buttons"
  end
end
