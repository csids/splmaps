#' Position of a title for the Oslo insert
#' @format
#' \describe{
#' \item{long}{Location code.}
#' \item{lat}{Location name.}
#' }
#' @examples
#' # 2020 borders
#' library(ggplot2)
#' q <- ggplot(mapping = aes(x = long, y = lat))
#' q <- q + geom_polygon(
#'   data = csmaps::nor_municip_map_b2020_insert_oslo_dt,
#'   mapping = aes(group = group),
#'   color = "black",
#'   fill = "white",
#'   size = 0.2
#' )
#' q <- q + annotate(
#'   "text",
#'   x = csmaps::nor_xxx_position_title_insert_oslo_b2020_insert_oslo_dt$long,
#'   y = csmaps::nor_xxx_position_title_insert_oslo_b2020_insert_oslo_dt$lat,
#'   label = "Oslo"
#' )
#' q <- q + theme_void()
#' q <- q + coord_quickmap()
#' q
#' @rdname nor_xxx_position_title_insert_oslo_bxxxx_insert_oslo_dt
"nor_xxx_position_title_insert_oslo_b2024_insert_oslo_dt"

#' @rdname nor_xxx_position_title_insert_oslo_bxxxx_insert_oslo_dt
"nor_xxx_position_title_insert_oslo_b2020_insert_oslo_dt"

#' @rdname nor_xxx_position_title_insert_oslo_bxxxx_insert_oslo_dt
"nor_xxx_position_title_insert_oslo_b2019_insert_oslo_dt"

#' @rdname nor_xxx_position_title_insert_oslo_bxxxx_insert_oslo_dt
"nor_xxx_position_title_insert_oslo_b2017_insert_oslo_dt"
