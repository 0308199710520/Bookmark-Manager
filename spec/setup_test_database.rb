require 'pg'

def setup_test_database
  @con = PG.connect(:dbname => 'bookmarks_manager_test', :user => "mikey")
  @con.exec("TRUNCATE TABLE bookmarks;")
end

