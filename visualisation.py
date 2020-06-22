from bubble import bubble_sort
from heap import heap_sort
from insertion import insertion_sort
from merge import merge_sort
from quick import quick_sort
import numpy as np
from PIL import Image

random_array = np.random.randint(0, 255, (100, 100, 3), dtype="uint8")
random_image = Image.fromarray(random_array)
random_image.save("random_image.png")

for i in range(random_array.shape[0]):
    bubble_sort(random_array[:, i, 0])
    bubble_sort(random_array[i, :, 1])
    bubble_sort(random_array[i, :, 2])

sorted_image = Image.fromarray(random_array)
sorted_image.save("sorted_image.png")
