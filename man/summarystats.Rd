\name{summarystats}

\alias{summarystats}

\title{summarystats}

\usage{
summarystats(TP, FP, TN, FN)
}

\arguments{
  \item{TP}{The number of true positives generated when a classifier evaluates test data}
  \item{FP}{The number of false positives generated when a classifier evaluates test data}
  \item{TN}{The number of true negatives generated when a classifier evaluates test data}
  \item{FN}{The number of false negatives generated when a classifier evaluates test data}
}

\description{
Uses the number of true and false positives and negatives from an evaluation of a machine learning classifying algorithm to generate and print a table with measures of accuracy and error: Accuracy, Error Rate, False Positive Rate, Fallout, True Positive Rate, Sensitivity, Recall, True Negative Rate, Specificity, Positive Predictive Value, Precision, Negative Predictive Value, Prediction Conditioned Fallout, Prediction Conditioned Miss, Rate of Positive Prediction, Rate of Negative Prediction, Matthews Correlation Coefficient, and Phi Correlation Coefficient
}

\examples{
TruePositives = 98
FalsePositives = 17
TrueNegatives = 83
FalseNegatives = 2
summarystats(TP = TruePositives, FP = FalsePositives, TN = TrueNegatives, FN = FalseNegatives)
}
