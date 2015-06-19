
Set.labels <- function(){

names <- names(DF)

Names <- c(
"Subject",
"Activity",
"t-avg.body.acc(X)",
"t-avg.body.acc(Y)",
"t-avg.body.acc(Z)",
"t-std.body.acc(X)",
"t-std.body.acc(Y)",
"t-std.body.acc(Z)",
"t-avg.gravity.acc(X)",
"t-avg.gravity.acc(Y)",
"t-avg.graivity.acc(Z)",
"t-std.graivity.acc(X)",
"t-std.graivity.acc(Y)",
"t-std.graivity.acc(Z)",
"t-avg.body.acc.jerk(X)",
"t-avg.body.acc.jerk(Y)",
"t-avg.body.acc.jerk(Z)",
"t-std.body.acc.jerk(X)",
"t-std.body.acc.jerk(Y)",
"t-std.body.acc.jerk(Z)",
"t-avg.body.gyro(X)",
"t-avg.body.gyro(Y)",
"t-avg.body.gyro(Z)",
"t-std.body.gyro(X)",
"t-std.body.gyro(Y)",
"t-std.body.gyro(Z)",
"t-avg.body.gyro.jerk(X)",
"t-avg.body.gyro.jerk(Y)",
"t-avg.body.gyro.jerk(Z)",
"t-std.body.gyro.jerk(X)",
"t-std.body.gyro.jerk(Y)",
"t-std.body.gyro.jerk(Z)",
"t-avg.acc.mag",
"t-std.acc.mag",
"t-avg.gravity.acc.mag",
"t-std.gravity.acc.mag",
"t-avg.body.acc.jerk.mag",
"t-std.body.acc.jerk.mag",
"t-avg.body.gyro.mag",
"t-std.body.gyro.mag",
"t-avg.body.gyro.jerk.mag",
"t-std.body.gyro.jerk.mag",
"f-avg.body.acc(X)",
"f-avg.body.acc(Y)",
"f-avg.body.acc(Z)",
"f-std.body.acc(X)",
"f-std.body.acc(Y)",
"f-std.body.acc(Z)",
"f-avg.body.acc.jerk(X)",
"f-avg.body.acc.jerk(Y)",
"f-avg.body.acc.jerk(Z)",
"f-std.body.acc.jerk(X)",
"f-std.body.acc.jerk(Y)",
"f-std.body.acc.jerk(Z)",
"f-avg.body.gyro(X)",
"f-avg.body.gyro(Y)",
"f-avg.body.gyro(Z)",
"f-std.body.gyro(X)",
"f-std.body.gyro(Y)",
"f-std.body.gyro(Z)",
"f-avg.acc.mag",
"f-std.acc.mag",
"f-avg.body.acc.jerk.mag",
"f-std.body.acc.jerk.mag",
"f-avg.body.gyro.mag",
"f-std.body.gyro.mag",
"f-avg.body.gyro.jerk.mag",
"f-std.body.gyro.jerk.mag"
)

table <- data.table(names, Names);
setnames(table, c("names","Names"),c("Old Column Labels","New Column Labels"))


return(table)

}