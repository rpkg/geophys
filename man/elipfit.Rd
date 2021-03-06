\name{elipfit}
\alias{elipfit}
\title{Least Squares Ellipse
}
\description{Fit best Ellipse to a set of points
  using least squares.
}
\usage{
elipfit(ex, ey, PLOT = FALSE, add = TRUE, ...)
}
\arguments{
  \item{ex}{x-coordinates
}
  \item{ey}{y-coordinates
}
  \item{PLOT}{Logical, TRUE plots lines
}
  \item{add}{logical, add=TRUE adds to existing plot, FALSE starts new plot
}
  \item{\dots}{graphical parameters from par
}
}
\details{
  Program removes mean values from x-y points prior to fitting
}
\value{
  Vector of semi major axes and angle (radians) 
}

\author{
Jonathan M. Lees<jonathan.lees@unc.edu>
}


\seealso{ellipsoidhull, xtractlip
}
\examples{

EL=list()
EL$x=c(-9.478057124959,-8.887247178079,-7.679217676939,-5.843342603491,
-4.827065854640,-4.524213862912,-3.640069016562,-3.181663570301,
-2.830460290732,-2.276944364728,-0.258719497667, 5.987620544313,
5.262029128773, 4.233925281717, 3.463189680754, 3.295838697506,
1.127493106453, 0.611037858455, 0.308185866727,-1.034364425884,
-1.385567705454,-1.939083631457,-3.957308498518)
EL$y=c(-7.379108143633,-8.077163749968,-8.353322965687,-8.375311165710,
-8.133874868636,-8.988274156710,-7.715168397536,-7.629855105316,
-7.978224323725,-7.658390735870,-5.981004273181, 0.550983019511,
0.717119185592, 1.901196979324, 1.691334007646, 2.938457310537,
1.506850181485, 1.471885910595, 2.326285198669, 0.967866147275,
1.316235365684, 0.996401777829,-0.680984684860)


plot(EL, asp=1)

LL = elipfit(EL$x,EL$y, PLOT=TRUE, add=TRUE, col='purple')



}
\keyword{misc}
