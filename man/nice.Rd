\name{nice}
\alias{get.my.priority}
\alias{set.my.priority}
\title{Get or Set UNIX Priority}
\description{
    Get or Set UNIX Priority (Niceness) of this R process.
}
\usage{
get.my.priority()
set.my.priority(priority = 15)
}
\arguments{
  \item{priority}{The UNIX priority, also called niceness, what the
  UNIX commands \code{nice} and \code{renice} set,
  (an integer number, usually in the
  range -20 to 19, that we want to set the priority to).  Generally,
  ordinary users can only raise the priority, so it is an error to
  try to set the priority lower than that returned by \code{get.my.priority}.}
}
\details{
  Sets the priority of itself, the unix process that is executing this
  R code.  The command was written for use with the \code{snow}
  package (for nicing slaves), using syntax something like
\preformatted{
  invisible(clusterEvalQ(cl, set.my.priority()))
}
  assuming a cluster \code{cl} has already been set up.  It may also
  be useful in other situations.
}
\value{
  \code{get.my.priority} returns the priority.
  \code{set.my.priority} returns no value.  It has the side effect
  of setting the priority.
}
\keyword{misc}
