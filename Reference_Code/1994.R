# import Packages

library(ggplot2)
library(sf)
library(translateR)

geo = read_excel("~/Downloads/BelarusElections 4/elections 1994 longlat.xlsx", sheet = "Areas")

google_data <- translate(dataset =geo, content.field = 'area_name_russian', google.api.key = '59eab4b079ff0e193b6158f33b312a893d85d761', source.lang = 'ru',target.lang = 'en')

google.dataset.out
getGoogleLanguages()

google.vector.out <- translate(content.vec = ap_top_terms$term, google.api.key = '59eab4b079ff0e193b6158f33b312a893d85d761', source.lang = "ru", target.lang = "uk")
