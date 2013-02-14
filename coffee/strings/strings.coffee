# experiments w/ coffeescript 

reverse = (s = '') -> 
  if typeof s != 'object'
    s = "#{s}"
    s.split('').reverse().join('') if typeof s is 'string'

# console.log reverse item for item in ['hi there', [], null, {}, 12345, undefined]

module.exports =
  reverse: reverse 

