# load packages -----------------------------------------------------
library(openintro)

# create data -------------------------------------------------------
prius <- c(54.6, 59.5, 49.5, 44.3, 63.3, 52.3, 55.4, 
           50.3, 60.3, 53.2, 52.6, 46.6, 52.1, 52.0)

# histogram ---------------------------------------------------------
pdf("prius_fuel_efficiency_hist.pdf", height = 3, width = 6)

par(mar = c(4,2,0,0), las = 1, mgp = c(2.5,1,0),
    cex.lab = 1.25, cex.axis = 1.25)

histPlot(prius, ylab = "",xlab = "Mileage (in MPG)", col = COL[1], axes = FALSE)
axis(1, at = seq(40, 65, 5))
axis(2, at = seq(0, 6, 2))

dev.off()

# summary stats -----------------------------------------------------
round(mean(prius), 1)
round(sd(prius), 1)
length(prius)