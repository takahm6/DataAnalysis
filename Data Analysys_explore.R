> table(gss$degree, gss$finalter, useNA="ifany")

                Better Worse Stayed Same  <NA>
  Lt High School   2693  2986        5448   695
High School       10213  6237       10386  2451
Junior College     1230   584         911   345
Bachelor           3636  1312        2271   783
Graduate           1704   608        1151   407
<NA>                221   240         487    62
> summary(table(gss$degree, gss$finalter, useNA="ifany"))
Number of cases in table: 57061 
Number of factors: 2 
Test for independence of all factors:
  Chisq = 1915.1, df = 15, p-value = 0


prop.table(table(gss$degree, gss$finalter, useNA="ifany"))

                    Better       Worse Stayed Same        <NA>
Lt High School 0.047195107 0.052329963 0.095476770 0.012179948
High School    0.178983894 0.109304078 0.182015738 0.042954032
Junior College 0.021555879 0.010234661 0.015965370 0.006046161
Bachelor       0.063721281 0.022992937 0.039799513 0.013722157
Graduate       0.029862778 0.010655264 0.020171396 0.007132718
<NA>           0.003873048 0.004206025 0.008534726 0.001086556