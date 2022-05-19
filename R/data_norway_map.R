# 2020 split county ----
#' Split map of Norwegian counties (2020 borders) in data.table format
#'
#' We conveniently package map datasets for Norwegian county
#' (taken from Geonorge) that can be used in ggplot2 without needing any geo
#' libraries. This data is licensed under Creative Commons BY 4.0 (CC BY 4.0).
#'
#' @format
#' \describe{
#' \item{long}{Location code.}
#' \item{lat}{Location name.}
#' \item{order}{The order that this line should be plotted in.}
#' \item{group}{Needs to be used as 'group' aesthetic in ggplot2.}
#' \item{location_code}{Location code (county code).}
#' }
#' @source \url{https://kartkatalog.geonorge.no/metadata/norske-fylker-og-kommuner-illustrasjonsdata-2020-(klippet-etter-kyst)/7408853f-eb7d-48dd-bb6c-80c7e80f7392}
#' @examples
#' library(ggplot2)
#' q <- ggplot(mapping = aes(x = long, y = lat))
#' q <- q + geom_polygon(
#'   data = splmaps::norway_nuts3_map_b2020_split_dt,
#'   mapping = aes(group = group, fill = location_code),
#'   color = "black",
#'   fill = "white",
#'   size = 0.2
#' )
#' q <- q + theme_void()
#' q <- q + coord_quickmap()
#' q
"norway_nuts3_map_b2020_split_dt"

# 2020 split municip ----
#' Split map of Norwegian municipalities (2020 borders) in data.table format
#'
#' We conveniently package map datasets for Norwegian municipalities
#' (taken from Geonorge) that can be used in ggplot2 without needing any geo
#' libraries. This data is licensed under Creative Commons BY 4.0 (CC BY 4.0).
#'
#' @format
#' \describe{
#' \item{long}{Location code.}
#' \item{lat}{Location name.}
#' \item{order}{The order that this line should be plotted in.}
#' \item{group}{Needs to be used as 'group' aesthetic in ggplot2.}
#' \item{location_code}{Location code (municipality code).}
#' }
#' @source \url{https://kartkatalog.geonorge.no/metadata/norske-fylker-og-kommuner-illustrasjonsdata-2020-(klippet-etter-kyst)/7408853f-eb7d-48dd-bb6c-80c7e80f7392}
#' @examples
#' library(ggplot2)
#' q <- ggplot(mapping = aes(x = long, y = lat))
#' q <- q + geom_polygon(
#'   data = splmaps::norway_lau2_map_b2020_split_dt,
#'   mapping = aes(group = group),
#'   color = "black",
#'   fill = "white",
#'   size = 0.2
#' )
#' q <- q + theme_void()
#' q <- q + coord_quickmap()
#' q
"norway_lau2_map_b2020_split_dt"

# 2020 WITHOUT INSERTS ----

#' Map of Norwegian counties (2020 borders) in sf format
#'
#' This data is licensed under Creative Commons BY 4.0 (CC BY 4.0).
#'
#' @format
#' \describe{
#' \item{long}{Location code.}
#' \item{lat}{Location name.}
#' \item{order}{The order that this line should be plotted in.}
#' \item{location_code}{Location code (county code).}
#' }
#' @source \url{https://kartkatalog.geonorge.no/metadata/norske-fylker-og-kommuner-illustrasjonsdata-2020-(klippet-etter-kyst)/7408853f-eb7d-48dd-bb6c-80c7e80f7392}
"norway_nuts3_map_b2020_default_sf"

#' Map of Norwegian counties (2020 borders) in data.table format
#'
#' We conveniently package map datasets for Norwegian county
#' (taken from Geonorge) that can be used in ggplot2 without needing any geo
#' libraries. This data is licensed under Creative Commons BY 4.0 (CC BY 4.0).
#'
#' @format
#' \describe{
#' \item{long}{Location code.}
#' \item{lat}{Location name.}
#' \item{order}{The order that this line should be plotted in.}
#' \item{group}{Needs to be used as 'group' aesthetic in ggplot2.}
#' \item{location_code}{Location code (county code).}
#' }
#' @source \url{https://kartkatalog.geonorge.no/metadata/norske-fylker-og-kommuner-illustrasjonsdata-2020-(klippet-etter-kyst)/7408853f-eb7d-48dd-bb6c-80c7e80f7392}
#' @examples
#' library(ggplot2)
#' q <- ggplot(mapping = aes(x = long, y = lat))
#' q <- q + geom_polygon(
#'   data = splmaps::norway_nuts3_map_b2020_default_dt,
#'   mapping = aes(group = group, fill = location_code),
#'   color = "black",
#'   fill = "white",
#'   size = 0.2
#' )
#' q <- q + geom_label(
#'   data = splmaps::norway_nuts3_position_geolabels_b2020_default_dt,
#'   mapping = aes(label = location_code),
#'   color = "red"
#' )
#' q <- q + theme_void()
#' q <- q + coord_quickmap()
#' q
#' @name norway_nuts3_map_b2020_default_dt
"norway_nuts3_map_b2020_default_dt"

