import re

x = re.search("add item (\d) to cart as \w+", "add item 3 to cart as ta").group(1)

print(x)
