This repository contains a simple failing rspec test.
When `tork-runner` executed from the root directory this error appear:
**Failure/Error; Unable to find matching line from backtrace**

```
tork-runner 
1 tested, 0 passed, 1 failed
>> spec/cart_spec.rb.log <<
F

Failures:

  1) Cart a new cart contains no items

>>>    Failure/Error: Unable to find matching line from backtrace     <<<

       expected  to respond to `empty?`
     # spec/cart_spec.rb:7:in `block (3 levels) in <top (required)>'
     # .............../gems/ruby-2.1.2/gems/tork-20.0.0/lib/tork/master.rb:108:in `call'
     # .............../gems/ruby-2.1.2/gems/tork-20.0.0/lib/tork/master.rb:108:in `block in at_exit'
     # .............../gems/ruby-2.1.2/gems/tork-20.0.0/lib/tork/master.rb:42:in `fork'
     # .............../gems/ruby-2.1.2/gems/tork-20.0.0/lib/tork/master.rb:42:in `test'
     # .............../gems/ruby-2.1.2/gems/tork-20.0.0/lib/tork/server.rb:84:in `recv'
     # .............../gems/ruby-2.1.2/gems/tork-20.0.0/lib/tork/server.rb:46:in `block (2 levels) in loop'
     # .............../gems/ruby-2.1.2/gems/tork-20.0.0/lib/tork/server.rb:38:in `each'
     # .............../gems/ruby-2.1.2/gems/tork-20.0.0/lib/tork/server.rb:38:in `block in loop'
     # .............../gems/ruby-2.1.2/gems/tork-20.0.0/lib/tork/server.rb:36:in `catch'
     # .............../gems/ruby-2.1.2/gems/tork-20.0.0/lib/tork/server.rb:36:in `loop'
     # .............../gems/ruby-2.1.2/gems/tork-20.0.0/lib/tork/master.rb:27:in `loop'

Finished in 0.00345 seconds (files took 0.45669 seconds to load)
1 example, 1 failure

Failed examples:

rspec spec/cart_spec.rb:6 # Cart a new cart contains no items

1 tested, 0 passed, 1 failed

```

####But when simple `rspec spec` executed, there's no problems:

```
rspec spec
F

 Failures:

>>>    1) Cart a new cart contains no items  <<<
       Failure/Error: expect(@cart).to be_empty
         expected  to respond to `empty?`
       # ./spec/cart_spec.rb:7:in `block (3 levels) in <top (required)>'

  Finished in 0.00266 seconds (files took 0.11813 seconds to load)
  1 example, 1 failure

  Failed examples:

  rspec ./spec/cart_spec.rb:6 # Cart a new cart contains no items
```
