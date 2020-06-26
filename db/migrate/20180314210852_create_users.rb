class CreateUsers < ActiveRecord::Migration[5.1]
<<<<<<< HEAD
  def up
    create_table :users do |t|
      t.string :username
      t.string :password_digest
    end
  end

  def down
    drop_table :users
  end

=======
 def change
  create_table :users do |t|
    t.string :username
    t.string :password_digest
  end
 end
>>>>>>> 7876080f1b8a0a2f7edf65136b40a451daeb97d1
end
