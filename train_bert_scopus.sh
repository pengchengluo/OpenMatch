CUDA_VISIBLE_DEVICES=0 \
python train.py \
        -task classification \
        -model bert \
        -train /content/drive/MyDrive/dataset_search/data/openmatch_data/all.csv.jsonl \
        -max_input 1280000 \
        -save ./checkpoints/bert.bin \
        -dev /content/drive/MyDrive/dataset_search/data/openmatch_data/dev_dataset.jsonl \
        -qrels /content/drive/MyDrive/dataset_search/data/openmatch_data/qrels_en.txt \
        -vocab bert-base-uncased \
        -pretrain bert-base-uncased \
        -res ./results/bert.trec \
        -metric ndcg_cut_10 \
        -max_query_len 32 \
        -max_doc_len 256 \
        -epoch 1 \
        -batch_size 16 \
        -lr 2e-5 \
        -eval_every 104
        -logging_step 104
