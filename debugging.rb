# Preventative Measures
#
# 1. Indentation.
#
# 2. Good variable names.
#
# 3. Unit testing  - write a test, get failure, gives indication of whats wrong.
#
# 4. manual testing - for example...
# def manipluate(integer)
# integer += 10
# p integer
# integer /+ 2
# p integer
# end        can see when integer prints where issue is.
#
# 5. Small methods - single responsibility. Ensure a function does one thing.
#
# 6. error messages. - error message will contain file, and line number of wher
#  the issue is.
#
# 7. Look for typo, spelling error, open brakets, incorrect capitalization etc
 #
 # 8. follow the flow of info through the argument.
 #
 # 9. be methodical.
 # #
 # 10. documentation. use Ruby docs.
 #
 # 11. move on, and come back to it after a while

 # Ruby Method - set up.

 def setup()
   @person = {"name" => "jim", "age" => 20}
 end
