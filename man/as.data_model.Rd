% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dm.R
\name{as.data_model}
\alias{as.data_model}
\title{Coerce to a data model}
\usage{
as.data_model(x)
}
\arguments{
\item{x}{Object (list or data frame) to be coerced to data model object}
}
\value{
If possible it returns a data model object.
  It is a list of data frames with at least the following columns:
  \item{ column }{A name of the column in a table}
  \item{ key }{A boolean value indicating this column is a primary key or NA.}
  \item{ ref }{A character string with a referenced table name.
    Not being NA means the column is a foreign key.}
}
\description{
Functions to coerce an object to a data model if possible.
}
\details{
Function accepts a data frame with columns info.
  Data frame must have 'table' and 'column' elements.
  Optional element 'key' (boolean) marks a column as a primary key.
  Optional element 'ref' (character string) defines referenced table name.
  Optional element 'ref_col' (character string) defines a column in a
    referenced table name primary key (only necessery when referenced
    table has a compound primary key).
}

