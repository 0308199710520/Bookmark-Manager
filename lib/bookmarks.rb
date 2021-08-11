require "pg"

class BookmarksStorage

  def initialize
    @bookmarks = nil
    @database = 'bookmark_manager'
  end

  def all
    if ENV['ENVIROMENT'] == 'test'
      con = PG.connect(:dbname => 'bookmarks_manager_test', :user => "mikey")
      return con.exec("SELECT url FROM bookmarks")
    else
      con = PG.connect(:dbname => 'bookmark_manager', :user => "mikey")
      return con.exec("SELECT url FROM bookmarks")
    end
  end
end