#' @rdname norway_nuts3_map_b2020_default_dt
"norway_nuts3_position_geolabels_b2020_default_dt"

#' Maps of Norwegian municipalities (2020 borders) in sf format
#'
#' This data is licensed under Creative Commons BY 4.0 (CC BY 4.0).
#'
#' @format
#' \describe{
#' \item{long}{Location code.}
#' \item{lat}{Location name.}
#' \item{order}{The order that this line should be plotted in.}
#' \item{group}{Needs to be used as 'group' aesthetic in ggplot2.}
#' \item{location_code}{Location code (municipality code).}
#' }
#' @source \url{https://kartkatalog.geonorge.no/metadata/norske-fylker-og-kommuner-illustrasjonsdata-2020-(klippet-etter-kyst)/7408853f-eb7d-48dd-bb6c-80c7e80f7392}
"norway_lau2_map_b2020_default_sf"

#' Map of Norwegian municipalities (2020 borders) in data.table format
#'
#' We conveniently package map datasets for Norwegian municipalities
#' (taken from Geonorge) that can be used in ggplot2 without needing any geo
#' libraries. This data is licensed under Creative Commons BY 4.0 (CC BY 4.0).
#'
#' @format
#' \describe{
#' \item{long}{Location code.}
#' \item{lat}{Location name.}
#' \item{order}{The order that this line should be plotted in.}
#' \item{group}{Needs to be used as 'group' aesthetic in ggplot2.}
#' \item{location_code}{Location code (municipality code).}
#' }
#' @source \url{https://kartkatalog.geonorge.no/metadata/norske-fylker-og-kommuner-illustrasjonsdata-2020-(klippet-etter-kyst)/7408853f-eb7d-48dd-bb6c-80c7e80f7392}
#' @examples
#' library(ggplot2)
#' q <- ggplot(mapping = aes(x = long, y = lat))
#' q <- q + geom_polygon(
#'   data = splmaps::norway_lau2_map_b2020_default_dt,
#'   mapping = aes(group = group),
#'   color = "black",
#'   fill = "white",
#'   size = 0.2
#' )
#' q <- q + theme_void()
#' q <- q + coord_quickmap()
#' q
#' @name norway_lau2_map_b2020_default_dt
"norway_lau2_map_b2020_default_dt"

#' @rdname norway_lau2_map_b2020_default_dt
"norway_lau2_position_geolabels_b2020_default_dt"

# 2020 WITH INSERTS ----

