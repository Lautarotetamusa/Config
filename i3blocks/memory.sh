#/bin/bash

TYPE="${BLOCK_INSTANCE:-mem}"

awk -v type=$TYPE '
/^MemTotal:/ {
	mem_total=$2
}
/^MemFree:/ {
	mem_free=$2
}
/^Buffers:/ {
	mem_free+=$2
}
/^Cached:/ {
	mem_free+=$2
}
/^SwapTotal:/ {
	swap_total=$2
}
/^SwapFree:/ {
	swap_free=$2
}
END{
	free=mem_free/1024/1024
	used=(mem_total-mem_free)/1024/1024
	total=mem_total/1024/1024

	printf("%.1fG", used)
}' /proc/meminfo
