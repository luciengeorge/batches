# task.rb
class Task
  attr_accessor :title, :description, :done
  def initialize(attributes = {})
    @id = attributes[:id]
    @title = attributes[:title]
    @description = attributes[:description]
    @done = attributes[:done] || false
  end

  # READ (one)
  def self.find(id)
    task = DB.execute('SELECT * FROM tasks WHERE id = ?', id)
    return nil if task == []

    row = task.first
    return Task.new(build_row(row))
  end

  # CREATE / UPDATE
  def save
    if @id.nil?
      # CREATE
      DB.execute("INSERT INTO tasks(title, description, done) VALUES(?, ?, ?)", @title, @description, @done ? 1 : 0)
      @id = DB.last_insert_row_id
    else
      # UPDATE
      DB.execute("UPDATE tasks SET title = ?, description = ?, done = ? WHERE id = ?", @title, @description, @done ? 1 : 0, @id)
    end
  end

  # READ (all)
  def self.all
    tasks = DB.execute("SELECT * FROM tasks")
    tasks.map do |task|
      Task.new(build_row(task))
    end
  end

  # DELETE
  def destroy
    DB.execute("DELETE FROM tasks WHERE id = ?", @id)
  end

  private

  # Building hash
  def self.build_row(row)
    row = {
      id: row['id'],
      title: row['title'],
      description: row['description'],
      done: row['done'] == 1
    }
  end
end
