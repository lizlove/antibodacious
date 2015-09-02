class PdfReader

  attr_accessor :reader

  def initialize(file_path)
    File.open(file_path, "rb") do |io|
      @reader = PDF::Reader.new(io)
    end
  end

end