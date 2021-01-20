require 'pry'

class String

  def sentence?
    return true if self[-1] == "."
    false
  end

  def question?
    return true if self[-1] == "?"
    false
  end

  def exclamation?
    return true if self[-1] == "!"
    false
  end

  def count_sentences
    return self.squeeze.count(".?!")
  end
end

# p "This is a string! It has three sentences. Right?".squeeze
# p "This is a string! It has three sentences. Right?".squeeze.count(".?!")
# p "This is a string! It has three sentences. Right?".split(%r{\.{1,}|\?{1,}|\!{1,}})
# p "This is a string! It has three sentences. Right?".split(%r{\.{1,}|\?{1,}|\!{1,}}).count
# p "one. two. three?".squeeze
# p "one. two. three?".squeeze.count(".?!")
# p "one. two. three?".split(%r{\.{1,}|\?{1,}|\!{1,}})
# p "one. two. three?".split(%r{\.{1,}|\?{1,}|\!{1,}}).count
# p "This, well, is a sentence. This is too!! And so is this, I think? Woo...".squeeze
# p "This, well, is a sentence. This is too!! And so is this, I think? Woo...".squeeze.count ".?!"
# p "This, well, is a sentence. This is too!! And so is this, I think? Woo...".split(%r{\.{1,}|\?{1,}|\!{1,}})
# p "This, well, is a sentence. This is too!! And so is this, I think? Woo...".split(%r{\.{1,}|\?{1,}|\!{1,}}).count