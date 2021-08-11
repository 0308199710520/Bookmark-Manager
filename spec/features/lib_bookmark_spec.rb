require_relative "../../lib/bookmarks.rb"

describe BookmarksStorage do
  describe "#all" do
    it "should return a list of all entries in the database " do
      
      @con.exec("INSERT INTO bookmarks(id, url) VALUES (0, 'www.ebay.com')")
      bookmark = BookmarksStorage.new
      temp = bookmark.all.map{|each| each}
      expect(temp[0]["url"]).to(eq("www.ebay.com"))
    end
  end
end