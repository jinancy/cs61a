def count_partitions(total, biggest_num):
	if total == 0:
		return 1
	elif total < 0:
		return 0
	elif biggest_num == 0:
		return 0
	else:
		with_biggest = count_partitions(total - biggest_num, biggest_num)
		without_biggest = count_partitions(total, biggest_num - 1)
		return with_biggest + without_biggest

def partitions_options(total, biggest_num):
	if total == 0:
		return [[]]
	elif total < 0:
		return []
	elif biggest_num == 0:
		return []
	else:
		with_biggest = partitions_options(total - biggest_num, biggest_num)
		without_biggest = partitions_options(total, biggest_num - 1)
		with_biggest = [[elem] + [biggest_num] for elem in with_biggest] # what extra step do we need here?
		return with_biggest + without_biggest