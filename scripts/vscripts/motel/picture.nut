i <- 1
min <- 1
max <- 4
prefix <- "spin0" // Animations are called "spin01 spin02..."

function loop () {
    
    EntFireByHandle(self, "setanimation", prefix + i, 0, self, self)

    i++

    if(i == max) {
    	i = min
    }
}