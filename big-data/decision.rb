require 'rubygems'
require 'decisiontree'

#the last element of the training data is not mapped into the attributes array
attributes = ['Temp']
training = [
  [36.0, 'healthy'],
  [37.0, 'healthy'],
  [38.0, 'sick'],
  [39.0, 'sick'],
  [40.0, 'crazy sick'],
  [42.0, 'dead']
]

dec_tree = DecisionTree::ID3Tree.new(attributes, training,'sick',:continuous)
dec_tree.train

test = [36.5, 'healthy']
decision = dec_tree.predict(test)
puts "Prediction: #{decision}"
puts "Reality: #{test.last}"