#' Maps of Norwegian counties and municipalities with an insert for Oslo (2020 borders) in data.table format
#'
#' We conveniently package map datasets for Norwegian county
#' (taken from Geonorge) that can be used in ggplot2 without needing any geo
#' libraries. This data is licensed under Creative Commons BY 4.0 (CC BY 4.0).
#'
#' @format
#' \describe{
#' \item{long}{Location code.}
#' \item{lat}{Location name.}
#' \item{order}{The order that this line should be plotted in.}
#' \item{group}{Needs to be used as 'group' aesthetic in ggplot2.}
#' \item{location_code}{Location code (county code).}
#' }
#' @source \url{https://kartkatalog.geonorge.no/metadata/norske-fylker-og-kommuner-illustrasjonsdata-2020-(klippet-etter-kyst)/7408853f-eb7d-48dd-bb6c-80c7e80f7392}
#' @examples
#' library(ggplot2)
#' q <- ggplot(mapping = aes(x = long, y = lat))
#' q <- q + geom_polygon(
#'   data = splmaps::norway_nuts3_map_b2020_insert_oslo_dt,
#'   mapping = aes(group = group, fill = location_code),
#'   color = "black",
#'   fill = "white",
#'   size = 0.2
#' )
#' q <- q + geom_label(
#'   data = splmaps::norway_nuts3_position_geolabels_b2020_insert_oslo_dt,
#'   mapping = aes(label = location_code),
#'   color = "red"
#' )
#' q <- q + annotate(
#'   "text",
#'   x = splmaps::norway_xxx_position_title_insert_oslo_b2020_insert_oslo_dt$long,
#'   y = splmaps::norway_xxx_position_title_insert_oslo_b2020_insert_oslo_dt$lat,
#'   label = "Oslo"
#' )
#' q <- q + theme_void()
#' q <- q + coord_quickmap()
#' q
#'
#' library(ggplot2)
#' q <- ggplot(mapping = aes(x = long, y = lat))
#' q <- q + geom_polygon(
#'   data = splmaps::norway_lau2_map_b2020_insert_oslo_dt,
#'   mapping = aes(group = group),
#'   color = "black",
#'   fill = "white",
#'   size = 0.2
#' )
#' q <- q + annotate(
#'   "text",
#'   x = splmaps::norway_xxx_position_title_insert_oslo_b2020_insert_oslo_dt$long,
#'   y = splmaps::norway_xxx_position_title_insert_oslo_b2020_insert_oslo_dt$lat,
#'   label = "Oslo"
#' )
#' q <- q + theme_void()
#' q <- q + coord_quickmap()
#' q
#' @name norway_xxx_map_b2020_insert_oslo_dt
"norway_nuts3_map_b2020_insert_oslo_dt"

#' @rdname norway_xxx_map_b2020_insert_oslo_dt
"norway_lau2_map_b2020_insert_oslo_dt"

#' @rdname norway_xxx_map_b2020_insert_oslo_dt
"norway_xxx_position_title_insert_oslo_b2020_insert_oslo_dt"

#' @rdname norway_xxx_map_b2020_insert_oslo_dt
"norway_nuts3_position_geolabels_b2020_insert_oslo_dt"

#' @rdname norway_xxx_map_b2020_insert_oslo_dt
"norway_lau2_position_geolabels_b2020_insert_oslo_dt"

# 2019 WITHOUT INSERTS ----

#' Map of Norwegian counties (2019 borders) in sf format
#'
#' This data is licensed under Creative Commons 0.
#'
#' @format
#' \describe{
#' \item{long}{Location code.}
#' \item{lat}{Location name.}
#' \item{order}{The order that this line should be plotted in.}
#' \item{group}{Needs to be used as 'group' aesthetic in ggplot2.}
#' \item{location_code}{Location code (county code).}
#' }
#' @source \url{https://kartkatalog.geonorge.no/metadata/uuid/cb02ab77-d3e6-4500-8a92-ea67367e7734}
"norway_nuts3_map_b2019_default_sf"

#' Map of Norwegian counties (2019 borders)
#'
#' We conveniently package map datasets for Norwegian county
#' (taken from Geonorge) that can be used in ggplot2 without needing any geo
#' libraries. This data is licensed under Creative Commons 0.
#'
#' @format
#' \describe{
#' \item{long}{Location code.}
#' \item{lat}{Location name.}
#' \item{order}{The order that this line should be plotted in.}
#' \item{group}{Needs to be used as 'group' aesthetic in ggplot2.}
#' \item{location_code}{Location code (county code).}
#' }
#' @source \url{https://kartkatalog.geonorge.no/metadata/uuid/cb02ab77-d3e6-4500-8a92-ea67367e7734}
#' @examples
#' library(ggplot2)
#' q <- ggplot(mapping = aes(x = long, y = lat))
#' q <- q + geom_polygon(
#'   data = splmaps::norway_nuts3_map_b2019_default_dt,
#'   mapping = aes(group = group, fill = location_code),
#'   color = "black",
#'   fill = "white",
#'   size = 0.2
#' )
#' q <- q + geom_label(
#'   data = splmaps::norway_nuts3_position_geolabels_b2019_default_dt,
#'   mapping = aes(label = location_code),
#'   color = "red"
#' )
#' q <- q + theme_void()
#' q <- q + coord_quickmap()
#' q
#' @name norway_nuts3_map_b2019_default_dt
"norway_nuts3_map_b2019_default_dt"

#' @rdname norway_nuts3_map_b2019_default_dt
"norway_nuts3_position_geolabels_b2019_default_dt"

