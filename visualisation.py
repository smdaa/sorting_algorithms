from bubble import bubble_sort
from heap import heap_sort
from insertion import insertion_sort
from merge import merge_sort
from quick import quick_sort
import numpy as np
from PIL import Image

random_array = np.random.randint(0, 255, (500, 500, 3), dtype="uint8")
random_image = Image.fromarray(random_array)
random_image.save("random_image.png")

for i in range(random_array.shape[0]):
    n = random_array.shape[0]
    quick_sort(random_array[:, i, 0], 0, n-1)
    quick_sort(random_array[i, :, 1], 0, n-1)
    quick_sort(random_array[i, :, 2], 0, n-1)

sorted_image = Image.fromarray(random_array)
sorted_image.save("sorted_image.png")
