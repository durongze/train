#!/usr/bin/env sh
MY=newfile
PWD=$(pwd)/
echo "Create train lmdb.."
rm -rf $MY/img_train_lmdb 
convert_imageset --shuffle --resize_height=256 --resize_width=256 $PWD $MY/train.txt $MY/img_train_lmdb
echo "Create test lmdb.."
rm -rf $MY/img_test_lmdb
convert_imageset --shuffle --resize_width=256 --resize_height=256 $PWD $MY/test.txt $MY/img_test_lmdb
echo "All Done.."