#' Map of Norwegian municipalities (2019 borders) in sf format
#'
#' This data is licensed under Creative Commons 0.
#'
#' @format
#' \describe{
#' \item{long}{Location code.}
#' \item{lat}{Location name.}
#' \item{order}{The order that this line should be plotted in.}
#' \item{group}{Needs to be used as 'group' aesthetic in ggplot2.}
#' \item{location_code}{Location code (municipality code).}
#' }
#' @source \url{https://kartkatalog.geonorge.no/metadata/uuid/cb02ab77-d3e6-4500-8a92-ea67367e7734}
"norway_lau2_map_b2019_default_sf"

#' Map of Norwegian municipalities (2019 borders)
#'
#' We conveniently package map datasets for Norwegian municipalities
#' (taken from Geonorge) that can be used in ggplot2 without needing any geo
#' libraries. This data is licensed under Creative Commons 0.
#'
#' @format
#' \describe{
#' \item{long}{Location code.}
#' \item{lat}{Location name.}
#' \item{order}{The order that this line should be plotted in.}
#' \item{group}{Needs to be used as 'group' aesthetic in ggplot2.}
#' \item{location_code}{Location code (municipality code).}
#' }
#' @source \url{https://kartkatalog.geonorge.no/metadata/uuid/cb02ab77-d3e6-4500-8a92-ea67367e7734}
#' @examples
#' library(ggplot2)
#' q <- ggplot(mapping = aes(x = long, y = lat))
#' q <- q + geom_polygon(
#'   data = splmaps::norway_lau2_map_b2019_default_dt,
#'   mapping = aes(group = group),
#'   color = "black",
#'   fill = "white",
#'   size = 0.2
#' )
#' q <- q + theme_void()
#' q <- q + coord_quickmap()
#' q
"norway_lau2_map_b2019_default_dt"

# 2019 WITH INSERTS ----

#' Maps of Norwegian counties and municipalities with inserts (2019 borders) in data.table format
#'
#' We conveniently package map datasets for Norwegian county
#' (taken from Geonorge) that can be used in ggplot2 without needing any geo
#' libraries. This data is licensed under Creative Commons 0.
#'
#' @format
#' \describe{
#' \item{long}{Location code.}
#' \item{lat}{Location name.}
#' \item{order}{The order that this line should be plotted in.}
#' \item{group}{Needs to be used as 'group' aesthetic in ggplot2.}
#' \item{location_code}{Location code (county code).}
#' }
#' @source \url{https://kartkatalog.geonorge.no/metadata/uuid/cb02ab77-d3e6-4500-8a92-ea67367e7734}
#' @examples
#' library(ggplot2)
#' q <- ggplot(mapping = aes(x = long, y = lat))
#' q <- q + geom_polygon(
#'   data = splmaps::norway_nuts3_map_b2019_insert_oslo_dt,
#'   mapping = aes(group = group, fill = location_code),
#'   color = "black",
#'   fill = "white",
#'   size = 0.2
#' )
#' q <- q + annotate(
#'   "text",
#'   x = splmaps::norway_xxx_position_title_insert_oslo_b2019_insert_oslo_dt$long,
#'   y = splmaps::norway_xxx_position_title_insert_oslo_b2019_insert_oslo_dt$lat,
#'   label = "Oslo"
#' )
#' q <- q + theme_void()
#' q <- q + coord_quickmap()
#' q
#'
#' library(ggplot2)
#' q <- ggplot(mapping = aes(x = long, y = lat))
#' q <- q + geom_polygon(
#'   data = splmaps::norway_lau2_map_b2019_insert_oslo_dt,
#'   mapping = aes(group = group),
#'   color = "black",
#'   fill = "white",
#'   size = 0.2
#' )
#' q <- q + annotate(
#'   "text",
#'   x = splmaps::norway_xxx_position_title_insert_oslo_b2019_insert_oslo_dt$long,
#'   y = splmaps::norway_xxx_position_title_insert_oslo_b2019_insert_oslo_dt$lat,
#'   label = "Oslo"
#' )
#' q <- q + theme_void()
#' q <- q + coord_quickmap()
#' q
#' @name norway_xxx_map_b2019_insert_oslo_dt
"norway_nuts3_map_b2019_insert_oslo_dt"

#' @rdname norway_xxx_map_b2019_insert_oslo_dt
"norway_lau2_map_b2019_insert_oslo_dt"

#' @rdname norway_xxx_map_b2019_insert_oslo_dt
"norway_xxx_position_title_insert_oslo_b2019_insert_oslo_dt"

