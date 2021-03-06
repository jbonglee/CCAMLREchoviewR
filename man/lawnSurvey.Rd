% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/EchoviewR.R
\name{lawnSurvey}
\alias{lawnSurvey}
\title{Generate a coordinate list for a regular rectangular survey}
\usage{
lawnSurvey(startLon, startLat, lineLengthkm, lineSpacingkm, startBearingdeg,
  numOfLines)
}
\arguments{
\item{startLon}{start longitude of survey.}

\item{startLat}{start latitude of survey.}

\item{lineLengthkm}{transect line length in km.}

\item{lineSpacingkm}{inter-transect spacing in km.}

\item{startBearingdeg}{Orientation of survey grid in degrees.}

\item{numOfLines}{Number of transects.}
}
\value{
Geographical coordinate list of start and end of line positions
}
\description{
The coordinate list is generated in degrees decimal degree format (dd.ddd), with 
Southern hemisphere denoted by negative numbers. Transect length and inter-transect 
spacing are specified in km and bearings in degress where North 0 deg, East 90 deg, 
South 180 deg and West 270 deg.
}
\examples{
\dontrun{
(coords=lawnSurvey(startLon=-170,startLat=-60,lineLengthkm=2,lineSpacingkm=0.5,
startBearingdeg=30,numOfLines=5))
plot(0,0,xlim=range(coords[,1]),
ylim=range(coords[,2]),type='n',xlab='Longitude, deg',ylab='Latitude, deg')
arrows(x0=coords[1:(nrow(coords)-1),1], y0=coords[1:(nrow(coords)-1),2], 
      x1 = coords[2:nrow(coords),1], y1 = coords[2:nrow(coords),2])
text(coords,row.names(coords),cex=0.6)
points(coords[1,1],coords[1,2],col='blue',pch=17,cex=2)
points(coords[nrow(coords),1],coords[nrow(coords),2],col='blue',pch=15,cex=2)
legend('topright',c('Beginning','End'),col='blue',pch=c(17,15))
}
}
\seealso{
\code{\link{zigzagSurvey}}
}
\author{
Martin Cox \email{martin.cox@aad.gov.au}
}
