load("prrace08.rda")
j_obama <- 0
j_mccain <- 0

for (i in 1:51) {
  if (prrace08$p_obama[i]>=prrace08$p_mc_cain[i]) {
    j_obama<- j_obama + prrace08$el_votes[i]
  } else {
    j_mc_cain<- j_mccain + prrace08$el_votes[i]
  }
}
j_obama<-j_obama+1
j_mc_cain<-j_mc_cain-1

cat('Obama got', j_obama, 'votes', "\n") 
cat('McCain got', j_mccain, 'votes')


