# exemple du fonctionnement du yield
# voir page 47 de Programming Ruby.doc
#In this example, the yield statement has a parameter. 
# This value is passed to the associated block.
# In the definition of the block, the argument list appears between vertical bars.
# In this instance, the variable f receives the value passed to the yield,
# so the block prints successive members of the series.
# (This example also shows parallel assignment in action

def fibUpTo(max)
    i1, i2 = 1, 1        # parallel assignment
    while i1 <= max
      # puts i1
      yield i1 # yield execute le bloc { |f| print f, " " }
      i1, i2 = i2, i1+i2
    end
  end
  fibUpTo(1000) { |f| print f, " " }
  