# 2017 WITHOUT INSERTS ----

#' Map of Norwegian counties (2017 borders) in sf format
#'
#' This data is licensed under Creative Commons 0.
#'
#' @format
#' \describe{
#' \item{long}{Location code.}
#' \item{lat}{Location name.}
#' \item{order}{The order that this line should be plotted in.}
#' \item{group}{Needs to be used as 'group' aesthetic in ggplot2.}
#' \item{location_code}{Location code (county code).}
#' }
#' @source \url{https://kartkatalog.geonorge.no/metadata/uuid/cb02ab77-d3e6-4500-8a92-ea67367e7734}
"norway_nuts3_map_b2017_default_sf"

#' Map of Norwegian counties (2017 borders) in data.table format
#'
#' We conveniently package map datasets for Norwegian county
#' (taken from Geonorge) that can be used in ggplot2 without needing any geo
#' libraries. This data is licensed under Creative Commons 0.
#'
#' @format
#' \describe{
#' \item{long}{Location code.}
#' \item{lat}{Location name.}
#' \item{order}{The order that this line should be plotted in.}
#' \item{group}{Needs to be used as 'group' aesthetic in ggplot2.}
#' \item{location_code}{Location code (county code).}
#' }
#' @source \url{https://kartkatalog.geonorge.no/metadata/uuid/cb02ab77-d3e6-4500-8a92-ea67367e7734}
#' @examples
#' library(ggplot2)
#' q <- ggplot(mapping = aes(x = long, y = lat))
#' q <- q + geom_polygon(
#'   data = splmaps::norway_nuts3_map_b2017_default_dt,
#'   mapping = aes(group = group, fill = location_code),
#'   color = "black",
#'   fill = "white",
#'   size = 0.2
#'  )
#' q <- q + geom_label(
#'   data = splmaps::norway_nuts3_position_geolabels_b2017_default_dt,
#'   mapping = aes(label = location_code),
#'   color = "red"
#' )
#' q <- q + theme_void()
#' q <- q + coord_quickmap()
#' q
#' @name norway_nuts3_map_b2017_default_dt
"norway_nuts3_map_b2017_default_dt"

#' @rdname norway_nuts3_map_b2017_default_dt
"norway_nuts3_position_geolabels_b2017_default_dt"

# 2017 WITH INSERTS ----

#' Map of Norwegian counties with inserts (2017 borders) in data.table format
#'
#' We conveniently package map datasets for Norwegian county
#' (taken from Geonorge) that can be used in ggplot2 without needing any geo
#' libraries. This data is licensed under Creative Commons 0.
#'
#' @format
#' \describe{
#' \item{long}{Location code.}
#' \item{lat}{Location name.}
#' \item{order}{The order that this line should be plotted in.}
#' \item{group}{Needs to be used as 'group' aesthetic in ggplot2.}
#' \item{location_code}{Location code (county code).}
#' }
#' @source \url{https://kartkatalog.geonorge.no/metadata/uuid/cb02ab77-d3e6-4500-8a92-ea67367e7734}
#' @examples
#' library(ggplot2)
#' q <- ggplot(mapping = aes(x = long, y = lat))
#' q <- q + geom_polygon(
#'   data = splmaps::norway_nuts3_map_b2017_insert_oslo_dt,
#'   mapping = aes(group = group, fill = location_code),
#'   color = "black",
#'   fill = "white",
#'   size = 0.2
#' )
#' q <- q + annotate(
#'   "text",
#'   x = splmaps::norway_xxx_position_title_insert_oslo_b2017_insert_oslo_dt$long,
#'   y = splmaps::norway_xxx_position_title_insert_oslo_b2017_insert_oslo_dt$lat,
#'   label = "Oslo"
#' )
#' q <- q + theme_void()
#' q <- q + coord_quickmap()
#' q
#' @rdname norway_nuts3_map_b2017_insert_oslo_dt
"norway_nuts3_map_b2017_insert_oslo_dt"

#' @name norway_nuts3_map_b2017_insert_oslo_dt
"norway_xxx_position_title_insert_oslo_b2017_insert_oslo_dt"


