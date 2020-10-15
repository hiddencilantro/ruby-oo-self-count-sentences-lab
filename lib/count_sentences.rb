require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    divided_sentences = self.split(/[.?!]/).reject{|string| string.length == 0}
    divided_sentences.count
  end
end