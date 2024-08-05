
from sklearn.linear_model import LinearRegression

def summary(self, x, y ):
    print(" I, the object type ", type(self)," can talk and produce a summary",x,y)

 

setattr( LinearRegression, "summary", summary )
 


