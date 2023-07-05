# 统计最大值、最小值、平均值、分位值
 .... | sort -n | awk '{
    sum += $1; 
    nums[NR] = $1} 
  END {
    avg = sum/NR; 
    INDEX_50 = int(NR * 0.50);
    INDEX_75 = int(NR * 0.75);
    INDEX_85 = int(NR * 0.85);
    INDEX_90 = int(NR * 0.90);
    INDEX_95 = int(NR * 0.95);
    INDEX_98 = int(NR * 0.98);
    INDEX_99 = int(NR * 0.99);
    INDEX_995 = int(NR * 0.995);
    INDEX_999 = int(NR * 0.999);
    INDEX_9999 = int(NR * 0.9999);
    printf "min = %s\n",nums[1];
    printf "max = %s\n",nums[NR];
    printf "avg = %s\n",avg;
    printf "50th = %s\n",nums[INDEX_50];  
    printf "75th = %s\n",nums[INDEX_75]; 
    printf "85th = %s\n",nums[INDEX_85]; 
    printf "90th = %s\n",nums[INDEX_90]; 
    printf "95th = %s\n",nums[INDEX_95]; 
    printf "98th = %s\n",nums[INDEX_98];   
    printf "99th = %s\n",nums[INDEX_99]; 
    printf "995th = %s\n",nums[INDEX_995]; 
    printf "99.9th = %s\n",nums[INDEX_999]; 
    printf "99.99th = %s\n",nums[INDEX_9999];
  }'
