# Arproxy 設定
# read, writing の表示をしたい時はコメントアウトを外す

# class QueryTracer < Arproxy::Base
#   # 引数が3つでないと怒られるのでtest追加
#   def execute(sql, name = nil, test)
#     role = ActiveRecord::Base.current_role
#     name = "#{name} [#{role}]"
#     super(sql, name)
#   end
# end
#
# Arproxy.configure do |config|
#   config.adapter = "mysql2" # A DB Apdapter name which is used in your database.yml
#   config.use QueryTracer
# end
# Arproxy.enable!
