# coding: utf-8
require 'mysql2'

client = Mysql2::Client.new(
    :host     => '127.0.0.1', # 主机
    :username => 'root',      # 用户名
    :password => '123',    # 密码
    :database => 'test2',      # 数据库
    :encoding => 'utf8'       # 编码
)
results = client.query("SELECT * from database_user")
results.each do |row|
  puts row["ID"]
  puts row["UserID"]
end

str_utf8 = "hi 段"
 puts str_utf8.size                                # 4
 puts str_utf8.bytesize                            # 6
 puts str_utf8 .encoding                         # UTF-8
 str_utf8.each_byte {|b| print "%02X," % [b]}      # 68,69,20,E6,AE,B5,
 puts


 puts "段".encode("utf-8")