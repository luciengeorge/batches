import matplotlib.pyplot as plt

# A = (1, 3)
# B = (4, 8)
years_x = [1975, 1980, 1985, 1990, 1995, 2000, 2005, 2010, 2015]
# x_ticks = [index for index, value in enumerate(years_x)]
total_y = [1243, 1543, 1619, 1831, 1960, 2310, 2415, 2270, 1918]
coal_y = [823, 1136, 1367, 1547, 1660, 1927, 1983, 1827, 1352]
gas_y = [171, 200, 166, 175, 228, 280, 319, 399, 529]

# adding a title
plt.title('USA - CO2 emissions from electricity production')

# adding x, y labels on graph
plt.xlabel("Year")
plt.ylabel("CO2 - M of tons")
plt.grid(axis="y",color='#CCCCCC', linestyle='--', linewidth=0.6)

# xticks and yticks configurations
# plt.xticks([1975, 1995, 2015], ['start', 1995, 'end'])
# plt.yticks([1200, 2000])
# plt.ylim(1200, 2000)
plt.plot(years_x, total_y, color="#999999", linestyle=':', marker='s', label="Total")
plt.plot(years_x, coal_y, linewidth=3, label="Coal")
plt.plot(years_x, gas_y, label="Gas")
plt.legend(loc="best")
# plt.savefig('carbon.png')
plt.show()
