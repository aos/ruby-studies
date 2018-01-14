# Rubyyyyyy you so fine
# Launches a given file into an associated application

class Launcher
  def initialize(app_map)
    @app_map = app_map
  end

  # Execute given file using associated app
  def run(file_name)
    application = select_app file_name
    system "#{application} #{file_name}"
  end

  # Given a file nime, look up matching app
  def select_app(file_name)
    ftype = file_type file_name
    @app_map[ftype]
  end

  # Return the part of the tile name string after the last '.'
  def file_type(file_name)
    File.extname(file_name).gsub(/^\./, '').downcase
  end
end
