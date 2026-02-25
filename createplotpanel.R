library(ggplot2)
library(dplyr)

# Menghitung rata-rata langkah per interval dan day_type
avg_steps_day <- data_filled %>%
    group_by(interval, day_type) %>%
    summarise(average_steps = mean(steps))

# Membuat panel plot (time series plot)
ggplot(avg_steps_day, aes(x = interval, y = average_steps, color = day_type)) +
    geom_line() +
    facet_wrap(~day_type, ncol = 1) +
    labs(title = "Perbandingan Rata-rata Langkah: Hari Kerja vs Akhir Pekan",
         x = "Interval 5 Menit",
         y = "Rata-rata Jumlah Langkah") +
    theme_minimal()
