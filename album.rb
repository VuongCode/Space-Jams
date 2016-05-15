class Album
  attr_reader :id, :title, :artists, :album_name
  attr_accessor :tracks

  def initialize(id, album_name, artists)
    @id = id
    @title = title
    @artists = artists
    @album_name = album_name
    @tracks = Array.new
  end

  def duration_min
    total = 0
    @tracks.each do |track|
      total += track.duration.to_f
    end
    # convert to minutes
    @duration_min = (total/60000).round(2)
  end

  def summary
    # string = String.new
    string = String.new
    string += "Name: #{@album_name}\n"
    string += "Artist(s): #{@artists}\n"
    string += "Duration (min.): #{@duration_min}\n"
    string += "Tracks:\n"
    @tracks.each do |track|
      string += "- #{track.title}\n"
    end
    return string
  end
end

class Track
  attr_reader :album_id, :id, :title, :track_number, :duration

  def initialize(album_id, id, title, track_number, duration)
    @album_id = album_id
    @id = id
    @title = title
    @track_number = track_number
    @duration = duration
  end
end
