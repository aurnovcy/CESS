#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

summarystats <- function(TP, FP, TN, FN) {
  N = TN + FP
  P = TP + FN
  result <- c(((TP + TN) / (P + N)), ((FP + FN) / (P + N)), (FP / N), (FP / N), (TP / P), (TP / P), (TP / P), (FN / P), (FN / P), (TN / N), (TN / N), (TN / (TN + FN)), (FP / (TP + FP)), (FN / (TN + FN)), ((TP + FP) / (TP + FP + TN + FN)), ((TN + FN) / (TP + FP + TN + FN)), (((TP*TN)-(FP*FN)) / (sqrt((TP+FN)*(TN +FP)*(TP+FP)*(TN + FN)))), (((TP*TN)-(FP*FN)) / (sqrt((TP+FN)*(TN +FP)*(TP+FP)*(TN + FN)))), ((TP*TN) / (FN*FP)))
  test <- c("Accuracy", "Error Rate", "False Positive Rate", "Fallout", "True Positive Rate", "Sensitivity", "Recall", "True Negative Rate", "Specificity", "Positive Predictive Value", "Precision", "Negative Predictive Value", "Prediction Conditioned Fallout", "Prediction Conditioned Miss", "Rate of Positive Prediction", "Rate of Negative Prediction", "Matthews Correlation Coefficient", "Phi Correlation Coefficient", "Odds Ratio")
  summarystatsdf = data.frame(test, result)
  print(summarystatsdf)
}


