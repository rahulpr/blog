class CreatePosts < Mongoid::Migration
  def change
  	create_table :posts do |t|
      t.change :title, :string
      t.change :body, :string
    end
  end

  # def self.down
  # 	change_table :posts do |t|
  #     t.change :title, :string
  #     t.change :body, :string
  #   end
  # end

  # def change
  # 	change_table :posts do |t|
  #     t.change :title, :string
  #     t.change :body, :string
  #   end
  # end

end