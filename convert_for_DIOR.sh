data_dir="datasets/DIOR"
ann_type="Horizontal Bounding Boxes"
# echo ${data_dir}/Annotations/${ann_type}/
for split in train val test
do
    echo "Converting ${split} set..."
    python voc2coco.py \
        --ann_dir "${data_dir}/Annotations/${ann_type}/" \
        --ann_ids "${data_dir}/Main/${split}.txt" \
        --labels "${data_dir}/Annotations/labels.txt" \
        --output "${data_dir}/Annotations/COCO_Format/${ann_type}/${split}.json" \
        --ext xml
done