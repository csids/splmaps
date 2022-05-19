# #' European Map (NUTS0)
# #'
# #' We conveniently package map datasets for Europe
# #' (taken from Eurostat/GISCO) that can be used in ggplot2 without needing any geo
# #' libraries. This data is licensed under specific conditions noted in the details section.
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
# #' \item{nuts0}{2 character NUTS0 code, describing administrative regions defined by Eurostat/GISCO.}
# #' \item{location name}{Location name}
# #' \item{country_code}{2 character NUTS0 code, describing the country}
# #' }
# #' @source \url{https://ec.europa.eu/eurostat/web/gisco/geodata/reference-data/administrative-units-statistical-units/nuts}
# #' @examples
# #' library(ggplot2)
# #' q <- ggplot(mapping = aes(x = long, y = lat, group = group))
# #' q <- q + geom_polygon(data = fhidata::europe_map_nuts0, color = "black", fill = "white", size = 0.2)
# #' q <- q + theme_void()
# #' q <- q + coord_map(
# #'   projection = "cylequalarea",
# #'   xlim = c(-25, 50),
# #'   ylim = c(31, 75),
# #'   orientation = c(90, 0, 0),
# #'   parameters = list(lat0 = 90)
# #' )
# #' q <- q + labs(caption = "\u00A9 EuroGeographics for the administrative boundaries")
# #' q
#' "europe_map_nuts0"
#'
# #' European Map (NUTS1)
# #'
# #' We conveniently package map datasets for Europe
# #' (taken from Eurostat/GISCO) that can be used in ggplot2 without needing any geo
# #' libraries. This data is licensed under specific conditions noted in the details section.
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
# #' \item{nuts1}{2 character NUTS1 code, describing administrative regions defined by Eurostat/GISCO.}
# #' \item{location name}{Location name}
# #' \item{country_code}{2 character NUTS0 code, describing the country}
# #' }
# #' @source \url{https://ec.europa.eu/eurostat/web/gisco/geodata/reference-data/administrative-units-statistical-units/nuts}
# #' @examples
# #' library(ggplot2)
# #' q <- ggplot(mapping = aes(x = long, y = lat, group = group))
# #' q <- q + geom_polygon(data = fhidata::europe_map_nuts1, color = "black", fill = "white", size = 0.2)
# #' q <- q + theme_void()
# #' q <- q + coord_map(
# #'   projection = "cylequalarea",
# #'   xlim = c(-25, 50),
# #'   ylim = c(31, 75),
# #'   orientation = c(90, 0, 0),
# #'   parameters = list(lat0 = 90)
# #' )
# #' q <- q + labs(caption = "\u00A9 EuroGeographics for the administrative boundaries")
# #' q
#' "europe_map_nuts1"
#'
# #' European Map (NUTS2)
# #'
# #' We conveniently package map datasets for Europe
# #' (taken from Eurostat/GISCO) that can be used in ggplot2 without needing any geo
# #' libraries. This data is licensed under specific conditions noted in the details section.
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
# #' \item{nuts2}{2 character NUTS2 code, describing administrative regions defined by Eurostat/GISCO.}
# #' \item{location name}{Location name}
# #' \item{country_code}{2 character NUTS0 code, describing the country}
# #' }
# #' @source \url{https://ec.europa.eu/eurostat/web/gisco/geodata/reference-data/administrative-units-statistical-units/nuts}
# #' @examples
# #' library(ggplot2)
# #' q <- ggplot(mapping = aes(x = long, y = lat, group = group))
# #' q <- q + geom_polygon(data = fhidata::europe_map_nuts2, color = "black", fill = "white", size = 0.2)
# #' q <- q + theme_void()
# #' q <- q + coord_map(
# #'   projection = "cylequalarea",
# #'   xlim = c(-25, 50),
# #'   ylim = c(31, 75),
# #'   orientation = c(90, 0, 0),
# #'   parameters = list(lat0 = 90)
# #' )
# #' q <- q + labs(caption = "\u00A9 EuroGeographics for the administrative boundaries")
# #' q
#' "europe_map_nuts2"
#'
# #' European Map (NUTS3)
# #'
# #' We conveniently package map datasets for Europe
# #' (taken from Eurostat/GISCO) that can be used in ggplot2 without needing any geo
# #' libraries. This data is licensed under specific conditions noted in the details section.
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
# #' \item{nuts3}{2 character NUTS3 code, describing administrative regions defined by Eurostat/GISCO.}
# #' \item{location name}{Location name}
# #' \item{country_code}{2 character NUTS0 code, describing the country}
# #' }
# #' @source \url{https://ec.europa.eu/eurostat/web/gisco/geodata/reference-data/administrative-units-statistical-units/nuts}
# #' @examples
# #' library(ggplot2)
# #' q <- ggplot(mapping = aes(x = long, y = lat, group = group))
# #' q <- q + geom_polygon(data = fhidata::europe_map_nuts3, color = "black", fill = "white", size = 0.2)
# #' q <- q + theme_void()
# #' q <- q + coord_map(
# #'   projection = "cylequalarea",
# #'   xlim = c(-25, 50),
# #'   ylim = c(31, 75),
# #'   orientation = c(90, 0, 0),
# #'   parameters = list(lat0 = 90)
# #' )
# #' q <- q + labs(caption = "\u00A9 EuroGeographics for the administrative boundaries")
# #' q
#' "europe_map_nuts3"
#'
#' gen_europe_map_nuts <- function(nuts_level) {
#'   . <- NULL
#'   id <- NULL
#'   location_code <- NULL
#'   long <- NULL
#'   lat <- NULL
#'   long_center <- NULL
#'   lat_center <- NULL
#'   group <- NULL
#'   hole <- NULL
#'   piece <- NULL
#'   ADM0_A3 <- NULL
#'   SOV_A3 <- NULL
#'   geometry <- NULL
#'   iso3_eurostat <- NULL
#'   iso3_un195 <- NULL
#'   location_name <- NULL
#'   location_name_english <- NULL
#'
#'   if (nuts_level == 0) {
#'     spdf <- sf::read_sf(
#'       system.file(
#'         "extdata",
#'         "NUTS_RG_01M_2016_4326_LEVL_0",
#'         "NUTS_RG_01M_2016_4326_LEVL_0.shp",
#'         package = "fhidata"
#'       ),
#'       as_tibble = T
#'     )
#'   } else if (nuts_level == 1) {
#'     spdf <- sf::read_sf(
#'       system.file(
#'         "extdata",
#'         "NUTS_RG_01M_2016_4326_LEVL_1",
#'         "NUTS_RG_01M_2016_4326_LEVL_1.shp",
#'         package = "fhidata"
#'       ),
#'       as_tibble = T
#'     )
#'   } else if (nuts_level == 2) {
#'     spdf <- sf::read_sf(
#'       system.file(
#'         "extdata",
#'         "NUTS_RG_01M_2016_4326_LEVL_2",
#'         "NUTS_RG_01M_2016_4326_LEVL_2.shp",
#'         package = "fhidata"
#'       ),
#'       as_tibble = T
#'     )
#'   } else if (nuts_level == 3) {
#'     spdf <- sf::read_sf(
#'       system.file(
#'         "extdata",
#'         "NUTS_RG_01M_2016_4326_LEVL_3",
#'         "NUTS_RG_01M_2016_4326_LEVL_3.shp",
#'         package = "fhidata"
#'       ),
#'       as_tibble = T
#'     )
#'   }
#'   nrow(spdf)
#'   names(spdf)
#'   nam <- data.table(spdf[, c("NUTS_ID", "NUTS_NAME", "CNTR_CODE")])
#'   nam[, geometry := NULL]
#'   setnames(nam, "NUTS_ID", "nuts3")
#'
#'   spdf_simple <- sf::as_Spatial(spdf)
#'   if (nuts_level == 0) {
#'     spdf_simple <- rmapshaper::ms_simplify(spdf_simple, keep = 0.75)
#'   } else {
#'     spdf_simple <- rmapshaper::ms_simplify(spdf_simple, keep = 0.5)
#'   }
#'   spdf_fortified <- broom::tidy(spdf_simple, region = "NUTS_ID")
#'   setDT(spdf_fortified)
#'   setnames(spdf_fortified, "id", "nuts3")
#'   spdf_fortified[nam, on = "nuts3", location_name := NUTS_NAME]
#'   spdf_fortified[nam, on = "nuts3", country_code := CNTR_CODE]
#'
#'   spdf_fortified[, hole := NULL]
#'   spdf_fortified[, piece := NULL]
#'
#'   if (nuts_level == 0) {
#'     setnames(spdf_fortified, "nuts3", "nuts0")
#'   } else if (nuts_level == 1) {
#'     setnames(spdf_fortified, "nuts3", "nuts1")
#'   } else if (nuts_level == 2) {
#'     setnames(spdf_fortified, "nuts3", "nuts2")
#'   }
#'
#'   return(invisible(spdf_fortified))
#' }
