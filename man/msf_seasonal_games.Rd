% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/wrapper_utils.R
\name{msf_seasonal_games}
\alias{msf_seasonal_games}
\title{MySportsFeeds Seasonal Games}
\usage{
msf_seasonal_games(league, season, apikey)
}
\arguments{
\item{league}{the league to fetch}

\item{season}{the season to fetch}

\item{apikey}{your MySportsFeeds API key (version 2.0!)}
}
\value{
a list of two items
\itemize{
\item status_code the HTTP status code (200 for success))
\item response if status_code == 200, a tibble of games; otherwise, the raw text.
}
}
\description{
Returns a data frame of games from MySportsFeeds version 2.0 API
}
\details{
`msf_seasonal_games` adds four columns at the right of the tibble:
\itemize{
\item league the source league of the data
\item season the source season of the data, and
\item date the game date (started) in the Eastern USA timezone ("EST5EDT").
\item slug the game slug (date-away_team-home_team)
}
The returned tibble will be sorted in chronological order.
}
\examples{
\dontrun{
apikey <- "your_API key"
library(dfstools)
nba_games <-
  msf_seasonal_games(season = "2017-2018-regular", league = "nba", apikey)
}
}
