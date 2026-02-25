# Pastikan kolom date dalam format Date
data_filled$date <- as.Date(data_filled$date)

# Membuat variabel baru 'day_type'
data_filled$day_type <- ifelse(weekdays(data_filled$date) %in% c("Saturday", "Sunday"), 
                               "weekend", "weekday")

# Mengubah variabel menjadi factor
data_filled$day_type <- as.factor(data_filled$day_type)
