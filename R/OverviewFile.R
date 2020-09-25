
#library('test')


#install.packages("colorfindr")
##install.packages("devtools")
#devtools::install_github("zumbov2/colorfindr")


# Load packages
pacman::p_load(colorfindr, dplyr)

#source('C:/Users/james.glover/Documents/GitHub/colorfindr/R/utils.R')
#source('C:/Users/james.glover/Documents/GitHub/colorfindr/R/get_colors.R')
#source('C:/Users/james.glover/Documents/GitHub/colorfindr/R/make_palette.R')
#source('C:/Users/james.glover/Documents/GitHub/colorfindr/R/plot_colors.R')
#source('C:/Users/james.glover/Documents/GitHub/colorfindr/R/plot_colors_3D.R')


# Plot
get_colors(
  img = "https://upload.wikimedia.org/wikipedia/commons/a/af/Flag_of_South_Africa.svg",
  min_share = 0.05
) %>%
  plot_colors(sort = "size")

dir('C:/Users/james.glover/Documents/GitHub/colorfindr/R/')


# Images
img <- c(
  "https://upload.wikimedia.org/wikipedia/commons/b/b5/Wappen_Aargau_matt.svg",
  "https://upload.wikimedia.org/wikipedia/commons/0/0e/Wappen_Glarus_matt.svg",
  "https://upload.wikimedia.org/wikipedia/commons/4/47/Wappen_Bern_matt.svg",
  "https://upload.wikimedia.org/wikipedia/commons/d/d1/Wappen_Neuenburg_matt.svg"
)

# Plot
for (i in 1:length(img)) get_colors(img[i], top_n = 4) %>% plot_colors(sort = "size")


# Plot (5000 randomly selected pixels)
get_colors("https://upload.wikimedia.org/wikipedia/commons/f/f4/The_Scream.jpg") %>%
  plot_colors_3d(sample_size = 5000, marker_size = 2.5, color_space = "RGB")

# Plot (5000 randomly selected pixels)
get_colors("http://wisetoast.com/wp-content/uploads/2015/10/The-Persistence-of-Memory-salvador-deli-painting.jpg") %>%
  plot_colors_3d(sample_size = 5000, marker_size = 2.5, color_space = "RGB")



# Ensure reproducibility
set.seed(123)

### tintin
# Get colors and create a palette with n = 5
get_colors("https://www.movieart.ch/bilder_xl/tintin-et-milou-poster-11438_0_xl.jpg") %>%
  #plot_colors(sort = "size")
  make_palette(n = 5)
