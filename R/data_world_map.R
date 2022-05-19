# #' World Map
# #'
# #' We conveniently package map datasets for the world
# #' (taken from Eurostat/GISCO) that can be used in ggplot2 without needing any geo
# #' libraries. This data is licensed under specific conditions noted in the details section.
# #'
# #' This world map contains 254 administrative regions (`iso3_eurostat`), as defined by Eurostat/GISCO.
# #' The Vatican is not included in these administrative regions.
# #' Antarctica was physically removed by the maintainers of this R package.
# #'
# #' A second variable (`iso3_un195`) maps these administrative regions to:
# #' \itemize{
# #'   \item 193 UN member states
# #'   \item 1 non-member permanent observer state (State of Palestine)
# #'   \item "DISPUTED" (Western Sahara, Paracel Islands, Askai Chin, Arunachal Pradesh,
# #' China/India, Hala'Ib Triangle, Ilemi Triangle, Jammu Kashmir, Kuril Islands,
# #' Navassa Island, Scarborough Reef, Senkaku Islands, Bassa Da India, Abyei,
# #' Bir Tawil)
# #' }
# #'
# #' The permission to use the data is granted on condition that:
# #' \itemize{
# #' \item The data will not be used for commercial purposes
# #' \item The source will be acknowledged. A copyright notice will have to be visible on any printed or electronic publication using this dataset
# #' }
# #'
# #' @format
# #' \describe{
# #' \item{long}{Longitude.}
# #' \item{lat}{Latitude.}
# #' \item{order}{The order that this line should be plotted in.}
# #' \item{group}{Needs to be used as 'group' aesthetic in ggplot2.}
# #' \item{iso3_eurostat}{3 character isocode, describing 254 administrative regions defined by Eurostat/GISCO.}
# #' \item{iso3_un195}{3 character isocode, mapping the 254 administrative regions defined by Eurostat/GISCO into:
# #' \itemize{
# #'   \item 193 UN member states
# #'   \item 1 non-member permanent observer state (State of Palestine)
# #'   \item "DISPUTED" (Western Sahara, Paracel Islands, Askai Chin, Arunachal Pradesh,
# #' China/India, Hala'Ib Triangle, Ilemi Triangle, Jammu Kashmir, Kuril Islands,
# #' Navassa Island, Scarborough Reef, Senkaku Islands, Bassa Da India, Abyei,
# #' Bir Tawil)
# #' }
# #' }
# #' }
# #' @source \url{https://ec.europa.eu/eurostat/web/gisco/geodata/reference-data/administrative-units-statistical-units/countries}
# #' @examples
# #' library(ggplot2)
# #' q <- ggplot(mapping = aes(x = long, y = lat, group = group))
# #' q <- q + geom_polygon(data = splmaps::world_map, color = "black", fill = "white", size = 0.2)
# #' q <- q + theme_void()
# #' q <- q + coord_map(
# #'   projection = "cylequalarea",
# #'   xlim = c(-180, 180),
# #'   ylim = c(-70, 90),
# #'   orientation = c(90, 0, 0),
# #'   parameters = list(lat0 = 90)
# #' )
# #' q <- q + labs(caption = "\u00A9 EuroGeographics for the administrative boundaries")
# #' q
# "world_map"
#
# gen_world_map <- function() {
#   . <- NULL
#   id <- NULL
#   location_code <- NULL
#   long <- NULL
#   lat <- NULL
#   long_center <- NULL
#   lat_center <- NULL
#   group <- NULL
#   hole <- NULL
#   piece <- NULL
#   ADM0_A3 <- NULL
#   SOV_A3 <- NULL
#   geometry <- NULL
#   iso3_eurostat <- NULL
#   iso3_un195 <- NULL
#   location_name <- NULL
#   location_name_english <- NULL
#
#   iso3 <- readxl::read_excel(system.file(
#     "rawdata",
#     "iso3.xlsx",
#     package = "splmaps"
#   ))
#   setDT(iso3)
#   iso3
#   length(unique(iso3$iso3_un195))
#   length(unique(iso3$iso3_eurostat))
#
#   spdf <- sf::read_sf(
#     system.file(
#       "rawdata",
#       "CNTR_RG_01M_2016_4326",
#       "CNTR_RG_01M_2016_4326.shp",
#       package = "splmaps"
#     ),
#     as_tibble = T
#   )
#   nrow(spdf)
#   nam <- data.table(spdf[, c("ISO3_CODE", "CNTR_NAME", "NAME_ENGL")])
#   nam[, geometry := NULL]
#
#   spdf_simple <- sf::as_Spatial(spdf)
#   spdf_simple <- sp::spTransform(spdf_simple, sp::CRS("+proj=longlat +datum=WGS84"))
#   # spdf_simple <- rmapshaper::ms_simplify(spdf_simple, keep = 0.5)
#   spdf_simple <- rgeos::gSimplify(spdf_simple, tol=100, topologyPreserve = F)
#   spdf_simple$ISO3_CODE <- spdf$ISO3_CODE
#   spdf_fortified <- broom::tidy(spdf), region = "ISO3_CODE")
#   setDT(spdf_fortified)
#   setnames(spdf_fortified, "id", "iso3_eurostat")
#   spdf_fortified[iso3, on = "iso3_eurostat", iso3_un195 := iso3_un195]
#   spdf_fortified[iso3, on = "iso3_eurostat", location_name := location_name_english]
#   spdf_fortified <- spdf_fortified[iso3_eurostat != "ATA"] # get rid of antarctica
#
#   spdf_fortified[, hole := NULL]
#   spdf_fortified[, piece := NULL]
#
#   length(unique(spdf_fortified$iso3_un195))
#   length(unique(spdf_fortified$iso3_eurostat))
#
#   unique(spdf_fortified[iso3_un195 == "DISPUTED", "iso3_eurostat", "location_name"])
#
#   return(invisible(spdf_fortified))
# }
