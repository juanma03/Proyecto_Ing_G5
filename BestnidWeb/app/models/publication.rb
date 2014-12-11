class Publication < ActiveRecord::Base
	belongs_to :user
	has_many :questions
	has_many :offers

  validates_presence_of :name, :description
  validates :image, :format => URI::regexp(%w(http https))

	scope :recientes, -> { order("created_at desc")}
  
  scope :a_z, -> { order("name")}
  scope :z_a, -> { order("name desc")}

  scope :venc_prox, -> { order("expiration")}
  scope :venc_lejano, -> { order("expiration desc")}
  scope :activas, lambda { where("expiration > '#{Time.now}'") }
  scope :inactivas, lambda { where(" '#{Time.now}' > expiration") }
  scope :finalizadas, lambda { where("finished = ?", true) }
  scope :en_curso, lambda { where("finished = ?", false) }

  def self.con_id(id)
    # where(:title, query) -> This would return an exact match of the query
    where("id like ?", id)
  end

  def self.search(query)
    # where(:title, query) -> This would return an exact match of the query
    where("lower(name) like ? OR lower(description) like ?", "%#{query}%".downcase, "%#{query}%".downcase)
  end
end
