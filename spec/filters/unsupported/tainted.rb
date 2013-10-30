opal_filter 'tainted' do
  fails "Array#clear keeps tainted status"
  fails "Array#compact! keeps tainted status even if all elements are removed"
  fails "Array#delete_at keeps tainted status"
  fails "Array#delete_if keeps tainted status"
  fails "Array#delete keeps tainted status"
  fails "Array#shift passed a number n as an argument keeps taint status"
  fails "Array#shift passed a number n as an argument returns an untainted array even if the array is tainted"
  fails "Array#pop passed a number n as an argument keeps taint status"
  fails "Array#pop passed a number n as an argument returns an untainted array even if the array is tainted"
  fails "Array#pop keeps taint status"
  fails "Array#+ does not get infected even if an original array is tainted"
  fails "Array#* with an integer copies the taint status of the original array if the passed count is not 0"
  fails "Array#* with an integer copies the taint status of the original array even if the array is empty"
  fails "Array#* with an integer copies the taint status of the original array even if the passed count is 0"
  fails "Array#compact does not keep tainted status even if all elements are removed"
  fails "Array#map! keeps tainted status"
  fails "Array#map does not copy tainted status"
  fails "Array#clone copies taint status from the original"
  fails "Array#collect! keeps tainted status"
  fails "Array#collect does not copy tainted status"
  fails "Array#concat keeps tainted status"
  fails "Array#concat keeps the tainted status of elements"
  fails "Array#dup copies taint status from the original"
  fails "Array#inspect taints the result if an element is tainted"
  fails "Array#inspect does not taint the result if the Array is tainted but empty"
  fails "Array#inspect taints the result if the Array is non-empty and tainted"
  fails "Array#to_s taints the result if an element is tainted"
  fails "Array#to_s does not taint the result if the Array is tainted but empty"
  fails "Array#to_s taints the result if the Array is non-empty and tainted"
  fails "Array#join with a tainted separator taints the result if the array has two or more elements"
  fails "Array#join with a tainted separator does not taint the result if the array has only one element"
  fails "Array#join with a tainted separator does not taint the result if the array is empty"
  fails "Array#join taints the result if the result of coercing an element is tainted"
  fails "Array#join does not taint the result if the Array is tainted but empty"
  fails "Array#join taints the result if the Array is tainted and non-empty"
  fails "Array#* with a string with a tainted separator taints the result if the array has two or more elements"
  fails "Array#* with a string with a tainted separator does not taint the result if the array has only one element"
  fails "Array#* with a string with a tainted separator does not taint the result if the array is empty"

  fails "Hash#reject taints the resulting hash"

  fails "Kernel#to_s returns a tainted result if self is tainted"

  fails "String#upcase taints result when self is tainted"
  fails "String#to_s taints the result when self is tainted"
  fails "String#to_str taints the result when self is tainted"
  fails "String#swapcase taints resulting string when self is tainted"
  fails "String#reverse taints the result if self is tainted"

  fails "Pathname.new is tainted if path is tainted"
  fails "String#downcase taints result when self is tainted"
end
