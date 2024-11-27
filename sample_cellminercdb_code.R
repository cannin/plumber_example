# Small Code 
# Return matrix dimensions (for eval_to_text)
library(rcellminer); nci60_exp <- rcellminer::getAllFeatureData(rcellminerData::molData)[["exp"]]; dim(nci60_exp)

# Longer Code 
library(rcellminer)
library(rcellminerData)

nci60_exp <- rcellminer::getAllFeatureData(rcellminerData::molData)[["exp"]]
mdm2_idx <- which(rownames(nci60_exp) == "MDM2")
tp53_idx <- which(rownames(nci60_exp) == "TP53")
data_subset <- nci60_exp[c(mdm2_idx, tp53_idx), ]

# Return correlation (for eval_to_text)
correlation <- cor(data_subset[1, ], data_subset[2, ])
correlation

# Return plot (for eval_to_plot)
plot(data_subset[1, ], data_subset[2, ])
