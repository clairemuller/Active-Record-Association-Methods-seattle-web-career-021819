class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    # when this method is called it should assign the song's artist to Drake
    Artist.find_or_create_by(name: "Drake")

    # long, compliated way
    # if Artist.all == []
    #   drake = Artist.create(name: "Drake")
    #   self.artist = drake
    # elsif !Artist.all.include?(drake)
    #   drake = Artist.create(name: "Drake")
    #   self.artist = drake
    # else
    #   self.artist = drake
    # end
  end

end
