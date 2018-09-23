# ruby_learning
Ruby Learning by using TDD - Test Driven Development

Install Ruby (depends on your OS)  
Install rspec (gem install rspec)

You can then run the tests with `rspec ruby_spec.rb`  
It SHOULD fail!  This is good.  
Make the first failure pass by changing the

    answers_without_answers.rb file

For the first answer change:

    def answer_A1
    end

to be

    def answer_A1
      5
    end

Now, when you do rspec ruby_spec.rb the next test down will fail...  
Keep repeating 'fix the method' until all 48+ tests pass!  

You've now learned basic Ruby and TDD while you were at it!
