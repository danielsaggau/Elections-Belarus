import geopandas as gpd 
import matplotlib.pyplot as plt


# Importing shapefile Inner nad Outer shape 

shape_outer = gpd.read_file('~/Downlaods/shape/')
shape_inner = gpd.read_file('~/Downlaods/shape/')

# Plotting Shaoefile

shape_outer.plot(cmap = 'jet', figsize = (10,10))
shape_inner.plot(cmap = 'jet', figsize = (10,10))

# Importing and Plotting Area of Interest 
AOI = gpd.read_file('~/Downlaods/shape/')
AOI.plot()

# Display together 

fig, ax = plt.subplots(1)
shape_inner.plot(ax = ax)
AOI.plot(ax = ax)
