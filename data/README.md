## Data descriptions 

For each dataset, we provide interactions, item timestamps, item features, warm-start/cold-start item sets, and user/item mappings. Below is the detailed descriptions for each type of files for your reference.

**Interactions**

- {Training/validation/testing}_dict.npy: The files contain the interactions in the training, validation, and testing set in a dictionary, respectively. The key of the dictionary is the user ID, and the value is a list of the interacted item IDs of the user in chronological order. Note that validation/testing_dict contain both warm and cold items, i.e., "all" setting.
  - For example, 0: [1,4,7,10]
- {validation/testing}_{warm/cold}_dict: The files contain the interactions of the warm/cold items in the validation or testing sets in a dictionary. The key of the dictionary is the user ID, and the value is a list of the interacted warm/cold item IDs in chronological order, i.e., "warm" and "cold" setting. 
  - For example, 0: [2,11]

**item timestamps**

- item_time_dict.npy: item_time_dict.npy: This file stores the timestamp of the first appearance of the item in the dataset, i.e., the earliest timestamp of each item. It is stored in a dictionary, where the key is the original item ID, and the value is the earliest timestamp of the item.

**item features**

- item_pca_map.npy (taking Amazon as an example): a dictionary of item visual features, where key is the item id, and the value is the 64-dimension feature vector.

**Warm/Cold item sets**

- warm_item.npy: This file stores the set of the warm item IDs, i.e., the items that appear in the training set.
- cold_item.npy: This file stores the set of the cold item IDs, i.e., the items that do not appear in the training set.

**Mapping**

- user_map.npy: This file stores the mapping of the users in a dictionary, where the key is the original user ID, and the value is the mapped user ID. All data used in experiments are based on the mapped IDs.
- item_map.npy: This file stores the mapping of the items in a dictionary, where the key is the original item ID, and the value is the mapped item ID. All data used in experiments are based on the mapped IDs.

##数据描述

对于每个数据集，我们提供交互、项目时间戳、项目特征、热启动/冷启动项目集和用户/项目映射。下面是每种类型文件的详细说明，供您参考。

* 交互

——{训练/验证/测试}_dict。npy:这些文件分别包含字典中训练集、验证集和测试集中的交互。字典的键是用户ID，值是按时间顺序排列的用户交互项ID列表。注意，validation/testing_dict同时包含冷热项，即“all”设置。
—例如:0:[1,4,7,10]
—{validation/testing}_{warm/cold}_dict:该文件包含字典中验证或测试集中的warm/cold项的交互。字典的键是用户ID，值是按时间顺序排列的交互暖/冷项ID列表，即“暖”和“冷”设置。
—例如:0:[2,11]

* 项目时间戳

——item_time_dict。npy: item_time_dict。npy:该文件存储数据集中项目第一次出现的时间戳，即每个项目最早的时间戳。它存储在一个字典中，其中键是原始项目ID，值是项目最早的时间戳。* * * *项目特性

——item_pca_map。npy(以Amazon为例):一个物品视觉特征字典，其中key为物品id, value为64维特征向量。

**暖/冷项目设置**

——warm_item。npy:该文件存储暖项id的集合，即出现在训练集中的项。
——cold_item。npy:该文件存储冷项id的集合，即没有出现在训练集中的项。

* 映射

——user_map。npy:该文件将用户的映射存储在字典中，其中键是原始用户ID，值是映射的用户ID。实验中使用的所有数据都基于映射的id。
——item_map。npy:该文件在字典中存储项的映射，其中键是原始项ID，值是映射后的项ID。实验中使用的所有数据都基于映射的id。