gen_norway_nuts3_position_geolabels <- function(x_year_end, insert = F) {
  location_code <- NULL
  long <- NULL
  lat <- NULL
  stopifnot(x_year_end %in% c("2017", "2019", "2020"))

  if (x_year_end == 2017) {
    label_positions <- data.table(
      location_code = c(
        "county01", "county02", "county03", "county04",
        "county05", "county06", "county07", "county08",
        "county09", "county10", "county11", "county12",
        "county14", "county15", "county16", "county17",
        "county18", "county19", "county20"
      ),
      long = c(
        11.266137, 11.2, 10.72028, 11.5,
        9.248258, 9.3, 10.0, 8.496352,
        8.45, 7.2, 6.1, 6.5,
        6.415354, 7.8, 9.650999, 11.546003,
        14.8, 19.244275, 24.7
      ),

      lat = c(
        59.33375, 60.03851, 59.98, 61.26886,
        61.25501, 60.3, 59.32481, 59.47989,
        58.6, 58.4, 58.7, 60.25533,
        61.6, 62.5, 63.43384, 67.29402,
        66.5, 68.9, 69.6
      )
    )
  } else if (x_year_end == 2019) {
    label_positions <- data.table(
      location_code = c(
        "county01", "county02", "county03", "county04",
        "county05", "county06", "county07", "county08",
        "county09", "county10", "county11", "county12",
        "county14", "county15", "county18", "county19",
        "county20", "county50"
      ),
      long = c(
        11.266137, 11.2, 10.72028, 11.5, 9.248258, 9.3, 10.0, 8.496352,
        8.45, 7.2, 6.1, 6.5, 6.415354, 7.8, 14.8, 19.244275, 24.7, 11
      ),

      lat = c(
        59.33375, 60.03851, 59.98, 61.26886, 61.25501, 60.3, 59.32481, 59.47989,
        58.6, 58.4, 58.7, 60.25533, 61.6, 62.5, 66.5, 68.9, 69.6, 63
      )
    )
  } else if (x_year_end == 2020) {
    label_positions <- rbindlist(list(
      data.table(
        location_code = "county30",
        long = 8.85,
        lat = 60.60
      ),
      data.table(
        location_code = "county03",
        long = 10.72028,
        lat = 59.98
      ),
      data.table(
        location_code = "county34",
        long = 11.0,
        lat = 61.86886
      ),
      data.table(
        location_code = "county38",
        long = 8.5,
        lat = 59.32481
      ),
      data.table(
        location_code = "county42",
        long = 7.8,
        lat = 58.3
      ),
      data.table(
        location_code = "county11",
        long = 6.1,
        lat = 58.7
      ),
      data.table(
        location_code = "county46",
        long = 6.5,
        lat = 61.45
      ),
      data.table(
        location_code = "county15",
        long = 7.8,
        lat = 62.5
      ),
      data.table(
        location_code = "county18",
        long = 14.8,
        lat = 66.75
      ),
      data.table(
        location_code = "county54",
        long = 22.94275,
        lat = 69.5
      ),
      data.table(
        location_code = "county50",
        long = 12.0,
        lat = 64.15
      )
    ))
    # fix oslo insert if desired
    if(insert){
      label_positions[location_code=="county03", long := 20.85]
      label_positions[location_code=="county03", lat := 62]
    }
  }

  return(label_positions)
}


gen_norway_xxx_position_title_insert_oslo <- function(x_year_end) {
  stopifnot(x_year_end %in% c("2017", "2019", "2020"))

  label_positions <- data.table(
    long = c(
      19.75
    ),
    lat = c(
      64.5
    )
  )

  return(label_positions)
}

