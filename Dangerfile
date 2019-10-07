# puts danger.git.methods

fail "Too much code changed in this pr, consider separate into smaller one." if danger.git.lines_of_code > 500 
warn "Less than 100 lines of code changed, this should be a small pr!" if  danger.git.lines_of_code < 100 