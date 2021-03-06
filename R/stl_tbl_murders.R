#' City of St. Louis Murders, 2008-2016
#'
#' A data set containing murders for the years 2008 through 2016 in the City of St. Louis.
#'
#' @docType data
#'
#' @usage data(stl_tbl_murders)
#'
#' @format A tibble with 1394 rows and 11 variables:
#' \describe{
#'   \item{id}{SLMPD record number}
#'   \item{fullDate}{string date in dmy format for when murder occurred}
#'   \item{year}{year murder occurred}
#'   \item{month}{month murder occurred}
#'   \item{day}{day of month murder occurred}
#'   \item{time}{time murder occurred in 24-hour clock}
#'   \item{descrip}{\code{HOMICIDE}}
#'   \item{district}{SLMPD district where murder occurred}
#'   \item{nhood}{neighborhood where murder occurred, see \href{https://www.stlouis-mo.gov/government/departments/planning/documents/upload/CitywideNeighborhoodMap.pdf}{for values}}
#'   \item{address}{house address where murder occurred}
#'   \item{street}{street where murder occurred}
#' }
#'
#' @source St. Louis Metropolitan Police Department; original data cleaning and data set construction by \href{https://github.com/thbraswell}{Taylor Braswell}
#'
#' @references Asher, J. (2017, January 9). U.S. Cities Experienced Another Big Rise In Murder In 2016. \emph{FiveThiryEight}, retrived from \href{https://fivethirtyeight.com/features/u-s-cities-experienced-another-big-rise-in-murder-in-2016/}{website}.
#'
#' @examples
#' str(stl_tbl_murders)
#' head(stl_tbl_murders)
#'
#' if (require("dplyr") & require("ggplot2")) {
#'
#'   # what is the neighborhood with the most murders?
#'     stl_tbl_murders %>%
#'       group_by(nhood) %>%
#'       summarize(n_obs = n()) %>%
#'       arrange(desc(n_obs))
#'
#'     # top neighborhoods: 50 is Wells Goodfellow and 59 is Jeff Vanderlou
#'
#'   # how have murders changed over time?
#'     stl_tbl_murders %>%
#'       group_by(year) %>%
#'       summarize(n_obs = n()) %>%
#'       arrange(year) %>%
#'       ggplot(aes(x = year, y = n_obs)) +
#'         geom_bar(stat="identity") +
#'         scale_x_continuous(breaks = c(2008:2016),
#'           labels = factor(2008:2016))
#'
#' }
#'
"stl_tbl_murders"