# insert for oslo/akershus?
# split the country in 2?
gen_norway_nuts3_map <- function(x_year_end, insert = FALSE, split = FALSE, return_sf=FALSE) {
  stopifnot(x_year_end %in% c("2017", "2019", "2020"))

  . <- NULL
  id <- NULL
  location_code <- NULL
  long <- NULL
  lat <- NULL
  long_center <- NULL
  lat_center <- NULL
  group <- NULL
  hole <- NULL
  piece <- NULL
  long_diff <- NULL
  lat_diff <- NULL

  if (x_year_end == 2017) {
    spdf <- geojsonio::geojson_read(
      system.file("rawdata", "Fylker17.geojson", package = "splmaps"),
      what = "sp"
    )
    spdf_simple <- rgeos::gSimplify(spdf, tol=2000, topologyPreserve = F)
    # pryr::object_size(spdf_simple)
  } else if (x_year_end == 2019) {
    spdf <- geojsonio::geojson_read(
      system.file("rawdata", "Fylker19.geojson", package = "splmaps"),
      what = "sp"
    )
    spdf_simple <- rgeos::gSimplify(spdf, tol=2000, topologyPreserve = F)
  } else if (x_year_end == 2020) {
    spdf <- geojsonio::geojson_read(
      system.file("rawdata", "Fylker20.geojson", package = "splmaps"),
      what = "sp"
    )
    spdf$navn <- NULL
    spdf_simple <- rgeos::gSimplify(spdf, tol=2000, topologyPreserve = F)
  }

  if(return_sf){
    spgeo <- sp::spTransform(spdf_simple, sp::CRS("+proj=longlat +datum=WGS84"))
    x <- sf::st_as_sf(spgeo)
    x$location_code <- sprintf("county%s", formatC(as.numeric(spdf$fylkesnummer), width = 2, flag = "0"))
    return(x)
  }

  spdf_simple$fylkesnummer <- spdf$fylkesnummer
  spdf_fortified <- broom::tidy(spdf_simple, region = "fylkesnummer")
  setDT(spdf_fortified)

  # convert from UTM to latlong
  utm <- spdf_fortified[, c("long", "lat")]
  sputm <- sp::SpatialPoints(utm, proj4string = sp::CRS("+proj=utm +zone=33 +datum=WGS84"))
  spgeo <- sp::spTransform(sputm, sp::CRS("+proj=longlat +datum=WGS84"))
  spgeo <- as.data.table(spgeo)

  spdf_fortified[, long := spgeo$long]
  spdf_fortified[, lat := spgeo$lat]

  spdf_fortified[, location_code := sprintf("county%s", formatC(as.numeric(id), width = 2, flag = "0"))]

  if (insert) {
    extra <- spdf_fortified[location_code %in% c("county03")]
    extra[, long_center := mean(long), by = .(location_code)]
    extra[, lat_center := mean(lat), by = .(location_code)]
    extra[, long := long + 10 + (long - long_center) * 10]
    extra[, lat := lat + 2 + (lat - lat_center) * 10]
    extra[, long_center := NULL]
    extra[, lat_center := NULL]
    extra[, group := paste0("x", group)]

    spdf_fortified <- rbind(spdf_fortified, extra)
  }

  if (split) {
    spdf_fortified[location_code %in% c("county18", "county19", "county20", "county54"), long := (long - mean(long)) * 0.60 + mean(long) - 17]
    spdf_fortified[location_code %in% c("county18", "county19", "county20", "county54"), lat := (lat - mean(lat)) * 0.70 + mean(lat) - 5.5]

    spdf_fortified[location_code %in% c("county18", "county19", "county20", "county54"), long_center := mean(long)]
    spdf_fortified[location_code %in% c("county18", "county19", "county20", "county54"), lat_center := mean(lat)]

    spdf_fortified[location_code %in% c("county18", "county19", "county20", "county54"), long_diff := long - long_center]
    spdf_fortified[location_code %in% c("county18", "county19", "county20", "county54"), lat_diff := lat - lat_center]

    spdf_fortified[location_code %in% c("county18", "county19", "county20", "county54"), long_diff := long_diff * cos(-0.05 * pi) + lat_diff * sin(-0.05 * pi)]
    spdf_fortified[location_code %in% c("county18", "county19", "county20", "county54"), lat_diff := -1 * long_diff * sin(-0.05 * pi) + lat_diff * cos(-0.05 * pi)]

    spdf_fortified[location_code %in% c("county18", "county19", "county20", "county54"), long := long_diff + long_center]
    spdf_fortified[location_code %in% c("county18", "county19", "county20", "county54"), lat := lat_diff + lat_center]

    spdf_fortified[, long_center := NULL]
    spdf_fortified[, lat_center := NULL]
    spdf_fortified[, long_diff := NULL]
    spdf_fortified[, lat_diff := NULL]
  }

  spdf_fortified[, hole := NULL]
  spdf_fortified[, piece := NULL]
  spdf_fortified[, id := NULL]

  return(invisible(spdf_fortified))
}

gen_norway_lau2_map <- function(
  x_year_end,
  insert = FALSE,
  split = FALSE,
  return_sf=FALSE
  ) {
  stopifnot(x_year_end %in% c("2019", "2020"))

  . <- NULL
  id <- NULL
  location_code <- NULL
  long <- NULL
  lat <- NULL
  long_center <- NULL
  lat_center <- NULL
  group <- NULL
  hole <- NULL
  piece <- NULL
  long_diff <- NULL
  lat_diff <- NULL

  require_namespace(c("geojsonio", "broom", "rmapshaper", "sp"))

  if(return_sf){
    tol <- 1300
  } else {
    tol <- 500
  }

  if (x_year_end == 2019) {
    spdf <- geojsonio::geojson_read(
      system.file("rawdata", "Kommuner19.geojson", package = "splmaps"),
      what = "sp"
    )
    spdf_simple <- rgeos::gSimplify(spdf, tol=tol, topologyPreserve = F)
    # pryr::object_size(spdf_simple)
  } else if (x_year_end == 2020) {
    spdf <- geojsonio::geojson_read(
      system.file("rawdata", "Kommuner20.geojson", package = "splmaps"),
      what = "sp"
    )
    spdf_simple <- rgeos::gSimplify(spdf, tol=tol, topologyPreserve = F)
    # pryr::object_size(spdf_simple)
  }

  if(return_sf){
    spgeo <- sp::spTransform(spdf_simple, sp::CRS("+proj=longlat +datum=WGS84"))
    x <- sf::st_as_sf(spgeo)
    x$location_code <- sprintf("municip%s", formatC(as.numeric(spdf$kommunenummer), width = 4, flag = "0"))
    return(x)
  }

  spdf_simple$kommunenummer <- spdf$kommunenummer
  spdf_fortified <- broom::tidy(spdf_simple, region = "kommunenummer")

  setDT(spdf_fortified)
  spdf_fortified[, location_code := sprintf("municip%s", formatC(as.numeric(id), width = 4, flag = "0"))]

  # convert from UTM to latlong
  utm <- spdf_fortified[, c("long", "lat")]
  sputm <- sp::SpatialPoints(utm, proj4string = sp::CRS("+proj=utm +zone=33 +datum=WGS84"))
  spgeo <- sp::spTransform(sputm, sp::CRS("+proj=longlat +datum=WGS84"))
  spgeo <- as.data.table(spgeo)

  spdf_fortified[, long := spgeo$long]
  spdf_fortified[, lat := spgeo$lat]

  if (insert) {
    extra <- spdf_fortified[stringr::str_detect(location_code, "municip0[3]")]
    extra[, long_center := mean(long), by = .(location_code)]
    extra[, lat_center := mean(lat), by = .(location_code)]
    extra[, long := long + 10 + (long - long_center) * 10]
    extra[, lat := lat + 2 + (lat - lat_center) * 10]
    extra[, long_center := NULL]
    extra[, lat_center := NULL]
    extra[, group := paste0("x", group)]

    spdf_fortified <- rbind(spdf_fortified, extra)
  }

  if (split) {
    locations <- c(
      stringr::str_subset(spdf_fortified$location_code, "municip18"),
      stringr::str_subset(spdf_fortified$location_code, "municip19"),
      stringr::str_subset(spdf_fortified$location_code, "municip20"),
      stringr::str_subset(spdf_fortified$location_code, "municip54")
    )
    spdf_fortified[location_code %in% locations, long := (long - mean(long)) * 0.60 + mean(long) - 17]
    spdf_fortified[location_code %in% locations, lat := (lat - mean(lat)) * 0.70 + mean(lat) - 5.5]

    spdf_fortified[location_code %in% locations, long_center := mean(long)]
    spdf_fortified[location_code %in% locations, lat_center := mean(lat)]

    spdf_fortified[location_code %in% locations, long_diff := long - long_center]
    spdf_fortified[location_code %in% locations, lat_diff := lat - lat_center]

    spdf_fortified[location_code %in% locations, long_diff := long_diff * cos(-0.05 * pi) + lat_diff * sin(-0.05 * pi)]
    spdf_fortified[location_code %in% locations, lat_diff := -1 * long_diff * sin(-0.05 * pi) + lat_diff * cos(-0.05 * pi)]

    spdf_fortified[location_code %in% locations, long := long_diff + long_center]
    spdf_fortified[location_code %in% locations, lat := lat_diff + lat_center]

    spdf_fortified[, long_center := NULL]
    spdf_fortified[, lat_center := NULL]
    spdf_fortified[, long_diff := NULL]
    spdf_fortified[, lat_diff := NULL]
  }

  spdf_fortified[, hole := NULL]
  spdf_fortified[, piece := NULL]
  spdf_fortified[, id := NULL]

  return(invisible(spdf_fortified))
}
